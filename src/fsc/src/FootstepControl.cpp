#include<iostream>
#include<algorithm>
#include<cstdio>
#include<cmath>
#include<cassert>

#include "ros/ros.h"
#include "fsc/MyState.h"
#include "fsc/CpgParam.h"
#include "fsc/SetV.h"

using namespace std;

#define DB double

//alpha, delta, omega, sigma
const DB al=0.03,dt=0.052,og=0,sg=0;
const DB C=sqrt(9.8/0.32); // pendulum constant, 运行在0.3的高度上

inline int sgn(DB x){return (x>0)?1:((x<0)?(-1):0);}
inline DB csch(DB x){return 1.0/sinh(x);}//不知道这么算的双曲余割精度好不好
inline DB calc_t(DB x,DB x0, DB dx0)
{
    DB E=dx0*dx0-C*C*x0*x0;
    if(E>0)
    {
        DB c1=x0+dx0/C,c2=x0-dx0/C,v=x/c1,v1=v+sqrt(v*v-c2/c1);return log(v1)/C;
        //只有唯一解, x的移动轨迹是单增的
    }
    else if(E<0)
    {
        DB mx=sqrt(-E)/C;if((sgn(x)!=sgn(x0))||(fabs(x)<mx))return 1e7;//无解返回无穷
        DB c1=x0+dx0/C,c2=x0-dx0/C,v=x/c1,v1=v+sqrt(v*v-c2/c1);return log(v1)/C;//定有两解, 有解返回大的根(可能是负的)
    }
    else
    {
        if(sgn(x)!=sgn(x0))return 1e7;//永远到不了, 无解也算在里面
        if((fabs(x)<1e-7)||(fabs(x0)<1e-7))return 1e7;//我觉得这种情况不管, 反正环境都有扰动
        return (fabs(C*x0+dx0)<1e-6)?(log((x0-dx0/C)/(2*x))/C):(log(2*x/(x0+dx0/C)));//展开到一阶
    }
}
inline DB L2_4(DB x,DB y,DB z,DB w){return sqrt(x*x+y*y+z*z+w*w);}
inline DB sqr(DB x){return x*x;}
inline pair<DB,DB> pred(DB x, DB dx, DB t){DB si=sinh(C*t),co=cosh(C*t);return make_pair(x*co+dx*si/C,dx*co+x*si*C);}

DB vx=0,vy=0,vr=0.0,tvx=0.0,tvy=0.0,tvr=0.0,cx=0.0,cy=0.0,dcx=0.0,dcy=0.0;
int las_sp=1, now_sp=1, ls_T;
DB T=0.0, T_target=1.0, rho=0.01;
ros::Publisher pub;

bool setv(fsc::SetV::Request &req, fsc::SetV::Response &res){tvx = req.vx;tvy = req.vy;tvr = req.vr;return true;}

const DB filter_k=0.5, f_ep=0.07, f_l=0.054;
//f_ep 步噪声抑制

void Filter(DB cx_,DB dcx_,DB cy_,DB dcy_)
{
    cx=cx_;dcx=dcx_;cy=cy_;dcy=dcy_;
    DB b=filter_k*L2_4(cx-cx_,dcx-dcx_,cy-cy_,dcy-dcy_)*(1-exp(-sqr(max(0.0,(ros::Time::now().toNSec()-ls_T)/1e9-f_ep)/f_ep)*0.5));
    b=max(0.0,min(1.0,b));cx+=b*(cx_-cx);dcx+=b*(dcx_-dcx);cy+=b*(cy_-cy);dcy+=b*(dcy_-dcy);
}

const DB oymin=-1, oymax=1;//假如我们预设ZMP在脚中心的话, 这里指代偏移量在脚的宽度以内
const DB oxmin=-1, oxmax=1;
const DB cxmx=1;//重心过了这条线机器人就会往前倒

//需要保证说我这步拿到的com是以预设的ZMP坐标下的, 但是我觉得预设ZMP在tx模块下忒不准嘞
//但是没有办法, 因为我们又不显示拿到当前的ZMP, 而且ZMP偏移需要在一个固定范围, 这就要求我们的ZMP是固定的你才能算
void FSC(const fsc::MyState::ConstPtr &msg)
{
    fsc::CpgParam cpg;
    
    Filter(msg->cx, msg->dcx, msg->cy, msg->dcy);

    pair<DB,DB>p1=pred(cx,dcx,f_l),p2=pred(cy,dcy,f_l);
    DB x=p1.first,y=p2.first,dx=p1.second,dy=p2.second;//滤波后的状态

    int lam=(int)msg->is_right_support-(int)msg->is_left_support;
    if(lam==0)lam=-las_sp;//俩脚都站稳了或者都在空中, 我们也认为换脚了
    now_sp=lam;//计算现在的支撑腿, 用于判断是否换腿
    
    DB zy=lam*dt+(sgn(vy)==lam)*fabs(vy)*(og-dt),zx=vx*sg,tau=calc_t(zy,lam*al,0);

    T_target=tau*2;//指导下一次换腿之后的轨迹, 虽然感觉在这里算有点慢
    
    
    DB sx=zx,dsx=C*zx*csch(C*tau),sy=zy,dsy=lam*C*sqrt(zy*zy-al*al);
    
    DB co=cosh(C*T),si=sinh(C*T);
    DB oy=(y*co+dy*si/C-sy)/(co-1);//当T趋近于0的时候, 这个东西的数值稳定性非常低, 我们的换脚我觉得还是用传感来实现的
    oy=max(oymin,min(oymax,oy));
    int di=sgn(dx);
    DB T1=calc_t(sy-oy, y-oy, dy),T2=di?calc_t(di*cxmx, x, dx):((fabs(x)>=cxmx)?(-1e7):((fabs(x)>1e-6)?calc_t(sgn(x)*cxmx,x,0):1e6));//这个无穷要小一点才行
    //之后需要检查一下我们是否支持向后退的x, 把和x的所有计算找出来看
    
    DB ansT=0.001,tmp,t1;
    if(T2<T1)ansT=max(0.001, T2);
    else if((T1>=0.001)&&(T1<=2))ansT=T1;
    else if((T1>=2)&&((tmp=fabs(dy+C*(y-oy)))>1e-5)&&(fabs(fabs(dy)+tmp-C*fabs(y-oy))<1e-7))ansT=max(0.01,log((C*(y-oy)-dy)/(C*(y-oy)+dy))/(2*C));
    else if(dy*dy-C*C*y*y>=0)ansT=2;
    else ansT=0.01;

    co=cosh(C*ansT),si=sinh(C*ansT);
    DB ox=(x*co+dx*si/C-sx)/(co-1);
    p1=pred(x-ox,dx,ansT);p2=pred(y-oy,dy,ansT);
    DB SX=p1.first+ox,SY=lam*sqrt(p2.second*p2.second/(C*C)+al*al);
    cpg.ax=SX*0.5*sg;cpg.ay=(SY*0.5-dt)/(og-dt);cpg.ar=vr;cpg.T=ansT;
    pub.publish(cpg);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "fstpc");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("/cstate", 10, FSC);
    pub = n.advertise<fsc::CpgParam>("/cpgin", 10);
    ros::ServiceServer service = n.advertiseService("setv", setv);
    ros::Rate loop_rate(100);
    ls_T=ros::Time::now().toNSec();
    while (ros::ok())
    {
        ros::spinOnce();
        T=max(0.001,T-rho);//我觉得不能减到0吧, 但是我现在也不知道怎么换的腿

        if(now_sp!=las_sp)
        {
            las_sp=now_sp;
            T=T_target;//如果换脚了, 那我们确实已经算过T_target了
            vx=tvx;vy=tvy;vr=tvr;//中间多少次输入都只影响换脚之后的轨迹
            ls_T=ros::Time::now().toNSec();
        }
        //我打算是这样的, 只有换脚的时候状态最清晰, 过程中会有两种量的计算
        //一种是只有在下一次换脚的时候才会指导步行的量(这种量来源于期间的输入)
        //一种是这一次过程中在量的指导下维持步行的量(在换脚之后, 期间的输入不影响这轮换脚之间的轨迹)
        //由于控制的时间是离散的, 那么这种离散的效应再一次叠加在换脚这种程度的离散上导致了状态的更新特别模糊
        loop_rate.sleep();
    }
    return 0;
}
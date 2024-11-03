#!/usr/bin/python3
# -*- coding: UTF-8 -*-
import numpy as np
import rospy
from bitbots_msgs.msg import JointCommand
from ik import thmos_legik
import math
import time
from fsc.msg import CpgParam

import matplotlib.pyplot as plt
import queue
plt.ion()

def euler2rot(yaw, pitch, roll):
    R_yaw = np.array([[np.cos(yaw), -np.sin(yaw), 0],
                      [np.sin(yaw), np.cos(yaw), 0],
                      [0, 0, 1]])
    R_pitch = np.array([[np.cos(pitch), 0, np.sin(pitch)],
                        [0, 1, 0],
                        [-np.sin(pitch), 0, np.cos(pitch)]])
    R_roll = np.array([[1, 0, 0],
                       [0, np.cos(roll), -np.sin(roll)],
                       [0, np.sin(roll), np.cos(roll)]])
    R = np.dot(R_yaw, np.dot(R_pitch, R_roll))
    return R

A=(0.0,0.2,0.0)
T=0 
rho=0.1

class _walk_params():
    # for eta calculation (additional leg extend)
    K1=0.01
    K2=0.05
    K3=0.01
    K4=0.05
    leg_len = 0.2

    # for ypr calculation of each leg
    K5=1
    K6=0.1
    K7=0.1
    K8=1
    K9=1
    K10=0.01

    # for leg swing linear/sinusoid switch
    Ku0=0.14
    Ku1=3

class plotter():
    def __init__(self, time_range=2.0, time_refresh = 0.2):
        self.t0 = 0.0
        self.refresh_time = 0.0
        self.time_refresh = time_refresh
        self.time_range = time_range
        self.data_buf = []
        self.time_buf = []
    
    def plot(self, data):

        if self.t0 == 0.0:
            self.t0 = time.time()
            self.refresh_time = self.t0
        
        if time.time() - self.refresh_time < self.time_refresh:
            return

        self.data_buf.append(data)
        self.time_buf.append(time.time() - self.t0)
        self.refresh_time = time.time()
        
        plot_len = min(len(self.data_buf), int(self.time_range / rho))

        t = [i * rho for i in range(plot_len)]
        x = self.data_buf[-plot_len:]
        # print("t, x:", t, x)

        plt.clf()
        plt.plot(t, x)
        plt.pause(0.001)




def regu(mu):
    mu-=int(mu/(2.0*np.pi))*2.0*np.pi
    while( mu < -np.pi):
        mu+=2*np.pi
    while( mu > np.pi):
        mu-=2*np.pi
    return mu

def eta(mu, ax, ay, az):
    mu=regu(mu)
    mx=max(ax,ay,az)
    return np.sin(mu)*(_walk_params().K1 + _walk_params().K3*mx) if(mu<=0) else np.sin(mu)*(_walk_params().K2 + _walk_params().K4*mx)

def zta(mu):
    mu=regu(mu)
    if(mu < _walk_params().Ku0):
        return 2.0*(mu+2*np.pi - _walk_params().Ku1)/(2*np.pi - _walk_params().Ku1 + _walk_params().Ku0) - 1
    if(mu > _walk_params().Ku1):
        return 2.0*(mu - _walk_params().Ku1)/(2*np.pi - _walk_params().Ku1 + _walk_params().Ku0)-1
    return np.cos(np.pi*(mu - _walk_params().Ku0)/(_walk_params().Ku1 - _walk_params().Ku0))

class CPG:
    def __init__(self):
        rospy.init_node("cpg")
        self.sub = rospy.Subscriber('/cpgin', CpgParam, self.relay)
        self.pub = rospy.Publisher('/motor', JointCommand, queue_size=100)
        self.rate = rospy.Rate(int(100))
        self.leg = thmos_legik([1,-1,-1,-1,-1,-1],[1,1,-1,1,1,-1],[0.156,0.12,0.045])
        self.mu=-np.pi+0.0001
        rospy.spin()
    
    def relay(self, data):
        nu=-self.mu if (self.mu<=0) else np.pi-self.mu
        nu=max(nu,0.01)
        A=(data.ax,data.ay,data.ar)
        T=data.T
        self.mu+=rho*nu/T
        p_l=JointCommand()
        p_l.joint_names=["L_leg_1", "L_leg_2", "L_leg_3", "L_leg_4", "L_leg_5", "L_leg_6"]
        p_r=JointCommand()
        p_r.joint_names=["R_leg_1", "R_leg_2", "R_leg_3", "R_leg_4", "R_leg_5", "R_leg_6"]
        mu_l=self.mu
        mu_r=self.mu+np.pi if (self.mu<=0) else self.mu-np.pi
        e_l, z_l =eta(mu_l,A[0],A[1],A[2]), zta(mu_l)
        e_r, z_r =eta(mu_r,A[0],A[1],A[2]), zta(mu_r)

        roll_l = -z_l*A[0]*_walk_params().K5+max(_walk_params().K6*abs(A[0]), _walk_params().K7*abs(A[2]))
        pitch_l = z_l*A[1]*_walk_params().K8
        yaw_l = z_l*A[2]*_walk_params().K9+abs(A[2])*_walk_params().K10
        roll_r = -z_r*A[0]*_walk_params().K5-max(_walk_params().K6*abs(A[0]), _walk_params().K7*abs(A[2]))
        pitch_r = z_r*A[1]*_walk_params().K8
        yaw_r = z_r*A[2]*_walk_params().K9-abs(A[2])*_walk_params().K10

        R_l = euler2rot(yaw_l, pitch_l, roll_l)
        pos_l = np.dot(R_l, np.array([0,0,e_l + _walk_params().leg_len]))

        R_r = euler2rot(yaw_r, pitch_r, roll_r)
        pos_r = np.dot(R_r, np.array([0,0,e_r + _walk_params().leg_len]))

        p_l.positions=self.leg.LegIKMove("left",[pos_l[0],pos_l[1],pos_l[2],0,0,0])
        p_r.positions=self.leg.LegIKMove("right",[pos_r[0],pos_r[1],pos_r[2],0,0,0])

        # plot.plot(e_l + _walk_params().leg_len)

        self.pub.publish(p_l)
        self.pub.publish(p_r)
# plot = plotter()
cpg=CPG()
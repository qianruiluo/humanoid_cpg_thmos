#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

#!/usr/bin/env python
import rospy
import numpy as np
import time
from sensor_msgs.msg import JointState
from fsc.msg import MyState

mass = [0, 0.50275, 0.51487, 0.45149, 1.79606, 0.50275, 0.51487, 0.45149, 0]
    
def get_joint_angles():
    angles = []
    for service in joint_services:
        rospy.wait_for_service(service)
        try:
            get_position_service = rospy.ServiceProxy(service, get_float)
            response = get_position_service(True)
            angles.append(response.value)
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
            angles.append(float('nan'))
    return angles

# 发布关节角度
def joint_angles_publisher():
    rospy.init_node('joint_angles_publisher', anonymous=True)
    pub = rospy.Publisher('/joint_angles', Float32MultiArray, queue_size=10)
    rate = rospy.Rate(10)  # 10Hz

    while not rospy.is_shutdown():
        angles = get_joint_angles()
        msg = Float32MultiArray(data=angles)
        # print(msg)
        pub.publish(msg)
        rate.sleep()

# 计算变换矩阵
def calculate_transformation_matrix(d, a, alpha, theta):
    return np.array([
        [np.cos(theta), -np.sin(theta)*np.cos(alpha),  np.sin(theta)*np.sin(alpha), a*np.cos(theta)],
        [np.sin(theta),  np.cos(theta)*np.cos(alpha), -np.cos(theta)*np.sin(alpha), a*np.sin(theta)],
        [0,              np.sin(alpha),               np.cos(alpha),               d],
        [0,              0,                           0,                           1]
    ])

# 利用正运动学计算每一个关节的位置
def forward_kinematics(dh_params):
    transformation_matrices = [np.identity(4)]  # 初始为单位矩阵
    for param in dh_params:
        matrix = calculate_transformation_matrix(param['d'], param['a'], param['alpha'], param['theta'])
        transformation_matrices.append(np.dot(transformation_matrices[-1], matrix))
    return transformation_matrices # 返回所有关节位置

def get_joint_positions(angles):
    # 很容易出错
    dh_params = [
        {'d': 0.054, 'a': 0, 'alpha': np.radians(0), 'theta': np.radians(0)}, # 0
        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(90)},# 1
        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(-90) - angles[19]}, # 2
        {'d': 0, 'a': -0.1173, 'alpha': np.radians(0), 'theta': 0 - angles[18]}, # 3
        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(-90) - angles[17]},  # 4
        {'d': 0.1559, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(180) - angles[16]}, # 5
        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(-90) - angles[15]}, # 6

        {'d': 0, 'a': 0.122, 'alpha': np.radians(0), 'theta': np.radians(-154.5) - angles[14]}, # 7, 6-&gt;7, 
        {'d': 0, 'a': 0.122, 'alpha': np.radians(0), 'theta': np.radians(129)}, # 8, 7-&gt;8， 
        {'d': 0, 'a': 0, 'alpha': np.radians(-90), 'theta': np.radians(-154.5) + angles[8]}, # 9, 8-&gt;9， 

        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(90) + angles[9]}, # 10
        {'d': -0.1559, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(180) + angles[10]}, # 11
        {'d': 0, 'a': -0.1173, 'alpha': np.radians(0), 'theta': np.radians(90) + angles[11]}, # 12
        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(180) + angles[12]}, # 13
        {'d': 0, 'a': 0, 'alpha': np.radians(90), 'theta': np.radians(-90) + angles[13]}, # 14
        {'d': 0, 'a': 0, 'alpha': np.radians(0), 'theta': np.radians(90)}, # 15
        {'d': -0.054, 'a': 0, 'alpha': np.radians(0), 'theta': np.radians(0)}, # 16
    ]
    positions = forward_kinematics(dh_params)
    positions = np.array(positions)
    positions = positions[:, 0:3, 3]
    seen = set()
    unique_positions = []
    for item in positions:
        tuple_item = tuple(item)
        if tuple_item not in seen:
            seen.add(tuple_item)
            unique_positions.append(item)
    return unique_positions # 返回所有关节位置

def compute_com(angles):
    positions= get_joint_positions(angles)
    com = np.zeros(3)
    for i in range(len(mass)):
        com += mass[i] * positions[i]
    com /= sum(mass)
    return com

class Estimator:
    def __init__(self):
        rospy.init_node('com_publisher', anonymous=True)

        self.sub = rospy.Subscriber('/joint_states', JointState, self.com_publisher)
        self.pub = rospy.Publisher('/cstate', MyState, queue_size=100)

        self.left_foot_lower_start_time = None
        self.right_foot_lower_start_time = None
        self.lasTime = None
        self.lasCom = None
        self.velo = np.array([0, 0])

        rospy.spin()

    def com_publisher(self, data):
        angles = data.position
        positions = get_joint_positions(angles)

        # print([ s[0] for s in positions ])

        right_foot_z = positions[0][2]
        left_foot_z = positions[-1][2]
        lambda_value = 1
        com = compute_com(angles)
        if left_foot_z - right_foot_z < -0.005:
            if self.left_foot_lower_start_time is None:
                self.left_foot_lower_start_time = time.time()
            elif time.time() - self.left_foot_lower_start_time > 0.5:
                # 切换左脚作为坐标系原点
                positions = positions - positions[-1]
                lambda_value = -1
                self.right_foot_lower_start_time = None  # 重置右脚计时器
            else:
                lambda_value = 1
        elif right_foot_z - left_foot_z < -0.005:
            if self.right_foot_lower_start_time is None:
                self.right_foot_lower_start_time = time.time()
            elif time.time() - self.right_foot_lower_start_time > 0.5:
                # 切换右脚作为坐标系原点
                positions = positions - positions[0]
                lambda_value = 1
                self.left_foot_lower_start_time = None  # 重置左脚计时器
            else:
                lambda_value = -1
        else:
            self.left_foot_lower_start_time = None
            self.right_foot_lower_start_time = None
            lambda_value = 1
        
        # print(positions[-1],com)
        if lambda_value == 1 :
            com -= positions[-1]

        
        T = rospy.Time.now().to_sec()
        if self.lasTime is not None:
            self.velo = (com - self.lasCom) / (T - self.lasTime)
        self.lasTime = T
        self.lasCom = com
        
        p = MyState()
        p.cx, p.cy = com[0], com[1]
        p.dcx, p.dcy = self.velo[0], self.velo[1]
        p.is_left_support = (lambda_value == 1)
        p.is_right_support = (lambda_value == -1)
        self.pub.publish(p)

Estimator()
#!/usr/bin/python3
# -*- coding: UTF-8 -*-

# Copyright (c). All Rights Reserved.
# -----------------------------------------------------
# File Name:        thmos_kinematics.py
# Creator:          JinYin Zhou
# Version:          0.1
# Created:          2023/2/20
# Description:      leg ik packet
# Function List:    THMOSLegIK:  LegIKMove
# History:
#   <author>      <version>       <time>          <description>
#   Jinyin Zhou     0.1           2023/2/20       create
#   Jinyin Zhou     0.2           2023/8/17       add cpp
#   Jinyin Zhou     0.3           2023/8/19       test good
# -----------------------------------------------------
import ctypes
import rospkg
rospack = rospkg.RosPack()
pkg_path = rospack.get_path('ik')
lib_path = pkg_path+'/lib/libthmos_leg_ik.so'
lib = ctypes.CDLL(lib_path)

import rospy
from bitbots_msgs.msg import JointCommand

class thmos_legik:
    """inverse kinematics for two leg"""
    def __init__(self, way_left, way_right,leg_rod_length):
        """
        initialize class
        """
        self.leg_ang = [0] * 6
        self.end_pos = [0] * 6  
        # get C list
        self.c_leg_ang = (ctypes.c_double * 6)(*self.leg_ang)
        self.c_end_pos = (ctypes.c_double * 6)(*self.end_pos)
        self.c_leg_len = (ctypes.c_double * 3)(*leg_rod_length)
        self.c_motor_way_l = (ctypes.c_double * 6)(*way_left)
        self.c_motor_way_r = (ctypes.c_double * 6)(*way_right)
        
        # get C pointer
        self.c_leg_ang_ptr = ctypes.pointer(self.c_leg_ang)


    def LegIKMove(self, LeftorRight, end_pos):
        """
        move left and right leg
        """
        # read pos
        for index in range(6):
            self.c_end_pos[index] = end_pos[index]
        if (LeftorRight == 'Left' or LeftorRight == 'left'):
            lib.leg_ik(self.c_leg_len, self.c_end_pos, self.c_motor_way_l, self.c_leg_ang)
            theta = ctypes.cast(self.c_leg_ang_ptr, ctypes.POINTER(ctypes.c_double * 6)).contents
            # write angle
            return [theta[0] ,theta[1] ,theta[2] ,theta[3] ,theta[4] ,theta[5] ]
        else:
            lib.leg_ik(self.c_leg_len, self.c_end_pos, self.c_motor_way_r, self.c_leg_ang)
            theta = ctypes.cast(self.c_leg_ang_ptr, ctypes.POINTER(ctypes.c_double * 6)).contents
            # write angle
            return [theta[0] ,theta[1] ,theta[2] ,theta[3] ,theta[4] ,theta[5] ]
    
if __name__ == '__main__':
    leg_1 = thmos_legik([1,-1,-1,-1,-1,-1],[1,1,-1,1,1,-1],[0.156,0.12,0.045])
    rospy.init_node("ik")
    p=JointCommand()
    p.joint_names=["L_leg_1", "L_leg_2", "L_leg_3", "L_leg_4", "L_leg_5", "L_leg_6"]
    p.positions=leg_1.LegIKMove("left",[0, 0, 1, 0, 0.0,0.2])
    # p.joint_names=["R_leg_1", "R_leg_2", "R_leg_3", "R_leg_4", "R_leg_5", "R_leg_6"]
    # p.positions=leg_1.LegIKMove("right",[0, 0,0, 0, 0,1])
    pub = rospy.Publisher('/motor', JointCommand, queue_size=10)
    while not rospy.is_shutdown():
        input()
        pub.publish(p)
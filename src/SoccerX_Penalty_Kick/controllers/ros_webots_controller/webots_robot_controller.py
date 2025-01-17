import os
import math
import time

from controller import Supervisor

import rospy
from geometry_msgs.msg import PointStamped
from sensor_msgs.msg import JointState, Imu, Image, CameraInfo
from rosgraph_msgs.msg import Clock
from geometry_msgs.msg import Pose, Point
from std_msgs.msg import String
# import tf_conversions
import numpy as np

from bitbots_msgs.msg import JointCommand, FootPressure

CAMERA_DIVIDER = 8  # every nth timestep an image is published, this is n


class RobotController:
    def __init__(self, ros_active=False, robot='wolfgang', do_ros_init=True, external_controller=False, base_ns='',
                 recognize=False, camera_active=True):
        """
        The RobotController, a Webots controller that controls a single robot.
        The environment variable WEBOTS_ROBOT_NAME should be set to "amy", "rory", "jack" or "donna" if used with
        4_bots.wbt or to "amy" if used with 1_bot.wbt.

        :param ros_active: Whether ROS messages should be published
        :param robot: The name of the robot to use, currently one of wolfgang, darwin, nao, op3
        :param do_ros_init: Whether to call rospy.init_node (only used when ros_active is True)
        :param external_controller: Whether an external controller is used, necessary for RobotSupervisorController
        :param base_ns: The namespace of this node, can normally be left empty
        """
        self.ros_active = ros_active
        self.recognize = recognize
        self.camera_active = camera_active
        if not external_controller:
            self.robot_node = Supervisor()
        self.walkready = [0] * 20
        self.time = 0
        self.clock_msg = Clock()
        self.motors = []
        self.sensors = []
        self.timestep = int(self.robot_node.getBasicTimeStep())

        self.switch_coordinate_system = True
        self.is_wolfgang = False
        self.pressure_sensors = None
        if robot == 'wolfgang':
            self.is_wolfgang = True
            '''
            self.motor_names = ["RShoulderPitch", "LShoulderPitch", "RShoulderRoll", "LShoulderRoll", "RElbow",
                                "LElbow", "RHipYaw", "LHipYaw", "RHipRoll", "LHipRoll", "RHipPitch", "LHipPitch",
                                "RKnee", "LKnee", "RAnklePitch", "LAnklePitch", "RAnkleRoll", "LAnkleRoll", "HeadPan",
                                "HeadTilt"]
            '''
            self.motor_names = ["neck", "head", "L_arm_1", "L_arm_2", "L_arm_3", "R_arm_1", "R_arm_2", "R_arm_3",
                                "L_leg_1", "L_leg_2", "L_leg_3", "L_leg_4", "L_leg_5", "L_leg_6",  
                                "R_leg_1", "R_leg_2", "R_leg_3", "R_leg_4", "R_leg_5", "R_leg_6"]
 
            self.external_motor_names = self.motor_names
            self.sensor_suffix = "_sensor"
            accel_name = "Accelerometer"
            #    sensor = self.robot_node.getDevice(name)
            #    sensor.enable(self.timestep)
            #    self.pressure_sensors.append(sensor)
        
        if robot == 'thmos':
            self.is_wolfgang = False
            self.motor_names = ["neck", "head", "L_arm_1", "L_arm_2", "L_arm_3", "R_arm_1", "R_arm_2", "R_arm_3",
                                "L_leg_1", "L_leg_2", "L_leg_3", "L_leg_4", "L_leg_5", "L_leg_6",  
                                "R_leg_1", "R_leg_2", "R_leg_3", "R_leg_4", "R_leg_5", "R_leg_6"]
 
            self.external_motor_names = self.motor_names
            self.sensor_suffix = "_sensor"
            accel_name = "Accelerometer"
            gyro_name = "Gyro"
            camera_name = "Camera"

        # self.robot_node = self.supervisor.getFromDef(self.robot_node_name)
        for motor_name in self.motor_names:
            self.motors.append(self.robot_node.getDevice(motor_name))
            self.motors[-1].enableTorqueFeedback(self.timestep)
            self.sensors.append(self.robot_node.getDevice(motor_name + self.sensor_suffix))
            self.sensors[-1].enable(self.timestep)

        self.accel = self.robot_node.getDevice(accel_name)
        self.accel.enable(self.timestep)
        self.gyro = self.robot_node.getDevice(gyro_name)
        self.gyro.enable(self.timestep)
        #if self.is_wolfgang:
            #self.accel_head = self.robot_node.getDevice("imu_head accelerometer")
            #self.accel_head.enable(self.timestep)
            #self.gyro_head = self.robot_node.getDevice("imu_head gyro")
            #self.gyro_head.enable(self.timestep)
        self.camera = self.robot_node.getDevice(camera_name)
        self.camera_counter = 0
        if self.camera_active:
            self.camera.enable(self.timestep*CAMERA_DIVIDER)
        if self.recognize:
            self.camera.recognitionEnable(self.timestep)
            self.last_img_saved = 0.0
            self.img_save_dir = "/tmp/webots/images" +\
                                time.strftime("%Y-%m-%d-%H-%M-%S") +\
                                os.getenv('WEBOTS_ROBOT_NAME')
            if not os.path.exists(self.img_save_dir):
                os.makedirs(self.img_save_dir)

        # set zero points
        self.set_arms_zero()
        self.set_legs_zero()
        if self.ros_active:
            if base_ns == "":
                clock_topic = "/clock"
            else:
                clock_topic = base_ns + "clock"
            if do_ros_init:
                rospy.init_node("webots_ros_interface", argv=['clock:=' + clock_topic])
            self.clock_publisher = rospy.Publisher(clock_topic, Clock, queue_size=1)
            self.l_sole_frame = rospy.get_param("~l_sole_frame", "l_sole")
            self.r_sole_frame = rospy.get_param("~r_sole_frame", "r_sole")
            self.camera_optical_frame = rospy.get_param("~camera_optical_frame", "camera_optical_frame")
            self.head_imu_frame = rospy.get_param("~head_imu_frame", "imu_frame_2")
            self.imu_frame = rospy.get_param("~imu_frame", "imu_frame")
            # self.pos_frame = rospy.get_param("~body_frame","body_frame")
            self.pub_js = rospy.Publisher(base_ns + "joint_states", JointState, queue_size=1)
            # self.pub_imu = rospy.Publisher(base_ns + "imu/data", Imu, queue_size=1)
            self.pub_imu = rospy.Publisher(base_ns + "imu/data_raw", Imu, queue_size=1)
            self.pub_imu_head = rospy.Publisher(base_ns + "imu_head/data", Imu, queue_size=1)
            # self.pub_cam = rospy.Publisher(base_ns + "camera/image_proc", Image, queue_size=1)
            self.pub_cam = rospy.Publisher(base_ns + "usb_cam/image_raw", Image, queue_size=1)
            self.pub_cam_info = rospy.Publisher(base_ns + "camera/camera_info", CameraInfo, queue_size=1, latch=True)

            self.pub_robot_pose = rospy.Publisher(base_ns + "robot_pose", Pose, queue_size=1)
            self.pub_soccer_pose = rospy.Publisher(base_ns + "soccer_position", Point, queue_size=1)

            self.pub_pres_left = rospy.Publisher(base_ns + "foot_pressure_left/filtered", FootPressure, queue_size=1)
            self.pub_pres_right = rospy.Publisher(base_ns + "foot_pressure_right/filtered", FootPressure, queue_size=1)
            self.cop_l_pub_ = rospy.Publisher(base_ns + "cop_l", PointStamped, queue_size=1)
            self.cop_r_pub_ = rospy.Publisher(base_ns + "cop_r", PointStamped, queue_size=1)
            # rospy.Subscriber(base_ns + "DynamixelController/command", JointCommand, self.command_cb)
            
            rospy.Subscriber(base_ns + "/walking_motor_goals", JointCommand, self.command_cb, queue_size=1)
            rospy.Subscriber(base_ns + "/motor", JointCommand, self.command_cb, queue_size=12)
            rospy.Subscriber(base_ns + "/head_motor_goals", JointCommand, self.command_head_cb)
            rospy.Subscriber(base_ns + "/kick_motor_goals", JointCommand, self.command_kick_cb)

            rospy.Subscriber(base_ns + "/process_control", String, self.command_process_control, queue_size=1)

            # publish camera info once, it will be latchedrosmsg show std_msgs/String 


            self.cam_info = CameraInfo()
            self.cam_info.header.stamp = rospy.Time.from_seconds(self.time)
            self.cam_info.header.frame_id = self.camera_optical_frame
            self.cam_info.height = self.camera.getHeight()
            self.cam_info.width = self.camera.getWidth()
            f_y = self.mat_from_fov_and_resolution(
                self.h_fov_to_v_fov(self.camera.getFov(), self.cam_info.height, self.cam_info.width),
                self.cam_info.height)
            f_x = self.mat_from_fov_and_resolution(self.camera.getFov(), self.cam_info.width)
            self.cam_info.K = [f_x, 0, self.cam_info.width / 2,
                               0, f_y, self.cam_info.height / 2,
                               0, 0, 1]
            self.cam_info.P = [f_x, 0, self.cam_info.width / 2, 0,
                               0, f_y, self.cam_info.height / 2, 0,
                               0, 0, 1, 0]
            self.pub_cam_info.publish(self.cam_info)

        if robot == "op3":
            # start pose
            command = JointCommand()
            command.joint_names = ["r_sho_roll", "l_sho_roll"]
            command.positions = [-math.tau/8, math.tau/8]
            self.command_cb(command)

    def mat_from_fov_and_resolution(self, fov, res):
        return 0.5 * res * (math.cos((fov / 2)) / math.sin((fov / 2)))

    def h_fov_to_v_fov(self, h_fov, height, width):
        return 2 * math.atan(math.tan(h_fov * 0.5) * (height / width))

    def step_sim(self):
        self.time += self.timestep / 1000
        self.robot_node.step(self.timestep)

    def step(self):
        self.step_sim()
        if self.ros_active:
            self.publish_ros()

    def publish_ros(self):
        self.publish_robot_pose()
        self.publish_soccer_pose()
        self.publish_imu()
        self.publish_joint_states()
        self.publish_clock()
        if self.camera_active and self.camera_counter == 0:
            self.publish_camera()
        #self.publish_pressure()
        if self.recognize:
            self.save_recognition()
        self.camera_counter = (self.camera_counter + 1) % CAMERA_DIVIDER

    def command_cb(self, command: JointCommand):
        for i, name in enumerate(command.joint_names):
            try:
                motor_index = self.external_motor_names.index(name)
                self.motors[motor_index].setPosition(command.positions[i])
                if len(command.velocities) == 0 or command.velocities[i] == -1:
                    self.motors[motor_index].setVelocity(self.motors[motor_index].getMaxVelocity())
                else:
                    self.motors[motor_index].setVelocity(command.velocities[i])
                if not len(command.accelerations) == 0:
                    self.motors[motor_index].setAcceleration(command.accelerations[i])

            except ValueError:
                print(f"invalid motor specified ({name})")

    def command_head_cb(self, command: JointCommand):
        for i, name in enumerate(command.joint_names):
            try:
                motor_index = self.external_motor_names.index(name)
                self.motors[motor_index].setPosition(command.positions[i])
                if len(command.velocities) == 0 or command.velocities[i] == -1:
                    self.motors[motor_index].setVelocity(self.motors[motor_index].getMaxVelocity())
                else:
                    self.motors[motor_index].setVelocity(command.velocities[i])
                if not len(command.accelerations) == 0:
                    self.motors[motor_index].setAcceleration(command.accelerations[i])

            except ValueError:
                print(f"invalid motor specified ({name})")   

    def command_kick_cb(self, command: JointCommand):
        for i, name in enumerate(command.joint_names):
            try:
                motor_index = self.external_motor_names.index(name)
                self.motors[motor_index].setPosition(command.positions[i])
                if len(command.velocities) == 0 or command.velocities[i] == -1:
                    self.motors[motor_index].setVelocity(self.motors[motor_index].getMaxVelocity())
                else:
                    self.motors[motor_index].setVelocity(command.velocities[i])
                if not len(command.accelerations) == 0:
                    self.motors[motor_index].setAcceleration(command.accelerations[i])

            except ValueError:
                print(f"invalid motor specified ({name})") 

    def command_process_control(self,command: String):
        print("Received")
        if command.data == 'Pause':
            print("Simulation Pause")
            # self.robot_node.robot_step(0)
            self.robot_node.simulationSetMode(self.robot_node.SIMULATION_MODE_PAUSE)
            # time.sleep(5)
            # self.robot_node.step(0)
            # self.robot_node.simulationSetMode(self.robot_node.SIMULATION_MODE_REAL_TIME)
        elif command.data == 'Reset':
            print("Simulation Reset")
            self.robot_node.simulationReset()
        # elif command.data == 'Run':
        #     print("Simulation Run")
        #     self.robot_node.step(0)
        #     self.robot_node.simulationSetMode(self.robot_node.SIMULATION_MODE_REAL_TIME)


    def set_head_tilt(self, pos):
        self.motors[-1].setPosition(pos)

    def set_arms_zero(self):
        positions = [0, 0, 0, 
                     0, 0, 0]
        for i in range(2, 8):
            self.motors[i].setPosition(positions[i-2])

    def set_legs_zero(self):
        positions = [-0.05101498763939969, -0.4764168173419817, 0.006769736355572479, 0.8049079656668593, -0.45333041272529706, -0.04828855321310417, 
                    0.051024988764736795, 0.47641599257384537, -0.006771592248384993, -0.8049033115711886, 0.45332676273253447, 0.04830260921860783]
        for i in range (8,19):
            self.motors[i].setPosition(positions[i-8])

    def get_joint_state_msg(self):
        js = JointState()
        js.name = []
        js.header.stamp = rospy.Time.from_seconds(self.time)
        js.position = []
        js.effort = []
        for i in range(len(self.sensors)):
            js.name.append(self.external_motor_names[i])
            value = self.sensors[i].getValue()
            js.position.append(value)
            js.effort.append(self.motors[i].getTorqueFeedback())
        return js

    def publish_joint_states(self):
        self.pub_js.publish(self.get_joint_state_msg())

    def get_imu_msg(self, head=False):
        msg = Imu()
        msg.header.stamp = rospy.Time.from_seconds(self.time)
        if head:
            msg.header.frame_id = self.head_imu_frame
        else:
            msg.header.frame_id = self.imu_frame

        # change order because webots has different axis
        '''
        if head:
            accel_vels = self.accel_head.getValues()
            msg.linear_acceleration.x = accel_vels[2]
            msg.linear_acceleration.y = -accel_vels[0]
            msg.linear_acceleration.z = -accel_vels[1]
        else:
        '''
        accel_vels = self.accel.getValues()
        msg.linear_acceleration.x = accel_vels[0]
        msg.linear_acceleration.y = accel_vels[1]
        msg.linear_acceleration.z = accel_vels[2]
        '''
        if head:
            gyro_vels = self.gyro_head.getValues()
            msg.angular_velocity.x = gyro_vels[2]
            msg.angular_velocity.y = -gyro_vels[0]
            msg.angular_velocity.z = -gyro_vels[1]
        else:
            gyro_vels = self.gyro.getValues()
            msg.angular_velocity.x = gyro_vels[0]
            msg.angular_velocity.y = gyro_vels[1]
            msg.angular_velocity.z = gyro_vels[2]
        '''
        gyro_vels = self.gyro.getValues()
        msg.angular_velocity.x = gyro_vels[0]
        msg.angular_velocity.y = gyro_vels[1]
        msg.angular_velocity.z = gyro_vels[2]
        return msg

    def get_pose_msg(self):
        pose_msg= Pose()
        # pose_msg.header.stamp = rospy.Time.from_seconds(self.time)
        # pose_msg.header.frame_id = self.pos_frame
        pose_field = self.robot_node.getSelf()
        position = pose_field.getPosition()
        orientation_matrix = pose_field.getOrientation()
        # orientation_matrix = orientation_matrix.reshape(3,3)
        orientation_matrix = np.array([[orientation_matrix[0], orientation_matrix[1], orientation_matrix[2], 0],
                                                                        [orientation_matrix[3], orientation_matrix[4], orientation_matrix[5], 0],
                                                                        [orientation_matrix[6], orientation_matrix[7], orientation_matrix[8], 0],
                                                                        [0, 0, 0, 1] ])
        # quaternion_from_matrix needs a 4x4 marix, and donot use the 4st colum
        # default seq is xyzw
        # orientation = tf_conversions.transformations.quaternion_from_matrix(orientation_matrix)
        # print(orientation)
        # Extract the rotation matrix and remove the last column and row
        rotation_matrix = orientation_matrix[:3, :3]

        # Calculate the quaternion from the rotation matrix
        w = np.sqrt(1 + rotation_matrix[0, 0] + rotation_matrix[1, 1] + rotation_matrix[2, 2]) / 2
        x = (rotation_matrix[2, 1] - rotation_matrix[1, 2]) / (4 * w)
        y = (rotation_matrix[0, 2] - rotation_matrix[2, 0]) / (4 * w)
        z = (rotation_matrix[1, 0] - rotation_matrix[0, 1]) / (4 * w)

        orientation = np.array([x, y, z, w])
        # print('numpy')
        # print(orientation)
        pose_msg.position.x = position[0]
        pose_msg.position.y = position[1]
        pose_msg.position.z = position[2]

        pose_msg.orientation.x = orientation[0]
        pose_msg.orientation.y = orientation[1]
        pose_msg.orientation.z = orientation[2]
        pose_msg.orientation.w = orientation[3]

        # print(tf_conversions.transformations.quaternion_matrix(orientation))
        # print(orientation_matrix)

        return pose_msg

    def get_soccer_position_msg(self):
        soccer_position_msg = Point()
        soccer_node = self.robot_node.getFromDef("Soccer")
        position = soccer_node.getPosition()
        soccer_position_msg.x = position[0]
        soccer_position_msg.y = position[1]
        soccer_position_msg.z = position[2]    
        return soccer_position_msg    
        
    def publish_robot_pose(self):
        self.pub_robot_pose.publish(self.get_pose_msg())
    
    def publish_soccer_pose(self):
        self.pub_soccer_pose.publish(self.get_soccer_position_msg())

    def publish_imu(self):
        self.pub_imu.publish(self.get_imu_msg(head=False))
        if self.is_wolfgang:
            self.pub_imu_head.publish(self.get_imu_msg(head=True))



    def publish_camera(self):
        img_msg = Image()
        img_msg.header.stamp = rospy.Time.from_seconds(self.time)
        img_msg.header.frame_id = self.camera_optical_frame
        img_msg.height = self.camera.getHeight()
        img_msg.width = self.camera.getWidth()
        img_msg.encoding = "bgra8"
        img_msg.step = 4 * self.camera.getWidth()
        img = self.camera.getImage()
        img_msg.data = img
        self.pub_cam.publish(img_msg)

    def save_recognition(self):
        if self.time - self.last_img_saved < 1.0:
            return
        self.last_img_saved = self.time
        annotation = ""
        img_stamp = f"{self.time:.2f}".replace(".", "_")
        img_name = f"img_{os.getenv('WEBOTS_ROBOT_NAME')}_{img_stamp}.PNG"
        recognized_objects = self.camera.getRecognitionObjects()
        # variables for saving not in image later
        found_ball = False
        found_wolfgang = False
        for e in range(self.camera.getRecognitionNumberOfObjects()):
            model = recognized_objects[e].get_model()
            position = recognized_objects[e].get_position_on_image()
            size = recognized_objects[e].get_size_on_image()
            if model == b"soccer ball":
                found_ball = True
                vector = f"""{{"x1": {position[0] - 0.5*size[0]}, "y1": {position[1] - 0.5*size[1]}, "x2": {position[0] + 0.5*size[0]}, "y2": {position[1] + 0.5*size[1]}}}"""
                annotation += f"{img_name}|"
                annotation += "ball|"
                annotation += vector
                annotation += "\n"
            if model == b"wolfgang":
                found_wolfgang = True
                vector = f"""{{"x1": {position[0] - 0.5*size[0]}, "y1": {position[1] - 0.5*size[1]}, "x2": {position[0] + 0.5*size[0]}, "y2": {position[1] + 0.5*size[1]}}}"""
                annotation += f"{img_name}|"
                annotation += "robot|"
                annotation += vector
                annotation += "\n"
        if not found_ball:
            annotation +=  f"{img_name}|ball|not in image\n"
        if not found_wolfgang:
            annotation += f"{img_name}|robot|not in image\n"
        with open(os.path.join(self.img_save_dir, "annotations.txt"), "a") as f:
            f.write(annotation)
        self.camera.saveImage(filename=os.path.join(self.img_save_dir, img_name), quality=100)

    def get_image(self):
        return self.camera.getImage()

    def publish_clock(self):
        self.clock_msg.clock = rospy.Time.from_seconds(self.time)
        self.clock_publisher.publish(self.clock_msg)

    '''
    def get_pressure_message(self):
        current_time = rospy.Time.from_sec(self.time)

        left_pressure = FootPressure()
        left_pressure.header.stamp = current_time
        left_pressure.left_back = self.pressure_sensors[0].getValues()[2]
        left_pressure.left_front = self.pressure_sensors[1].getValues()[2]
        left_pressure.right_front = self.pressure_sensors[2].getValues()[2]
        left_pressure.right_back = self.pressure_sensors[3].getValues()[2]

        right_pressure = FootPressure()
        left_pressure.header.stamp = current_time
        right_pressure.left_back = self.pressure_sensors[4].getValues()[2]
        right_pressure.left_front = self.pressure_sensors[5].getValues()[2]
        right_pressure.right_front = self.pressure_sensors[6].getValues()[2]
        right_pressure.right_back = self.pressure_sensors[7].getValues()[2]

        # compute center of pressures of the feet
        pos_x = 0.085
        pos_y = 0.045
        # we can take a very small threshold, since simulation gives more accurate values than reality
        threshold = 1

        cop_l = PointStamped()
        cop_l.header.frame_id = self.l_sole_frame
        cop_l.header.stamp = current_time
        sum = left_pressure.left_back + left_pressure.left_front + left_pressure.right_front + left_pressure.right_back
        if sum > threshold:
            cop_l.point.x = (left_pressure.left_front + left_pressure.right_front -
                             left_pressure.left_back - left_pressure.right_back) * pos_x / sum
            cop_l.point.x = max(min(cop_l.point.x, pos_x), -pos_x)
            cop_l.point.y = (left_pressure.left_front + left_pressure.left_back -
                             left_pressure.right_front - left_pressure.right_back) * pos_y / sum
            cop_l.point.y = max(min(cop_l.point.x, pos_y), -pos_y)
        else:
            cop_l.point.x = 0
            cop_l.point.y = 0

        cop_r = PointStamped()
        cop_r.header.frame_id = self.r_sole_frame
        cop_r.header.stamp = current_time
        sum = right_pressure.right_back + right_pressure.right_front + right_pressure.right_front + right_pressure.right_back
        if sum > threshold:
            cop_r.point.x = (right_pressure.left_front + right_pressure.right_front -
                             right_pressure.left_back - right_pressure.right_back) * pos_x / sum
            cop_r.point.x = max(min(cop_r.point.x, pos_x), -pos_x)
            cop_r.point.y = (right_pressure.left_front + right_pressure.left_back -
                             right_pressure.right_front - right_pressure.right_back) * pos_y / sum
            cop_r.point.y = max(min(cop_r.point.x, pos_y), -pos_y)
        else:
            cop_r.point.x = 0
            cop_r.point.y = 0

        return left_pressure, right_pressure, cop_l, cop_r
    '''
    '''
    def publish_pressure(self):
        left, right, cop_l, cop_r = self.get_pressure_message()
        self.pub_pres_left.publish(left)
        self.pub_pres_right.publish(right)
        self.cop_l_pub_.publish(cop_l)
        self.cop_r_pub_.publish(cop_r)
    '''

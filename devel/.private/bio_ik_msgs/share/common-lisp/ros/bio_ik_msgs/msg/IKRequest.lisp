; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude IKRequest.msg.html

(cl:defclass <IKRequest> (roslisp-msg-protocol:ros-message)
  ((robot_description
    :reader robot_description
    :initarg :robot_description
    :type cl:string
    :initform "")
   (group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (approximate
    :reader approximate
    :initarg :approximate
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:real
    :initform 0)
   (fixed_joints
    :reader fixed_joints
    :initarg :fixed_joints
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type moveit_msgs-msg:RobotState
    :initform (cl:make-instance 'moveit_msgs-msg:RobotState))
   (avoid_collisions
    :reader avoid_collisions
    :initarg :avoid_collisions
    :type cl:boolean
    :initform cl:nil)
   (position_goals
    :reader position_goals
    :initarg :position_goals
    :type (cl:vector bio_ik_msgs-msg:PositionGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:PositionGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:PositionGoal)))
   (orientation_goals
    :reader orientation_goals
    :initarg :orientation_goals
    :type (cl:vector bio_ik_msgs-msg:OrientationGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:OrientationGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:OrientationGoal)))
   (pose_goals
    :reader pose_goals
    :initarg :pose_goals
    :type (cl:vector bio_ik_msgs-msg:PoseGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:PoseGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:PoseGoal)))
   (look_at_goals
    :reader look_at_goals
    :initarg :look_at_goals
    :type (cl:vector bio_ik_msgs-msg:LookAtGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:LookAtGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:LookAtGoal)))
   (min_distance_goals
    :reader min_distance_goals
    :initarg :min_distance_goals
    :type (cl:vector bio_ik_msgs-msg:MinDistanceGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:MinDistanceGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:MinDistanceGoal)))
   (max_distance_goals
    :reader max_distance_goals
    :initarg :max_distance_goals
    :type (cl:vector bio_ik_msgs-msg:MaxDistanceGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:MaxDistanceGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:MaxDistanceGoal)))
   (line_goals
    :reader line_goals
    :initarg :line_goals
    :type (cl:vector bio_ik_msgs-msg:LineGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:LineGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:LineGoal)))
   (touch_goals
    :reader touch_goals
    :initarg :touch_goals
    :type (cl:vector bio_ik_msgs-msg:TouchGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:TouchGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:TouchGoal)))
   (avoid_joint_limits_goals
    :reader avoid_joint_limits_goals
    :initarg :avoid_joint_limits_goals
    :type (cl:vector bio_ik_msgs-msg:AvoidJointLimitsGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:AvoidJointLimitsGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:AvoidJointLimitsGoal)))
   (center_joints_goals
    :reader center_joints_goals
    :initarg :center_joints_goals
    :type (cl:vector bio_ik_msgs-msg:CenterJointsGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:CenterJointsGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:CenterJointsGoal)))
   (minimal_displacement_goals
    :reader minimal_displacement_goals
    :initarg :minimal_displacement_goals
    :type (cl:vector bio_ik_msgs-msg:MinimalDisplacementGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:MinimalDisplacementGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:MinimalDisplacementGoal)))
   (joint_variable_goals
    :reader joint_variable_goals
    :initarg :joint_variable_goals
    :type (cl:vector bio_ik_msgs-msg:JointVariableGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:JointVariableGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:JointVariableGoal)))
   (balance_goals
    :reader balance_goals
    :initarg :balance_goals
    :type (cl:vector bio_ik_msgs-msg:BalanceGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:BalanceGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:BalanceGoal)))
   (side_goals
    :reader side_goals
    :initarg :side_goals
    :type (cl:vector bio_ik_msgs-msg:SideGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:SideGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:SideGoal)))
   (direction_goals
    :reader direction_goals
    :initarg :direction_goals
    :type (cl:vector bio_ik_msgs-msg:DirectionGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:DirectionGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:DirectionGoal)))
   (cone_goals
    :reader cone_goals
    :initarg :cone_goals
    :type (cl:vector bio_ik_msgs-msg:ConeGoal)
   :initform (cl:make-array 0 :element-type 'bio_ik_msgs-msg:ConeGoal :initial-element (cl:make-instance 'bio_ik_msgs-msg:ConeGoal))))
)

(cl:defclass IKRequest (<IKRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<IKRequest> is deprecated: use bio_ik_msgs-msg:IKRequest instead.")))

(cl:ensure-generic-function 'robot_description-val :lambda-list '(m))
(cl:defmethod robot_description-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:robot_description-val is deprecated.  Use bio_ik_msgs-msg:robot_description instead.")
  (robot_description m))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:group_name-val is deprecated.  Use bio_ik_msgs-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'approximate-val :lambda-list '(m))
(cl:defmethod approximate-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:approximate-val is deprecated.  Use bio_ik_msgs-msg:approximate instead.")
  (approximate m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:timeout-val is deprecated.  Use bio_ik_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'fixed_joints-val :lambda-list '(m))
(cl:defmethod fixed_joints-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:fixed_joints-val is deprecated.  Use bio_ik_msgs-msg:fixed_joints instead.")
  (fixed_joints m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:robot_state-val is deprecated.  Use bio_ik_msgs-msg:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'avoid_collisions-val :lambda-list '(m))
(cl:defmethod avoid_collisions-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:avoid_collisions-val is deprecated.  Use bio_ik_msgs-msg:avoid_collisions instead.")
  (avoid_collisions m))

(cl:ensure-generic-function 'position_goals-val :lambda-list '(m))
(cl:defmethod position_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:position_goals-val is deprecated.  Use bio_ik_msgs-msg:position_goals instead.")
  (position_goals m))

(cl:ensure-generic-function 'orientation_goals-val :lambda-list '(m))
(cl:defmethod orientation_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:orientation_goals-val is deprecated.  Use bio_ik_msgs-msg:orientation_goals instead.")
  (orientation_goals m))

(cl:ensure-generic-function 'pose_goals-val :lambda-list '(m))
(cl:defmethod pose_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:pose_goals-val is deprecated.  Use bio_ik_msgs-msg:pose_goals instead.")
  (pose_goals m))

(cl:ensure-generic-function 'look_at_goals-val :lambda-list '(m))
(cl:defmethod look_at_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:look_at_goals-val is deprecated.  Use bio_ik_msgs-msg:look_at_goals instead.")
  (look_at_goals m))

(cl:ensure-generic-function 'min_distance_goals-val :lambda-list '(m))
(cl:defmethod min_distance_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:min_distance_goals-val is deprecated.  Use bio_ik_msgs-msg:min_distance_goals instead.")
  (min_distance_goals m))

(cl:ensure-generic-function 'max_distance_goals-val :lambda-list '(m))
(cl:defmethod max_distance_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:max_distance_goals-val is deprecated.  Use bio_ik_msgs-msg:max_distance_goals instead.")
  (max_distance_goals m))

(cl:ensure-generic-function 'line_goals-val :lambda-list '(m))
(cl:defmethod line_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:line_goals-val is deprecated.  Use bio_ik_msgs-msg:line_goals instead.")
  (line_goals m))

(cl:ensure-generic-function 'touch_goals-val :lambda-list '(m))
(cl:defmethod touch_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:touch_goals-val is deprecated.  Use bio_ik_msgs-msg:touch_goals instead.")
  (touch_goals m))

(cl:ensure-generic-function 'avoid_joint_limits_goals-val :lambda-list '(m))
(cl:defmethod avoid_joint_limits_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:avoid_joint_limits_goals-val is deprecated.  Use bio_ik_msgs-msg:avoid_joint_limits_goals instead.")
  (avoid_joint_limits_goals m))

(cl:ensure-generic-function 'center_joints_goals-val :lambda-list '(m))
(cl:defmethod center_joints_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:center_joints_goals-val is deprecated.  Use bio_ik_msgs-msg:center_joints_goals instead.")
  (center_joints_goals m))

(cl:ensure-generic-function 'minimal_displacement_goals-val :lambda-list '(m))
(cl:defmethod minimal_displacement_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:minimal_displacement_goals-val is deprecated.  Use bio_ik_msgs-msg:minimal_displacement_goals instead.")
  (minimal_displacement_goals m))

(cl:ensure-generic-function 'joint_variable_goals-val :lambda-list '(m))
(cl:defmethod joint_variable_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:joint_variable_goals-val is deprecated.  Use bio_ik_msgs-msg:joint_variable_goals instead.")
  (joint_variable_goals m))

(cl:ensure-generic-function 'balance_goals-val :lambda-list '(m))
(cl:defmethod balance_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:balance_goals-val is deprecated.  Use bio_ik_msgs-msg:balance_goals instead.")
  (balance_goals m))

(cl:ensure-generic-function 'side_goals-val :lambda-list '(m))
(cl:defmethod side_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:side_goals-val is deprecated.  Use bio_ik_msgs-msg:side_goals instead.")
  (side_goals m))

(cl:ensure-generic-function 'direction_goals-val :lambda-list '(m))
(cl:defmethod direction_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:direction_goals-val is deprecated.  Use bio_ik_msgs-msg:direction_goals instead.")
  (direction_goals m))

(cl:ensure-generic-function 'cone_goals-val :lambda-list '(m))
(cl:defmethod cone_goals-val ((m <IKRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:cone_goals-val is deprecated.  Use bio_ik_msgs-msg:cone_goals instead.")
  (cone_goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKRequest>) ostream)
  "Serializes a message object of type '<IKRequest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'approximate) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timeout)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timeout) (cl:floor (cl:slot-value msg 'timeout)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fixed_joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'fixed_joints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'avoid_collisions) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'position_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'orientation_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'orientation_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'look_at_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'look_at_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'min_distance_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'min_distance_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_distance_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'max_distance_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'touch_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'touch_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avoid_joint_limits_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'avoid_joint_limits_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center_joints_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'center_joints_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'minimal_displacement_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'minimal_displacement_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_variable_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_variable_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'balance_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'balance_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'side_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'side_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'direction_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'direction_goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cone_goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cone_goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKRequest>) istream)
  "Deserializes a message object of type '<IKRequest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'approximate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fixed_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fixed_joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_state) istream)
    (cl:setf (cl:slot-value msg 'avoid_collisions) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:PositionGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'orientation_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'orientation_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:OrientationGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:PoseGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'look_at_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'look_at_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:LookAtGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'min_distance_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'min_distance_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:MinDistanceGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'max_distance_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_distance_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:MaxDistanceGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'line_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:LineGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'touch_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'touch_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:TouchGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avoid_joint_limits_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avoid_joint_limits_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:AvoidJointLimitsGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center_joints_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center_joints_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:CenterJointsGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'minimal_displacement_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'minimal_displacement_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:MinimalDisplacementGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_variable_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_variable_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:JointVariableGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'balance_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'balance_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:BalanceGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'side_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'side_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:SideGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'direction_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'direction_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:DirectionGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cone_goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cone_goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bio_ik_msgs-msg:ConeGoal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKRequest>)))
  "Returns string type for a message object of type '<IKRequest>"
  "bio_ik_msgs/IKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKRequest)))
  "Returns string type for a message object of type 'IKRequest"
  "bio_ik_msgs/IKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKRequest>)))
  "Returns md5sum for a message object of type '<IKRequest>"
  "c18863357cc1a388fef1f1f38d21ec53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKRequest)))
  "Returns md5sum for a message object of type 'IKRequest"
  "c18863357cc1a388fef1f1f38d21ec53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKRequest>)))
  "Returns full string definition for message of type '<IKRequest>"
  (cl:format cl:nil "# Name of the rosparam parameter from which to load the robot model~%# default: \"robot_description\"~%string robot_description~%~%# Name of the move group for which to compute IK~%# Only joints that are part of the specified move group will be modified by the IK solver~%string group_name~%~%# If no accurate solution could be found and approximate is false,~%# no solution will be returned. If approximate is true, the best~%# approximate solution will be returned, even if no accurate solution could be found.~%bool approximate~%~%# IK timeout~%# If no solution could be found within the specified timeout, the IK request is canceled~%# and if return_approximate_solution is false, no solution is returned.~%duration timeout~%~%# Joints specified as fixed_joints will always keep their initial positions and will~%# not be moved by the IK solver~%string[] fixed_joints~%~%# Initial robot state from which to start looking for IK solutions~%moveit_msgs/RobotState robot_state~%~%# If true, IK results will be checked for collisions, and IK results that result in collisions~%# will be rejected.~%# Collision checking requires a moveit planning scene to be present. If no planning scene was found~%# the bio_ik_service node will print a ROS_ERROR message on startup or during the first collision~%# aware IK request.~%bool avoid_collisions~%~%# Typed goal lists~%PositionGoal[] position_goals~%OrientationGoal[] orientation_goals~%PoseGoal[] pose_goals~%LookAtGoal[] look_at_goals~%MinDistanceGoal[] min_distance_goals~%MaxDistanceGoal[] max_distance_goals~%LineGoal[] line_goals~%TouchGoal[] touch_goals~%AvoidJointLimitsGoal[] avoid_joint_limits_goals~%CenterJointsGoal[] center_joints_goals~%MinimalDisplacementGoal[] minimal_displacement_goals~%JointVariableGoal[] joint_variable_goals~%BalanceGoal[] balance_goals~%SideGoal[] side_goals~%DirectionGoal[] direction_goals~%ConeGoal[] cone_goals~%~%================================================================================~%MSG: moveit_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%~%# Joints that may have multiple DOF are specified here~%sensor_msgs/MultiDOFJointState multi_dof_joint_state~%~%# Attached collision objects (attached to some link on the robot)~%AttachedCollisionObject[] attached_collision_objects~%~%# Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene~%# This is mostly important for handling the attached bodies (whether or not to clear the attached bodies~%# of a moveit::core::RobotState before updating it with this message)~%bool is_diff~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/MultiDOFJointState~%# Representation of state for joints with multiple degrees of freedom, ~%# following the structure of JointState.~%#~%# It is assumed that a joint in a system corresponds to a transform that gets applied ~%# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)~%# and those 3DOF can be expressed as a transformation matrix, and that transformation~%# matrix can be converted back to (x, y, yaw)~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# wrench associated with them, you can leave the wrench array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%Header header~%~%string[] joint_names~%geometry_msgs/Transform[] transforms~%geometry_msgs/Twist[] twist~%geometry_msgs/Wrench[] wrench~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: moveit_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%string link_name~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is already considered by default~%string[] touch_links~%~%# If certain links were placed in a particular posture for this object to remain attached ~%# (e.g., an end effector closing around an object), the posture necessary for releasing~%# the object is stored here~%trajectory_msgs/JointTrajectory detach_posture~%~%# The weight of the attached object, if known~%float64 weight~%~%================================================================================~%MSG: moveit_msgs/CollisionObject~%# A header, used for interpreting the poses~%Header header~%~%# The id of the object (name used in MoveIt)~%string id~%~%# The object type in a database of known objects~%object_recognition_msgs/ObjectType type~%~%# The collision geometries associated with the object.~%# Their poses are with respect to the specified header~%~%# Solid geometric primitives~%shape_msgs/SolidPrimitive[] primitives~%geometry_msgs/Pose[] primitive_poses~%~%# Meshes~%shape_msgs/Mesh[] meshes~%geometry_msgs/Pose[] mesh_poses~%~%# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)~%shape_msgs/Plane[] planes~%geometry_msgs/Pose[] plane_poses~%~%# Adds the object to the planning scene. If the object previously existed, it is replaced.~%byte ADD=0~%~%# Removes the object from the environment entirely (everything that matches the specified id)~%byte REMOVE=1~%~%# Append to an object that already exists in the planning scene. If the object does not exist, it is added.~%byte APPEND=2~%~%# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)~%# if solely moving the object is desired~%byte MOVE=3~%~%# Operation to be performed~%byte operation~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: bio_ik_msgs/PositionGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal position into which the end effector link shall be brought~%geometry_msgs/Point position~%~%================================================================================~%MSG: bio_ik_msgs/OrientationGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal orientation into which the end effector link shall be brought~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: bio_ik_msgs/PoseGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal pose into which the end effector link shall be brought~%geometry_msgs/Pose pose~%~%# How rotational errors will be weighted in relation to positional errors~%float64 rotation_scale~%~%================================================================================~%MSG: bio_ik_msgs/LookAtGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The axis in the link's local coordinate frame which shall point towards the target~%geometry_msgs/Vector3 axis~%~%# The target point which the axis shall point at~%geometry_msgs/Point target~%~%================================================================================~%MSG: bio_ik_msgs/MinDistanceGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The distance will be computed from the origin of the end effector link to the target point~%geometry_msgs/Point target~%~%# Minimum allowed distance~%# Forces the end effector link to be at least the specified distance away from the target~%float64 distance~%~%================================================================================~%MSG: bio_ik_msgs/MaxDistanceGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The distance will be computed from the origin of the end effector link to the target point~%geometry_msgs/Point target~%~%# Maximum allowed distance~%# Forces the end effector link to be at most the specified distance away from the target~%float64 distance~%~%================================================================================~%MSG: bio_ik_msgs/LineGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# A point on the line~%geometry_msgs/Point position~%~%# Direction of the line~%geometry_msgs/Vector3 direction~%~%================================================================================~%MSG: bio_ik_msgs/TouchGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# A point on the plane that shall be touched by the end effector link mesh~%geometry_msgs/Point position~%~%# The normal of the plane that shall be touched by the end effector link mesh~%geometry_msgs/Vector3 normal~%~%================================================================================~%MSG: bio_ik_msgs/AvoidJointLimitsGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%================================================================================~%MSG: bio_ik_msgs/CenterJointsGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%================================================================================~%MSG: bio_ik_msgs/MinimalDisplacementGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%================================================================================~%MSG: bio_ik_msgs/JointVariableGoal~%# The name of the joint variable~%string variable_name~%~%# The desired position value of the joint variable~%float64 variable_position~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to false, the goal will be primary goal (like eg. position goals)~%# If set to true, this goal will always have lower priority than the primary goals~%bool secondary~%~%================================================================================~%MSG: bio_ik_msgs/BalanceGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The center of gravity will be pulled above this target point~%geometry_msgs/Point target~%~%# Gravity vector (optional)~%geometry_msgs/Vector3 axis~%~%================================================================================~%MSG: bio_ik_msgs/SideGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Vector3 axis~%~%geometry_msgs/Vector3 direction~%~%================================================================================~%MSG: bio_ik_msgs/DirectionGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Vector3 axis~%~%geometry_msgs/Vector3 direction~%~%================================================================================~%MSG: bio_ik_msgs/ConeGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Point position~%float64 position_weight~%geometry_msgs/Vector3 axis~%geometry_msgs/Vector3 direction~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKRequest)))
  "Returns full string definition for message of type 'IKRequest"
  (cl:format cl:nil "# Name of the rosparam parameter from which to load the robot model~%# default: \"robot_description\"~%string robot_description~%~%# Name of the move group for which to compute IK~%# Only joints that are part of the specified move group will be modified by the IK solver~%string group_name~%~%# If no accurate solution could be found and approximate is false,~%# no solution will be returned. If approximate is true, the best~%# approximate solution will be returned, even if no accurate solution could be found.~%bool approximate~%~%# IK timeout~%# If no solution could be found within the specified timeout, the IK request is canceled~%# and if return_approximate_solution is false, no solution is returned.~%duration timeout~%~%# Joints specified as fixed_joints will always keep their initial positions and will~%# not be moved by the IK solver~%string[] fixed_joints~%~%# Initial robot state from which to start looking for IK solutions~%moveit_msgs/RobotState robot_state~%~%# If true, IK results will be checked for collisions, and IK results that result in collisions~%# will be rejected.~%# Collision checking requires a moveit planning scene to be present. If no planning scene was found~%# the bio_ik_service node will print a ROS_ERROR message on startup or during the first collision~%# aware IK request.~%bool avoid_collisions~%~%# Typed goal lists~%PositionGoal[] position_goals~%OrientationGoal[] orientation_goals~%PoseGoal[] pose_goals~%LookAtGoal[] look_at_goals~%MinDistanceGoal[] min_distance_goals~%MaxDistanceGoal[] max_distance_goals~%LineGoal[] line_goals~%TouchGoal[] touch_goals~%AvoidJointLimitsGoal[] avoid_joint_limits_goals~%CenterJointsGoal[] center_joints_goals~%MinimalDisplacementGoal[] minimal_displacement_goals~%JointVariableGoal[] joint_variable_goals~%BalanceGoal[] balance_goals~%SideGoal[] side_goals~%DirectionGoal[] direction_goals~%ConeGoal[] cone_goals~%~%================================================================================~%MSG: moveit_msgs/RobotState~%# This message contains information about the robot state, i.e. the positions of its joints and links~%sensor_msgs/JointState joint_state~%~%# Joints that may have multiple DOF are specified here~%sensor_msgs/MultiDOFJointState multi_dof_joint_state~%~%# Attached collision objects (attached to some link on the robot)~%AttachedCollisionObject[] attached_collision_objects~%~%# Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene~%# This is mostly important for handling the attached bodies (whether or not to clear the attached bodies~%# of a moveit::core::RobotState before updating it with this message)~%bool is_diff~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/MultiDOFJointState~%# Representation of state for joints with multiple degrees of freedom, ~%# following the structure of JointState.~%#~%# It is assumed that a joint in a system corresponds to a transform that gets applied ~%# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)~%# and those 3DOF can be expressed as a transformation matrix, and that transformation~%# matrix can be converted back to (x, y, yaw)~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# wrench associated with them, you can leave the wrench array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%Header header~%~%string[] joint_names~%geometry_msgs/Transform[] transforms~%geometry_msgs/Twist[] twist~%geometry_msgs/Wrench[] wrench~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: moveit_msgs/AttachedCollisionObject~%# The CollisionObject will be attached with a fixed joint to this link~%string link_name~%~%#This contains the actual shapes and poses for the CollisionObject~%#to be attached to the link~%#If action is remove and no object.id is set, all objects~%#attached to the link indicated by link_name will be removed~%CollisionObject object~%~%# The set of links that the attached objects are allowed to touch~%# by default - the link_name is already considered by default~%string[] touch_links~%~%# If certain links were placed in a particular posture for this object to remain attached ~%# (e.g., an end effector closing around an object), the posture necessary for releasing~%# the object is stored here~%trajectory_msgs/JointTrajectory detach_posture~%~%# The weight of the attached object, if known~%float64 weight~%~%================================================================================~%MSG: moveit_msgs/CollisionObject~%# A header, used for interpreting the poses~%Header header~%~%# The id of the object (name used in MoveIt)~%string id~%~%# The object type in a database of known objects~%object_recognition_msgs/ObjectType type~%~%# The collision geometries associated with the object.~%# Their poses are with respect to the specified header~%~%# Solid geometric primitives~%shape_msgs/SolidPrimitive[] primitives~%geometry_msgs/Pose[] primitive_poses~%~%# Meshes~%shape_msgs/Mesh[] meshes~%geometry_msgs/Pose[] mesh_poses~%~%# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)~%shape_msgs/Plane[] planes~%geometry_msgs/Pose[] plane_poses~%~%# Adds the object to the planning scene. If the object previously existed, it is replaced.~%byte ADD=0~%~%# Removes the object from the environment entirely (everything that matches the specified id)~%byte REMOVE=1~%~%# Append to an object that already exists in the planning scene. If the object does not exist, it is added.~%byte APPEND=2~%~%# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)~%# if solely moving the object is desired~%byte MOVE=3~%~%# Operation to be performed~%byte operation~%~%================================================================================~%MSG: object_recognition_msgs/ObjectType~%################################################## OBJECT ID #########################################################~%~%# Contains information about the type of a found object. Those two sets of parameters together uniquely define an~%# object~%~%# The key of the found object: the unique identifier in the given db~%string key~%~%# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding~%# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"~%# There is no conventional format for those parameters and it's nice to keep that flexibility.~%# The object_recognition_core as a generic DB type that can read those fields~%# Current examples:~%# For CouchDB:~%#   type: 'CouchDB'~%#   root: 'http://localhost:5984'~%#   collection: 'object_recognition'~%# For SQL household database:~%#   type: 'SqlHousehold'~%#   host: 'wgs36'~%#   port: 5432~%#   user: 'willow'~%#   password: 'willow'~%#   name: 'household_objects'~%#   module: 'tabletop'~%string db~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%================================================================================~%MSG: bio_ik_msgs/PositionGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal position into which the end effector link shall be brought~%geometry_msgs/Point position~%~%================================================================================~%MSG: bio_ik_msgs/OrientationGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal orientation into which the end effector link shall be brought~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: bio_ik_msgs/PoseGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal pose into which the end effector link shall be brought~%geometry_msgs/Pose pose~%~%# How rotational errors will be weighted in relation to positional errors~%float64 rotation_scale~%~%================================================================================~%MSG: bio_ik_msgs/LookAtGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The axis in the link's local coordinate frame which shall point towards the target~%geometry_msgs/Vector3 axis~%~%# The target point which the axis shall point at~%geometry_msgs/Point target~%~%================================================================================~%MSG: bio_ik_msgs/MinDistanceGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The distance will be computed from the origin of the end effector link to the target point~%geometry_msgs/Point target~%~%# Minimum allowed distance~%# Forces the end effector link to be at least the specified distance away from the target~%float64 distance~%~%================================================================================~%MSG: bio_ik_msgs/MaxDistanceGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The distance will be computed from the origin of the end effector link to the target point~%geometry_msgs/Point target~%~%# Maximum allowed distance~%# Forces the end effector link to be at most the specified distance away from the target~%float64 distance~%~%================================================================================~%MSG: bio_ik_msgs/LineGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# A point on the line~%geometry_msgs/Point position~%~%# Direction of the line~%geometry_msgs/Vector3 direction~%~%================================================================================~%MSG: bio_ik_msgs/TouchGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# A point on the plane that shall be touched by the end effector link mesh~%geometry_msgs/Point position~%~%# The normal of the plane that shall be touched by the end effector link mesh~%geometry_msgs/Vector3 normal~%~%================================================================================~%MSG: bio_ik_msgs/AvoidJointLimitsGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%================================================================================~%MSG: bio_ik_msgs/CenterJointsGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%================================================================================~%MSG: bio_ik_msgs/MinimalDisplacementGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%================================================================================~%MSG: bio_ik_msgs/JointVariableGoal~%# The name of the joint variable~%string variable_name~%~%# The desired position value of the joint variable~%float64 variable_position~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to false, the goal will be primary goal (like eg. position goals)~%# If set to true, this goal will always have lower priority than the primary goals~%bool secondary~%~%================================================================================~%MSG: bio_ik_msgs/BalanceGoal~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The center of gravity will be pulled above this target point~%geometry_msgs/Point target~%~%# Gravity vector (optional)~%geometry_msgs/Vector3 axis~%~%================================================================================~%MSG: bio_ik_msgs/SideGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Vector3 axis~%~%geometry_msgs/Vector3 direction~%~%================================================================================~%MSG: bio_ik_msgs/DirectionGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Vector3 axis~%~%geometry_msgs/Vector3 direction~%~%================================================================================~%MSG: bio_ik_msgs/ConeGoal~%# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Point position~%float64 position_weight~%geometry_msgs/Vector3 axis~%geometry_msgs/Vector3 direction~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKRequest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_description))
     4 (cl:length (cl:slot-value msg 'group_name))
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fixed_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_state))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'look_at_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'min_distance_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_distance_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'touch_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avoid_joint_limits_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center_joints_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'minimal_displacement_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_variable_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'balance_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'side_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'direction_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cone_goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'IKRequest
    (cl:cons ':robot_description (robot_description msg))
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':approximate (approximate msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':fixed_joints (fixed_joints msg))
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':avoid_collisions (avoid_collisions msg))
    (cl:cons ':position_goals (position_goals msg))
    (cl:cons ':orientation_goals (orientation_goals msg))
    (cl:cons ':pose_goals (pose_goals msg))
    (cl:cons ':look_at_goals (look_at_goals msg))
    (cl:cons ':min_distance_goals (min_distance_goals msg))
    (cl:cons ':max_distance_goals (max_distance_goals msg))
    (cl:cons ':line_goals (line_goals msg))
    (cl:cons ':touch_goals (touch_goals msg))
    (cl:cons ':avoid_joint_limits_goals (avoid_joint_limits_goals msg))
    (cl:cons ':center_joints_goals (center_joints_goals msg))
    (cl:cons ':minimal_displacement_goals (minimal_displacement_goals msg))
    (cl:cons ':joint_variable_goals (joint_variable_goals msg))
    (cl:cons ':balance_goals (balance_goals msg))
    (cl:cons ':side_goals (side_goals msg))
    (cl:cons ':direction_goals (direction_goals msg))
    (cl:cons ':cone_goals (cone_goals msg))
))

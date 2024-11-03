; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude PoseGoal.msg.html

(cl:defclass <PoseGoal> (roslisp-msg-protocol:ros-message)
  ((link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (rotation_scale
    :reader rotation_scale
    :initarg :rotation_scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass PoseGoal (<PoseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<PoseGoal> is deprecated: use bio_ik_msgs-msg:PoseGoal instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <PoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:link_name-val is deprecated.  Use bio_ik_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <PoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:pose-val is deprecated.  Use bio_ik_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'rotation_scale-val :lambda-list '(m))
(cl:defmethod rotation_scale-val ((m <PoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:rotation_scale-val is deprecated.  Use bio_ik_msgs-msg:rotation_scale instead.")
  (rotation_scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGoal>) ostream)
  "Serializes a message object of type '<PoseGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotation_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGoal>) istream)
  "Deserializes a message object of type '<PoseGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotation_scale) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGoal>)))
  "Returns string type for a message object of type '<PoseGoal>"
  "bio_ik_msgs/PoseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGoal)))
  "Returns string type for a message object of type 'PoseGoal"
  "bio_ik_msgs/PoseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGoal>)))
  "Returns md5sum for a message object of type '<PoseGoal>"
  "ab4e8566ca0cc9b21ea1ca6eeaaa55d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGoal)))
  "Returns md5sum for a message object of type 'PoseGoal"
  "ab4e8566ca0cc9b21ea1ca6eeaaa55d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGoal>)))
  "Returns full string definition for message of type '<PoseGoal>"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal pose into which the end effector link shall be brought~%geometry_msgs/Pose pose~%~%# How rotational errors will be weighted in relation to positional errors~%float64 rotation_scale~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGoal)))
  "Returns full string definition for message of type 'PoseGoal"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal pose into which the end effector link shall be brought~%geometry_msgs/Pose pose~%~%# How rotational errors will be weighted in relation to positional errors~%float64 rotation_scale~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGoal
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':rotation_scale (rotation_scale msg))
))

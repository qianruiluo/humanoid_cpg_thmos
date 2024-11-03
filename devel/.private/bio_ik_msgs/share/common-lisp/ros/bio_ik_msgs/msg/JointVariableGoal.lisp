; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude JointVariableGoal.msg.html

(cl:defclass <JointVariableGoal> (roslisp-msg-protocol:ros-message)
  ((variable_name
    :reader variable_name
    :initarg :variable_name
    :type cl:string
    :initform "")
   (variable_position
    :reader variable_position
    :initarg :variable_position
    :type cl:float
    :initform 0.0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (secondary
    :reader secondary
    :initarg :secondary
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointVariableGoal (<JointVariableGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointVariableGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointVariableGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<JointVariableGoal> is deprecated: use bio_ik_msgs-msg:JointVariableGoal instead.")))

(cl:ensure-generic-function 'variable_name-val :lambda-list '(m))
(cl:defmethod variable_name-val ((m <JointVariableGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:variable_name-val is deprecated.  Use bio_ik_msgs-msg:variable_name instead.")
  (variable_name m))

(cl:ensure-generic-function 'variable_position-val :lambda-list '(m))
(cl:defmethod variable_position-val ((m <JointVariableGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:variable_position-val is deprecated.  Use bio_ik_msgs-msg:variable_position instead.")
  (variable_position m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <JointVariableGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'secondary-val :lambda-list '(m))
(cl:defmethod secondary-val ((m <JointVariableGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:secondary-val is deprecated.  Use bio_ik_msgs-msg:secondary instead.")
  (secondary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointVariableGoal>) ostream)
  "Serializes a message object of type '<JointVariableGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'variable_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'variable_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'variable_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'secondary) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointVariableGoal>) istream)
  "Deserializes a message object of type '<JointVariableGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'variable_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'variable_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variable_position) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'secondary) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointVariableGoal>)))
  "Returns string type for a message object of type '<JointVariableGoal>"
  "bio_ik_msgs/JointVariableGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointVariableGoal)))
  "Returns string type for a message object of type 'JointVariableGoal"
  "bio_ik_msgs/JointVariableGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointVariableGoal>)))
  "Returns md5sum for a message object of type '<JointVariableGoal>"
  "ee6ea02a53bfdacf34c1c1097ce15d71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointVariableGoal)))
  "Returns md5sum for a message object of type 'JointVariableGoal"
  "ee6ea02a53bfdacf34c1c1097ce15d71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointVariableGoal>)))
  "Returns full string definition for message of type '<JointVariableGoal>"
  (cl:format cl:nil "# The name of the joint variable~%string variable_name~%~%# The desired position value of the joint variable~%float64 variable_position~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to false, the goal will be primary goal (like eg. position goals)~%# If set to true, this goal will always have lower priority than the primary goals~%bool secondary~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointVariableGoal)))
  "Returns full string definition for message of type 'JointVariableGoal"
  (cl:format cl:nil "# The name of the joint variable~%string variable_name~%~%# The desired position value of the joint variable~%float64 variable_position~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to false, the goal will be primary goal (like eg. position goals)~%# If set to true, this goal will always have lower priority than the primary goals~%bool secondary~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointVariableGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'variable_name))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointVariableGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'JointVariableGoal
    (cl:cons ':variable_name (variable_name msg))
    (cl:cons ':variable_position (variable_position msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':secondary (secondary msg))
))

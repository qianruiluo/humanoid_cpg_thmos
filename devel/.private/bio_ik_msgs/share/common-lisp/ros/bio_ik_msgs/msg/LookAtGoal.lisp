; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude LookAtGoal.msg.html

(cl:defclass <LookAtGoal> (roslisp-msg-protocol:ros-message)
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
   (axis
    :reader axis
    :initarg :axis
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LookAtGoal (<LookAtGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookAtGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookAtGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<LookAtGoal> is deprecated: use bio_ik_msgs-msg:LookAtGoal instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:link_name-val is deprecated.  Use bio_ik_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:axis-val is deprecated.  Use bio_ik_msgs-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:target-val is deprecated.  Use bio_ik_msgs-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookAtGoal>) ostream)
  "Serializes a message object of type '<LookAtGoal>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'axis) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookAtGoal>) istream)
  "Deserializes a message object of type '<LookAtGoal>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'axis) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookAtGoal>)))
  "Returns string type for a message object of type '<LookAtGoal>"
  "bio_ik_msgs/LookAtGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAtGoal)))
  "Returns string type for a message object of type 'LookAtGoal"
  "bio_ik_msgs/LookAtGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookAtGoal>)))
  "Returns md5sum for a message object of type '<LookAtGoal>"
  "5353e403e5f3d793ed695b9d5f62178a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookAtGoal)))
  "Returns md5sum for a message object of type 'LookAtGoal"
  "5353e403e5f3d793ed695b9d5f62178a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookAtGoal>)))
  "Returns full string definition for message of type '<LookAtGoal>"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The axis in the link's local coordinate frame which shall point towards the target~%geometry_msgs/Vector3 axis~%~%# The target point which the axis shall point at~%geometry_msgs/Point target~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookAtGoal)))
  "Returns full string definition for message of type 'LookAtGoal"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The axis in the link's local coordinate frame which shall point towards the target~%geometry_msgs/Vector3 axis~%~%# The target point which the axis shall point at~%geometry_msgs/Point target~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookAtGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'axis))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookAtGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LookAtGoal
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':axis (axis msg))
    (cl:cons ':target (target msg))
))

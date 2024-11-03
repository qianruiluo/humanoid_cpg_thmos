; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude ConeGoal.msg.html

(cl:defclass <ConeGoal> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position_weight
    :reader position_weight
    :initarg :position_weight
    :type cl:float
    :initform 0.0)
   (axis
    :reader axis
    :initarg :axis
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConeGoal (<ConeGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<ConeGoal> is deprecated: use bio_ik_msgs-msg:ConeGoal instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:link_name-val is deprecated.  Use bio_ik_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:position-val is deprecated.  Use bio_ik_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'position_weight-val :lambda-list '(m))
(cl:defmethod position_weight-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:position_weight-val is deprecated.  Use bio_ik_msgs-msg:position_weight instead.")
  (position_weight m))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:axis-val is deprecated.  Use bio_ik_msgs-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:direction-val is deprecated.  Use bio_ik_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ConeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:angle-val is deprecated.  Use bio_ik_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeGoal>) ostream)
  "Serializes a message object of type '<ConeGoal>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'axis) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeGoal>) istream)
  "Deserializes a message object of type '<ConeGoal>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_weight) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'axis) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeGoal>)))
  "Returns string type for a message object of type '<ConeGoal>"
  "bio_ik_msgs/ConeGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeGoal)))
  "Returns string type for a message object of type 'ConeGoal"
  "bio_ik_msgs/ConeGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeGoal>)))
  "Returns md5sum for a message object of type '<ConeGoal>"
  "d627f3360ed70a33e1852aae499c94db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeGoal)))
  "Returns md5sum for a message object of type 'ConeGoal"
  "d627f3360ed70a33e1852aae499c94db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeGoal>)))
  "Returns full string definition for message of type '<ConeGoal>"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Point position~%float64 position_weight~%geometry_msgs/Vector3 axis~%geometry_msgs/Vector3 direction~%float64 angle~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeGoal)))
  "Returns full string definition for message of type 'ConeGoal"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%geometry_msgs/Point position~%float64 position_weight~%geometry_msgs/Vector3 axis~%geometry_msgs/Vector3 direction~%float64 angle~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'axis))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeGoal
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':position (position msg))
    (cl:cons ':position_weight (position_weight msg))
    (cl:cons ':axis (axis msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':angle (angle msg))
))

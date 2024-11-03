; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude BalanceGoal.msg.html

(cl:defclass <BalanceGoal> (roslisp-msg-protocol:ros-message)
  ((weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (axis
    :reader axis
    :initarg :axis
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass BalanceGoal (<BalanceGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BalanceGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BalanceGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<BalanceGoal> is deprecated: use bio_ik_msgs-msg:BalanceGoal instead.")))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <BalanceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <BalanceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:target-val is deprecated.  Use bio_ik_msgs-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <BalanceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:axis-val is deprecated.  Use bio_ik_msgs-msg:axis instead.")
  (axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BalanceGoal>) ostream)
  "Serializes a message object of type '<BalanceGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'axis) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BalanceGoal>) istream)
  "Deserializes a message object of type '<BalanceGoal>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'axis) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BalanceGoal>)))
  "Returns string type for a message object of type '<BalanceGoal>"
  "bio_ik_msgs/BalanceGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BalanceGoal)))
  "Returns string type for a message object of type 'BalanceGoal"
  "bio_ik_msgs/BalanceGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BalanceGoal>)))
  "Returns md5sum for a message object of type '<BalanceGoal>"
  "a41c41e95b53d1061e0af70f43304d5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BalanceGoal)))
  "Returns md5sum for a message object of type 'BalanceGoal"
  "a41c41e95b53d1061e0af70f43304d5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BalanceGoal>)))
  "Returns full string definition for message of type '<BalanceGoal>"
  (cl:format cl:nil "# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The center of gravity will be pulled above this target point~%geometry_msgs/Point target~%~%# Gravity vector (optional)~%geometry_msgs/Vector3 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BalanceGoal)))
  "Returns full string definition for message of type 'BalanceGoal"
  (cl:format cl:nil "# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The center of gravity will be pulled above this target point~%geometry_msgs/Point target~%~%# Gravity vector (optional)~%geometry_msgs/Vector3 axis~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BalanceGoal>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'axis))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BalanceGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'BalanceGoal
    (cl:cons ':weight (weight msg))
    (cl:cons ':target (target msg))
    (cl:cons ':axis (axis msg))
))

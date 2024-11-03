; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude AvoidJointLimitsGoal.msg.html

(cl:defclass <AvoidJointLimitsGoal> (roslisp-msg-protocol:ros-message)
  ((weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (primary
    :reader primary
    :initarg :primary
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AvoidJointLimitsGoal (<AvoidJointLimitsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvoidJointLimitsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvoidJointLimitsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<AvoidJointLimitsGoal> is deprecated: use bio_ik_msgs-msg:AvoidJointLimitsGoal instead.")))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <AvoidJointLimitsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'primary-val :lambda-list '(m))
(cl:defmethod primary-val ((m <AvoidJointLimitsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:primary-val is deprecated.  Use bio_ik_msgs-msg:primary instead.")
  (primary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvoidJointLimitsGoal>) ostream)
  "Serializes a message object of type '<AvoidJointLimitsGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'primary) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvoidJointLimitsGoal>) istream)
  "Deserializes a message object of type '<AvoidJointLimitsGoal>"
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
    (cl:setf (cl:slot-value msg 'primary) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvoidJointLimitsGoal>)))
  "Returns string type for a message object of type '<AvoidJointLimitsGoal>"
  "bio_ik_msgs/AvoidJointLimitsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvoidJointLimitsGoal)))
  "Returns string type for a message object of type 'AvoidJointLimitsGoal"
  "bio_ik_msgs/AvoidJointLimitsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvoidJointLimitsGoal>)))
  "Returns md5sum for a message object of type '<AvoidJointLimitsGoal>"
  "ccbc658a4d415bcd21aba09a68bf23dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvoidJointLimitsGoal)))
  "Returns md5sum for a message object of type 'AvoidJointLimitsGoal"
  "ccbc658a4d415bcd21aba09a68bf23dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvoidJointLimitsGoal>)))
  "Returns full string definition for message of type '<AvoidJointLimitsGoal>"
  (cl:format cl:nil "# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvoidJointLimitsGoal)))
  "Returns full string definition for message of type 'AvoidJointLimitsGoal"
  (cl:format cl:nil "# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# If set to true, the goal will be primary goal (like eg. position goals)~%# If set to false, this goal will always have lower priority than the primary goals~%bool primary~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvoidJointLimitsGoal>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvoidJointLimitsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'AvoidJointLimitsGoal
    (cl:cons ':weight (weight msg))
    (cl:cons ':primary (primary msg))
))

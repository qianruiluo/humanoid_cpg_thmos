; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude PositionGoal.msg.html

(cl:defclass <PositionGoal> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass PositionGoal (<PositionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<PositionGoal> is deprecated: use bio_ik_msgs-msg:PositionGoal instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <PositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:link_name-val is deprecated.  Use bio_ik_msgs-msg:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <PositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:weight-val is deprecated.  Use bio_ik_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:position-val is deprecated.  Use bio_ik_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionGoal>) ostream)
  "Serializes a message object of type '<PositionGoal>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionGoal>) istream)
  "Deserializes a message object of type '<PositionGoal>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionGoal>)))
  "Returns string type for a message object of type '<PositionGoal>"
  "bio_ik_msgs/PositionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionGoal)))
  "Returns string type for a message object of type 'PositionGoal"
  "bio_ik_msgs/PositionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionGoal>)))
  "Returns md5sum for a message object of type '<PositionGoal>"
  "f7ba9cf3694b741fc17857a4a52dcde9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionGoal)))
  "Returns md5sum for a message object of type 'PositionGoal"
  "f7ba9cf3694b741fc17857a4a52dcde9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionGoal>)))
  "Returns full string definition for message of type '<PositionGoal>"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal position into which the end effector link shall be brought~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionGoal)))
  "Returns full string definition for message of type 'PositionGoal"
  (cl:format cl:nil "# The name of this goal's end effector link~%string link_name~%~%# Weight of the current goal~%# Goals with a higher weight will have a stronger influence than goals with a smaller weight~%float64 weight~%~%# The goal position into which the end effector link shall be brought~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionGoal
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':position (position msg))
))

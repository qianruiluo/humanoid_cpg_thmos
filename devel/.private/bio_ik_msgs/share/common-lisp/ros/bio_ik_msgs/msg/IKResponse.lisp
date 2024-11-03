; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-msg)


;//! \htmlinclude IKResponse.msg.html

(cl:defclass <IKResponse> (roslisp-msg-protocol:ros-message)
  ((solution
    :reader solution
    :initarg :solution
    :type moveit_msgs-msg:RobotState
    :initform (cl:make-instance 'moveit_msgs-msg:RobotState))
   (error_code
    :reader error_code
    :initarg :error_code
    :type moveit_msgs-msg:MoveItErrorCodes
    :initform (cl:make-instance 'moveit_msgs-msg:MoveItErrorCodes))
   (solution_fitness
    :reader solution_fitness
    :initarg :solution_fitness
    :type cl:float
    :initform 0.0))
)

(cl:defclass IKResponse (<IKResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-msg:<IKResponse> is deprecated: use bio_ik_msgs-msg:IKResponse instead.")))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <IKResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:solution-val is deprecated.  Use bio_ik_msgs-msg:solution instead.")
  (solution m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <IKResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:error_code-val is deprecated.  Use bio_ik_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'solution_fitness-val :lambda-list '(m))
(cl:defmethod solution_fitness-val ((m <IKResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-msg:solution_fitness-val is deprecated.  Use bio_ik_msgs-msg:solution_fitness instead.")
  (solution_fitness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKResponse>) ostream)
  "Serializes a message object of type '<IKResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'solution) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'solution_fitness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKResponse>) istream)
  "Deserializes a message object of type '<IKResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'solution) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'solution_fitness) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKResponse>)))
  "Returns string type for a message object of type '<IKResponse>"
  "bio_ik_msgs/IKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKResponse)))
  "Returns string type for a message object of type 'IKResponse"
  "bio_ik_msgs/IKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKResponse>)))
  "Returns md5sum for a message object of type '<IKResponse>"
  "ad2ae55f8539ae5916416131236a8e44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKResponse)))
  "Returns md5sum for a message object of type 'IKResponse"
  "ad2ae55f8539ae5916416131236a8e44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKResponse>)))
  "Returns full string definition for message of type '<IKResponse>"
  (cl:format cl:nil "moveit_msgs/RobotState solution
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKResponse)))
  "Returns full string definition for message of type 'IKResponse"
  (cl:format cl:nil "moveit_msgs/RobotState solution
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'solution))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'IKResponse
    (cl:cons ':solution (solution msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':solution_fitness (solution_fitness msg))
))
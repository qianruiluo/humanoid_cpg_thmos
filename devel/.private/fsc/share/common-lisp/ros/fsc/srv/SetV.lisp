; Auto-generated. Do not edit!


(cl:in-package fsc-srv)


;//! \htmlinclude SetV-request.msg.html

(cl:defclass <SetV-request> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vr
    :reader vr
    :initarg :vr
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetV-request (<SetV-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetV-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetV-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsc-srv:<SetV-request> is deprecated: use fsc-srv:SetV-request instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <SetV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-srv:vx-val is deprecated.  Use fsc-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <SetV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-srv:vy-val is deprecated.  Use fsc-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vr-val :lambda-list '(m))
(cl:defmethod vr-val ((m <SetV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-srv:vr-val is deprecated.  Use fsc-srv:vr instead.")
  (vr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetV-request>) ostream)
  "Serializes a message object of type '<SetV-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetV-request>) istream)
  "Deserializes a message object of type '<SetV-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vr) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetV-request>)))
  "Returns string type for a service object of type '<SetV-request>"
  "fsc/SetVRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetV-request)))
  "Returns string type for a service object of type 'SetV-request"
  "fsc/SetVRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetV-request>)))
  "Returns md5sum for a message object of type '<SetV-request>"
  "8362ce87c5ed325fb041904db410063b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetV-request)))
  "Returns md5sum for a message object of type 'SetV-request"
  "8362ce87c5ed325fb041904db410063b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetV-request>)))
  "Returns full string definition for message of type '<SetV-request>"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 vr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetV-request)))
  "Returns full string definition for message of type 'SetV-request"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 vr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetV-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetV-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetV-request
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vr (vr msg))
))
;//! \htmlinclude SetV-response.msg.html

(cl:defclass <SetV-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetV-response (<SetV-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetV-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetV-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsc-srv:<SetV-response> is deprecated: use fsc-srv:SetV-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetV-response>) ostream)
  "Serializes a message object of type '<SetV-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetV-response>) istream)
  "Deserializes a message object of type '<SetV-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetV-response>)))
  "Returns string type for a service object of type '<SetV-response>"
  "fsc/SetVResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetV-response)))
  "Returns string type for a service object of type 'SetV-response"
  "fsc/SetVResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetV-response>)))
  "Returns md5sum for a message object of type '<SetV-response>"
  "8362ce87c5ed325fb041904db410063b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetV-response)))
  "Returns md5sum for a message object of type 'SetV-response"
  "8362ce87c5ed325fb041904db410063b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetV-response>)))
  "Returns full string definition for message of type '<SetV-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetV-response)))
  "Returns full string definition for message of type 'SetV-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetV-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetV-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetV-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetV)))
  'SetV-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetV)))
  'SetV-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetV)))
  "Returns string type for a service object of type '<SetV>"
  "fsc/SetV")
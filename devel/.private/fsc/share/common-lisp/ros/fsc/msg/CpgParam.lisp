; Auto-generated. Do not edit!


(cl:in-package fsc-msg)


;//! \htmlinclude CpgParam.msg.html

(cl:defclass <CpgParam> (roslisp-msg-protocol:ros-message)
  ((ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (ar
    :reader ar
    :initarg :ar
    :type cl:float
    :initform 0.0)
   (T
    :reader T
    :initarg :T
    :type cl:float
    :initform 0.0))
)

(cl:defclass CpgParam (<CpgParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CpgParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CpgParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsc-msg:<CpgParam> is deprecated: use fsc-msg:CpgParam instead.")))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <CpgParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-msg:ax-val is deprecated.  Use fsc-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <CpgParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-msg:ay-val is deprecated.  Use fsc-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'ar-val :lambda-list '(m))
(cl:defmethod ar-val ((m <CpgParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-msg:ar-val is deprecated.  Use fsc-msg:ar instead.")
  (ar m))

(cl:ensure-generic-function 'T-val :lambda-list '(m))
(cl:defmethod T-val ((m <CpgParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsc-msg:T-val is deprecated.  Use fsc-msg:T instead.")
  (T m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CpgParam>) ostream)
  "Serializes a message object of type '<CpgParam>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'T))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CpgParam>) istream)
  "Deserializes a message object of type '<CpgParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ar) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'T) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CpgParam>)))
  "Returns string type for a message object of type '<CpgParam>"
  "fsc/CpgParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CpgParam)))
  "Returns string type for a message object of type 'CpgParam"
  "fsc/CpgParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CpgParam>)))
  "Returns md5sum for a message object of type '<CpgParam>"
  "f9655a65c5483d537755b7beecffd1fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CpgParam)))
  "Returns md5sum for a message object of type 'CpgParam"
  "f9655a65c5483d537755b7beecffd1fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CpgParam>)))
  "Returns full string definition for message of type '<CpgParam>"
  (cl:format cl:nil "float64 ax~%float64 ay~%float64 ar~%float64 T~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CpgParam)))
  "Returns full string definition for message of type 'CpgParam"
  (cl:format cl:nil "float64 ax~%float64 ay~%float64 ar~%float64 T~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CpgParam>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CpgParam>))
  "Converts a ROS message object to a list"
  (cl:list 'CpgParam
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':ar (ar msg))
    (cl:cons ':T (T msg))
))

; Auto-generated. Do not edit!


(cl:in-package FootstepControl-msg)


;//! \htmlinclude MyState.msg.html

(cl:defclass <MyState> (roslisp-msg-protocol:ros-message)
  ((cx
    :reader cx
    :initarg :cx
    :type cl:float
    :initform 0.0)
   (dcx
    :reader dcx
    :initarg :dcx
    :type cl:float
    :initform 0.0)
   (cy
    :reader cy
    :initarg :cy
    :type cl:float
    :initform 0.0)
   (dcy
    :reader dcy
    :initarg :dcy
    :type cl:float
    :initform 0.0)
   (is_left_support
    :reader is_left_support
    :initarg :is_left_support
    :type cl:fixnum
    :initform 0)
   (is_right_support
    :reader is_right_support
    :initarg :is_right_support
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MyState (<MyState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name FootstepControl-msg:<MyState> is deprecated: use FootstepControl-msg:MyState instead.")))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <MyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader FootstepControl-msg:cx-val is deprecated.  Use FootstepControl-msg:cx instead.")
  (cx m))

(cl:ensure-generic-function 'dcx-val :lambda-list '(m))
(cl:defmethod dcx-val ((m <MyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader FootstepControl-msg:dcx-val is deprecated.  Use FootstepControl-msg:dcx instead.")
  (dcx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <MyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader FootstepControl-msg:cy-val is deprecated.  Use FootstepControl-msg:cy instead.")
  (cy m))

(cl:ensure-generic-function 'dcy-val :lambda-list '(m))
(cl:defmethod dcy-val ((m <MyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader FootstepControl-msg:dcy-val is deprecated.  Use FootstepControl-msg:dcy instead.")
  (dcy m))

(cl:ensure-generic-function 'is_left_support-val :lambda-list '(m))
(cl:defmethod is_left_support-val ((m <MyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader FootstepControl-msg:is_left_support-val is deprecated.  Use FootstepControl-msg:is_left_support instead.")
  (is_left_support m))

(cl:ensure-generic-function 'is_right_support-val :lambda-list '(m))
(cl:defmethod is_right_support-val ((m <MyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader FootstepControl-msg:is_right_support-val is deprecated.  Use FootstepControl-msg:is_right_support instead.")
  (is_right_support m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyState>) ostream)
  "Serializes a message object of type '<MyState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dcx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dcy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_left_support)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_right_support)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyState>) istream)
  "Deserializes a message object of type '<MyState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dcx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dcy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_left_support)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_right_support)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyState>)))
  "Returns string type for a message object of type '<MyState>"
  "FootstepControl/MyState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyState)))
  "Returns string type for a message object of type 'MyState"
  "FootstepControl/MyState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyState>)))
  "Returns md5sum for a message object of type '<MyState>"
  "4493873f0a72e816f885a561816cfc96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyState)))
  "Returns md5sum for a message object of type 'MyState"
  "4493873f0a72e816f885a561816cfc96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyState>)))
  "Returns full string definition for message of type '<MyState>"
  (cl:format cl:nil "float64 cx~%float64 dcx~%float64 cy~%float64 dcy~%uint8 is_left_support~%uint8 is_right_support~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyState)))
  "Returns full string definition for message of type 'MyState"
  (cl:format cl:nil "float64 cx~%float64 dcx~%float64 cy~%float64 dcy~%uint8 is_left_support~%uint8 is_right_support~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyState>))
  (cl:+ 0
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyState>))
  "Converts a ROS message object to a list"
  (cl:list 'MyState
    (cl:cons ':cx (cx msg))
    (cl:cons ':dcx (dcx msg))
    (cl:cons ':cy (cy msg))
    (cl:cons ':dcy (dcy msg))
    (cl:cons ':is_left_support (is_left_support msg))
    (cl:cons ':is_right_support (is_right_support msg))
))

; Auto-generated. Do not edit!


(cl:in-package bio_ik_msgs-srv)


;//! \htmlinclude GetIK-request.msg.html

(cl:defclass <GetIK-request> (roslisp-msg-protocol:ros-message)
  ((ik_request
    :reader ik_request
    :initarg :ik_request
    :type bio_ik_msgs-msg:IKRequest
    :initform (cl:make-instance 'bio_ik_msgs-msg:IKRequest)))
)

(cl:defclass GetIK-request (<GetIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-srv:<GetIK-request> is deprecated: use bio_ik_msgs-srv:GetIK-request instead.")))

(cl:ensure-generic-function 'ik_request-val :lambda-list '(m))
(cl:defmethod ik_request-val ((m <GetIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-srv:ik_request-val is deprecated.  Use bio_ik_msgs-srv:ik_request instead.")
  (ik_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIK-request>) ostream)
  "Serializes a message object of type '<GetIK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIK-request>) istream)
  "Deserializes a message object of type '<GetIK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIK-request>)))
  "Returns string type for a service object of type '<GetIK-request>"
  "bio_ik_msgs/GetIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK-request)))
  "Returns string type for a service object of type 'GetIK-request"
  "bio_ik_msgs/GetIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIK-request>)))
  "Returns md5sum for a message object of type '<GetIK-request>"
  "3422cd279819e8c14de8099ea8669f52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIK-request)))
  "Returns md5sum for a message object of type 'GetIK-request"
  "3422cd279819e8c14de8099ea8669f52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIK-request>)))
  "Returns full string definition for message of type '<GetIK-request>"
  (cl:format cl:nil "IKRequest ik_request
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIK-request)))
  "Returns full string definition for message of type 'GetIK-request"
  (cl:format cl:nil "IKRequest ik_request
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIK-request
    (cl:cons ':ik_request (ik_request msg))
))
;//! \htmlinclude GetIK-response.msg.html

(cl:defclass <GetIK-response> (roslisp-msg-protocol:ros-message)
  ((ik_response
    :reader ik_response
    :initarg :ik_response
    :type bio_ik_msgs-msg:IKResponse
    :initform (cl:make-instance 'bio_ik_msgs-msg:IKResponse)))
)

(cl:defclass GetIK-response (<GetIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bio_ik_msgs-srv:<GetIK-response> is deprecated: use bio_ik_msgs-srv:GetIK-response instead.")))

(cl:ensure-generic-function 'ik_response-val :lambda-list '(m))
(cl:defmethod ik_response-val ((m <GetIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bio_ik_msgs-srv:ik_response-val is deprecated.  Use bio_ik_msgs-srv:ik_response instead.")
  (ik_response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIK-response>) ostream)
  "Serializes a message object of type '<GetIK-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIK-response>) istream)
  "Deserializes a message object of type '<GetIK-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIK-response>)))
  "Returns string type for a service object of type '<GetIK-response>"
  "bio_ik_msgs/GetIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK-response)))
  "Returns string type for a service object of type 'GetIK-response"
  "bio_ik_msgs/GetIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIK-response>)))
  "Returns md5sum for a message object of type '<GetIK-response>"
  "3422cd279819e8c14de8099ea8669f52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIK-response)))
  "Returns md5sum for a message object of type 'GetIK-response"
  "3422cd279819e8c14de8099ea8669f52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIK-response>)))
  "Returns full string definition for message of type '<GetIK-response>"
  (cl:format cl:nil "IKResponse ik_response
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIK-response)))
  "Returns full string definition for message of type 'GetIK-response"
  (cl:format cl:nil "IKResponse ik_response
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIK-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIK-response
    (cl:cons ':ik_response (ik_response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIK)))
  'GetIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIK)))
  'GetIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIK)))
  "Returns string type for a service object of type '<GetIK>"
  "bio_ik_msgs/GetIK")
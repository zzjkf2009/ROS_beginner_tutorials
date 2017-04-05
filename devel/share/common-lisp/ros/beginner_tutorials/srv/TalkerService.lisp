; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude TalkerService-request.msg.html

(cl:defclass <TalkerService-request> (roslisp-msg-protocol:ros-message)
  ((request_string
    :reader request_string
    :initarg :request_string
    :type cl:string
    :initform ""))
)

(cl:defclass TalkerService-request (<TalkerService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TalkerService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TalkerService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<TalkerService-request> is deprecated: use beginner_tutorials-srv:TalkerService-request instead.")))

(cl:ensure-generic-function 'request_string-val :lambda-list '(m))
(cl:defmethod request_string-val ((m <TalkerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:request_string-val is deprecated.  Use beginner_tutorials-srv:request_string instead.")
  (request_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TalkerService-request>) ostream)
  "Serializes a message object of type '<TalkerService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TalkerService-request>) istream)
  "Deserializes a message object of type '<TalkerService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TalkerService-request>)))
  "Returns string type for a service object of type '<TalkerService-request>"
  "beginner_tutorials/TalkerServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkerService-request)))
  "Returns string type for a service object of type 'TalkerService-request"
  "beginner_tutorials/TalkerServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TalkerService-request>)))
  "Returns md5sum for a message object of type '<TalkerService-request>"
  "f2d7091d89983643dd47bb8ba4a385e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TalkerService-request)))
  "Returns md5sum for a message object of type 'TalkerService-request"
  "f2d7091d89983643dd47bb8ba4a385e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TalkerService-request>)))
  "Returns full string definition for message of type '<TalkerService-request>"
  (cl:format cl:nil "string request_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TalkerService-request)))
  "Returns full string definition for message of type 'TalkerService-request"
  (cl:format cl:nil "string request_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TalkerService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TalkerService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TalkerService-request
    (cl:cons ':request_string (request_string msg))
))
;//! \htmlinclude TalkerService-response.msg.html

(cl:defclass <TalkerService-response> (roslisp-msg-protocol:ros-message)
  ((response_string
    :reader response_string
    :initarg :response_string
    :type cl:string
    :initform ""))
)

(cl:defclass TalkerService-response (<TalkerService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TalkerService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TalkerService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<TalkerService-response> is deprecated: use beginner_tutorials-srv:TalkerService-response instead.")))

(cl:ensure-generic-function 'response_string-val :lambda-list '(m))
(cl:defmethod response_string-val ((m <TalkerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:response_string-val is deprecated.  Use beginner_tutorials-srv:response_string instead.")
  (response_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TalkerService-response>) ostream)
  "Serializes a message object of type '<TalkerService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TalkerService-response>) istream)
  "Deserializes a message object of type '<TalkerService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TalkerService-response>)))
  "Returns string type for a service object of type '<TalkerService-response>"
  "beginner_tutorials/TalkerServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkerService-response)))
  "Returns string type for a service object of type 'TalkerService-response"
  "beginner_tutorials/TalkerServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TalkerService-response>)))
  "Returns md5sum for a message object of type '<TalkerService-response>"
  "f2d7091d89983643dd47bb8ba4a385e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TalkerService-response)))
  "Returns md5sum for a message object of type 'TalkerService-response"
  "f2d7091d89983643dd47bb8ba4a385e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TalkerService-response>)))
  "Returns full string definition for message of type '<TalkerService-response>"
  (cl:format cl:nil "string response_string~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TalkerService-response)))
  "Returns full string definition for message of type 'TalkerService-response"
  (cl:format cl:nil "string response_string~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TalkerService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TalkerService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TalkerService-response
    (cl:cons ':response_string (response_string msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TalkerService)))
  'TalkerService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TalkerService)))
  'TalkerService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkerService)))
  "Returns string type for a service object of type '<TalkerService>"
  "beginner_tutorials/TalkerService")
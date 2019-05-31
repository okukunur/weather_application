; Auto-generated. Do not edit!


(cl:in-package lab1_pkg-srv)


;//! \htmlinclude GetTemp-request.msg.html

(cl:defclass <GetTemp-request> (roslisp-msg-protocol:ros-message)
  ((zipcode
    :reader zipcode
    :initarg :zipcode
    :type cl:string
    :initform ""))
)

(cl:defclass GetTemp-request (<GetTemp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTemp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTemp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab1_pkg-srv:<GetTemp-request> is deprecated: use lab1_pkg-srv:GetTemp-request instead.")))

(cl:ensure-generic-function 'zipcode-val :lambda-list '(m))
(cl:defmethod zipcode-val ((m <GetTemp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1_pkg-srv:zipcode-val is deprecated.  Use lab1_pkg-srv:zipcode instead.")
  (zipcode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTemp-request>) ostream)
  "Serializes a message object of type '<GetTemp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zipcode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zipcode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTemp-request>) istream)
  "Deserializes a message object of type '<GetTemp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zipcode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zipcode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTemp-request>)))
  "Returns string type for a service object of type '<GetTemp-request>"
  "lab1_pkg/GetTempRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemp-request)))
  "Returns string type for a service object of type 'GetTemp-request"
  "lab1_pkg/GetTempRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTemp-request>)))
  "Returns md5sum for a message object of type '<GetTemp-request>"
  "d01063b0c7298c924d7b67c818285cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTemp-request)))
  "Returns md5sum for a message object of type 'GetTemp-request"
  "d01063b0c7298c924d7b67c818285cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTemp-request>)))
  "Returns full string definition for message of type '<GetTemp-request>"
  (cl:format cl:nil "string zipcode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTemp-request)))
  "Returns full string definition for message of type 'GetTemp-request"
  (cl:format cl:nil "string zipcode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTemp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'zipcode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTemp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTemp-request
    (cl:cons ':zipcode (zipcode msg))
))
;//! \htmlinclude GetTemp-response.msg.html

(cl:defclass <GetTemp-response> (roslisp-msg-protocol:ros-message)
  ((city
    :reader city
    :initarg :city
    :type cl:string
    :initform "")
   (temp
    :reader temp
    :initarg :temp
    :type cl:string
    :initform ""))
)

(cl:defclass GetTemp-response (<GetTemp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTemp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTemp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab1_pkg-srv:<GetTemp-response> is deprecated: use lab1_pkg-srv:GetTemp-response instead.")))

(cl:ensure-generic-function 'city-val :lambda-list '(m))
(cl:defmethod city-val ((m <GetTemp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1_pkg-srv:city-val is deprecated.  Use lab1_pkg-srv:city instead.")
  (city m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <GetTemp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1_pkg-srv:temp-val is deprecated.  Use lab1_pkg-srv:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTemp-response>) ostream)
  "Serializes a message object of type '<GetTemp-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'city))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'city))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'temp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTemp-response>) istream)
  "Deserializes a message object of type '<GetTemp-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'city) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'city) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'temp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTemp-response>)))
  "Returns string type for a service object of type '<GetTemp-response>"
  "lab1_pkg/GetTempResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemp-response)))
  "Returns string type for a service object of type 'GetTemp-response"
  "lab1_pkg/GetTempResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTemp-response>)))
  "Returns md5sum for a message object of type '<GetTemp-response>"
  "d01063b0c7298c924d7b67c818285cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTemp-response)))
  "Returns md5sum for a message object of type 'GetTemp-response"
  "d01063b0c7298c924d7b67c818285cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTemp-response>)))
  "Returns full string definition for message of type '<GetTemp-response>"
  (cl:format cl:nil "string city~%string temp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTemp-response)))
  "Returns full string definition for message of type 'GetTemp-response"
  (cl:format cl:nil "string city~%string temp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTemp-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'city))
     4 (cl:length (cl:slot-value msg 'temp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTemp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTemp-response
    (cl:cons ':city (city msg))
    (cl:cons ':temp (temp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTemp)))
  'GetTemp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTemp)))
  'GetTemp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTemp)))
  "Returns string type for a service object of type '<GetTemp>"
  "lab1_pkg/GetTemp")
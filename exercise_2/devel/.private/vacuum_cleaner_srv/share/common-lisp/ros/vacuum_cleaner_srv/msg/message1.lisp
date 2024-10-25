; Auto-generated. Do not edit!


(cl:in-package vacuum_cleaner_srv-msg)


;//! \htmlinclude message1.msg.html

(cl:defclass <message1> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (roomName
    :reader roomName
    :initarg :roomName
    :type cl:string
    :initform "")
   (batteryStatus
    :reader batteryStatus
    :initarg :batteryStatus
    :type cl:float
    :initform 0.0))
)

(cl:defclass message1 (<message1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <message1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'message1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vacuum_cleaner_srv-msg:<message1> is deprecated: use vacuum_cleaner_srv-msg:message1 instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-msg:ID-val is deprecated.  Use vacuum_cleaner_srv-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'roomName-val :lambda-list '(m))
(cl:defmethod roomName-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-msg:roomName-val is deprecated.  Use vacuum_cleaner_srv-msg:roomName instead.")
  (roomName m))

(cl:ensure-generic-function 'batteryStatus-val :lambda-list '(m))
(cl:defmethod batteryStatus-val ((m <message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-msg:batteryStatus-val is deprecated.  Use vacuum_cleaner_srv-msg:batteryStatus instead.")
  (batteryStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <message1>) ostream)
  "Serializes a message object of type '<message1>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roomName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roomName))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batteryStatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <message1>) istream)
  "Deserializes a message object of type '<message1>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roomName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roomName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batteryStatus) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<message1>)))
  "Returns string type for a message object of type '<message1>"
  "vacuum_cleaner_srv/message1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'message1)))
  "Returns string type for a message object of type 'message1"
  "vacuum_cleaner_srv/message1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<message1>)))
  "Returns md5sum for a message object of type '<message1>"
  "acd1e05bd975455a68392bd190d3066a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'message1)))
  "Returns md5sum for a message object of type 'message1"
  "acd1e05bd975455a68392bd190d3066a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<message1>)))
  "Returns full string definition for message of type '<message1>"
  (cl:format cl:nil "int32 ID~%string roomName~%float32 batteryStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'message1)))
  "Returns full string definition for message of type 'message1"
  (cl:format cl:nil "int32 ID~%string roomName~%float32 batteryStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <message1>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'roomName))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <message1>))
  "Converts a ROS message object to a list"
  (cl:list 'message1
    (cl:cons ':ID (ID msg))
    (cl:cons ':roomName (roomName msg))
    (cl:cons ':batteryStatus (batteryStatus msg))
))

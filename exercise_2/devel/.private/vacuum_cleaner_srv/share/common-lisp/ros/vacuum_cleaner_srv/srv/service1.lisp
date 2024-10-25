; Auto-generated. Do not edit!


(cl:in-package vacuum_cleaner_srv-srv)


;//! \htmlinclude service1-request.msg.html

(cl:defclass <service1-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ID_station
    :reader ID_station
    :initarg :ID_station
    :type cl:integer
    :initform 0))
)

(cl:defclass service1-request (<service1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vacuum_cleaner_srv-srv:<service1-request> is deprecated: use vacuum_cleaner_srv-srv:service1-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-srv:header-val is deprecated.  Use vacuum_cleaner_srv-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'ID_station-val :lambda-list '(m))
(cl:defmethod ID_station-val ((m <service1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-srv:ID_station-val is deprecated.  Use vacuum_cleaner_srv-srv:ID_station instead.")
  (ID_station m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service1-request>) ostream)
  "Serializes a message object of type '<service1-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ID_station)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service1-request>) istream)
  "Deserializes a message object of type '<service1-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_station) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service1-request>)))
  "Returns string type for a service object of type '<service1-request>"
  "vacuum_cleaner_srv/service1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service1-request)))
  "Returns string type for a service object of type 'service1-request"
  "vacuum_cleaner_srv/service1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service1-request>)))
  "Returns md5sum for a message object of type '<service1-request>"
  "3d13c7504dc3516a51f9bb7e149fa7be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service1-request)))
  "Returns md5sum for a message object of type 'service1-request"
  "3d13c7504dc3516a51f9bb7e149fa7be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service1-request>)))
  "Returns full string definition for message of type '<service1-request>"
  (cl:format cl:nil "std_msgs/Header header~%int32 ID_station~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service1-request)))
  "Returns full string definition for message of type 'service1-request"
  (cl:format cl:nil "std_msgs/Header header~%int32 ID_station~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service1-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service1-request
    (cl:cons ':header (header msg))
    (cl:cons ':ID_station (ID_station msg))
))
;//! \htmlinclude service1-response.msg.html

(cl:defclass <service1-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info_robot
    :reader info_robot
    :initarg :info_robot
    :type vacuum_cleaner_srv-msg:message1
    :initform (cl:make-instance 'vacuum_cleaner_srv-msg:message1)))
)

(cl:defclass service1-response (<service1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vacuum_cleaner_srv-srv:<service1-response> is deprecated: use vacuum_cleaner_srv-srv:service1-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <service1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-srv:header-val is deprecated.  Use vacuum_cleaner_srv-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'info_robot-val :lambda-list '(m))
(cl:defmethod info_robot-val ((m <service1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_cleaner_srv-srv:info_robot-val is deprecated.  Use vacuum_cleaner_srv-srv:info_robot instead.")
  (info_robot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service1-response>) ostream)
  "Serializes a message object of type '<service1-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info_robot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service1-response>) istream)
  "Deserializes a message object of type '<service1-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info_robot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service1-response>)))
  "Returns string type for a service object of type '<service1-response>"
  "vacuum_cleaner_srv/service1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service1-response)))
  "Returns string type for a service object of type 'service1-response"
  "vacuum_cleaner_srv/service1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service1-response>)))
  "Returns md5sum for a message object of type '<service1-response>"
  "3d13c7504dc3516a51f9bb7e149fa7be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service1-response)))
  "Returns md5sum for a message object of type 'service1-response"
  "3d13c7504dc3516a51f9bb7e149fa7be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service1-response>)))
  "Returns full string definition for message of type '<service1-response>"
  (cl:format cl:nil "std_msgs/Header header~%message1 info_robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vacuum_cleaner_srv/message1~%int32 ID~%string roomName~%float32 batteryStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service1-response)))
  "Returns full string definition for message of type 'service1-response"
  (cl:format cl:nil "std_msgs/Header header~%message1 info_robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vacuum_cleaner_srv/message1~%int32 ID~%string roomName~%float32 batteryStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service1-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info_robot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service1-response
    (cl:cons ':header (header msg))
    (cl:cons ':info_robot (info_robot msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service1)))
  'service1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service1)))
  'service1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service1)))
  "Returns string type for a service object of type '<service1>"
  "vacuum_cleaner_srv/service1")
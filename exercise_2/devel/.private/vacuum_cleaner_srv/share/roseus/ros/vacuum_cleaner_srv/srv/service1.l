;; Auto-generated. Do not edit!


(when (boundp 'vacuum_cleaner_srv::service1)
  (if (not (find-package "VACUUM_CLEANER_SRV"))
    (make-package "VACUUM_CLEANER_SRV"))
  (shadow 'service1 (find-package "VACUUM_CLEANER_SRV")))
(unless (find-package "VACUUM_CLEANER_SRV::SERVICE1")
  (make-package "VACUUM_CLEANER_SRV::SERVICE1"))
(unless (find-package "VACUUM_CLEANER_SRV::SERVICE1REQUEST")
  (make-package "VACUUM_CLEANER_SRV::SERVICE1REQUEST"))
(unless (find-package "VACUUM_CLEANER_SRV::SERVICE1RESPONSE")
  (make-package "VACUUM_CLEANER_SRV::SERVICE1RESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vacuum_cleaner_srv::service1Request
  :super ros::object
  :slots (_header _ID_station ))

(defmethod vacuum_cleaner_srv::service1Request
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID_station __ID_station) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID_station (round __ID_station))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ID_station
   (&optional __ID_station)
   (if __ID_station (setq _ID_station __ID_station)) _ID_station)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _ID_station
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _ID_station
       (write-long _ID_station s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _ID_station
     (setq _ID_station (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vacuum_cleaner_srv::service1Response
  :super ros::object
  :slots (_header _info_robot ))

(defmethod vacuum_cleaner_srv::service1Response
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info_robot __info_robot) (instance vacuum_cleaner_srv::message1 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info_robot __info_robot)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info_robot
   (&rest __info_robot)
   (if (keywordp (car __info_robot))
       (send* _info_robot __info_robot)
     (progn
       (if __info_robot (setq _info_robot (car __info_robot)))
       _info_robot)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vacuum_cleaner_srv/message1 _info_robot
    (send _info_robot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vacuum_cleaner_srv/message1 _info_robot
       (send _info_robot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vacuum_cleaner_srv/message1 _info_robot
     (send _info_robot :deserialize buf ptr-) (incf ptr- (send _info_robot :serialization-length))
   ;;
   self)
  )

(defclass vacuum_cleaner_srv::service1
  :super ros::object
  :slots ())

(setf (get vacuum_cleaner_srv::service1 :md5sum-) "3d13c7504dc3516a51f9bb7e149fa7be")
(setf (get vacuum_cleaner_srv::service1 :datatype-) "vacuum_cleaner_srv/service1")
(setf (get vacuum_cleaner_srv::service1 :request) vacuum_cleaner_srv::service1Request)
(setf (get vacuum_cleaner_srv::service1 :response) vacuum_cleaner_srv::service1Response)

(defmethod vacuum_cleaner_srv::service1Request
  (:response () (instance vacuum_cleaner_srv::service1Response :init)))

(setf (get vacuum_cleaner_srv::service1Request :md5sum-) "3d13c7504dc3516a51f9bb7e149fa7be")
(setf (get vacuum_cleaner_srv::service1Request :datatype-) "vacuum_cleaner_srv/service1Request")
(setf (get vacuum_cleaner_srv::service1Request :definition-)
      "std_msgs/Header header
int32 ID_station

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
std_msgs/Header header
message1 info_robot

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vacuum_cleaner_srv/message1
int32 ID
string roomName
")

(setf (get vacuum_cleaner_srv::service1Response :md5sum-) "3d13c7504dc3516a51f9bb7e149fa7be")
(setf (get vacuum_cleaner_srv::service1Response :datatype-) "vacuum_cleaner_srv/service1Response")
(setf (get vacuum_cleaner_srv::service1Response :definition-)
      "std_msgs/Header header
int32 ID_station

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
std_msgs/Header header
message1 info_robot

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vacuum_cleaner_srv/message1
int32 ID
string roomName
")



(provide :vacuum_cleaner_srv/service1 "3d13c7504dc3516a51f9bb7e149fa7be")



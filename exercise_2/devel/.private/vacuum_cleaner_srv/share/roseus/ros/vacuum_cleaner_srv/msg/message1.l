;; Auto-generated. Do not edit!


(when (boundp 'vacuum_cleaner_srv::message1)
  (if (not (find-package "VACUUM_CLEANER_SRV"))
    (make-package "VACUUM_CLEANER_SRV"))
  (shadow 'message1 (find-package "VACUUM_CLEANER_SRV")))
(unless (find-package "VACUUM_CLEANER_SRV::MESSAGE1")
  (make-package "VACUUM_CLEANER_SRV::MESSAGE1"))

(in-package "ROS")
;;//! \htmlinclude message1.msg.html


(defclass vacuum_cleaner_srv::message1
  :super ros::object
  :slots (_ID _roomName _batteryStatus ))

(defmethod vacuum_cleaner_srv::message1
  (:init
   (&key
    ((:ID __ID) 0)
    ((:roomName __roomName) "")
    ((:batteryStatus __batteryStatus) 0.0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _roomName (string __roomName))
   (setq _batteryStatus (float __batteryStatus))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:roomName
   (&optional __roomName)
   (if __roomName (setq _roomName __roomName)) _roomName)
  (:batteryStatus
   (&optional __batteryStatus)
   (if __batteryStatus (setq _batteryStatus __batteryStatus)) _batteryStatus)
  (:serialization-length
   ()
   (+
    ;; int32 _ID
    4
    ;; string _roomName
    4 (length _roomName)
    ;; float32 _batteryStatus
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ID
       (write-long _ID s)
     ;; string _roomName
       (write-long (length _roomName) s) (princ _roomName s)
     ;; float32 _batteryStatus
       (sys::poke _batteryStatus (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _roomName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roomName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _batteryStatus
     (setq _batteryStatus (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vacuum_cleaner_srv::message1 :md5sum-) "acd1e05bd975455a68392bd190d3066a")
(setf (get vacuum_cleaner_srv::message1 :datatype-) "vacuum_cleaner_srv/message1")
(setf (get vacuum_cleaner_srv::message1 :definition-)
      "int32 ID
string roomName
float32 batteryStatus
")



(provide :vacuum_cleaner_srv/message1 "acd1e05bd975455a68392bd190d3066a")



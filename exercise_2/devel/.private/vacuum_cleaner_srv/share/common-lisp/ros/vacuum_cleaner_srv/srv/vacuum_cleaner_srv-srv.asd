
(cl:in-package :asdf)

(defsystem "vacuum_cleaner_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
               :vacuum_cleaner_srv-msg
)
  :components ((:file "_package")
    (:file "service1" :depends-on ("_package_service1"))
    (:file "_package_service1" :depends-on ("_package"))
  ))
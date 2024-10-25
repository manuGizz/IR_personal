
(cl:in-package :asdf)

(defsystem "vacuum_cleaner_srv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "message1" :depends-on ("_package_message1"))
    (:file "_package_message1" :depends-on ("_package"))
  ))
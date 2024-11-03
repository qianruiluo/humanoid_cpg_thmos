
(cl:in-package :asdf)

(defsystem "bio_ik_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :bio_ik_msgs-msg
)
  :components ((:file "_package")
    (:file "GetIK" :depends-on ("_package_GetIK"))
    (:file "_package_GetIK" :depends-on ("_package"))
  ))
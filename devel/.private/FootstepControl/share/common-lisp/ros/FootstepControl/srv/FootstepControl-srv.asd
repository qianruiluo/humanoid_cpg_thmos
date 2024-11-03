
(cl:in-package :asdf)

(defsystem "FootstepControl-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetV" :depends-on ("_package_SetV"))
    (:file "_package_SetV" :depends-on ("_package"))
  ))
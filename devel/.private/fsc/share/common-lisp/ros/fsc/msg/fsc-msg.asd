
(cl:in-package :asdf)

(defsystem "fsc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CpgParam" :depends-on ("_package_CpgParam"))
    (:file "_package_CpgParam" :depends-on ("_package"))
    (:file "MyState" :depends-on ("_package_MyState"))
    (:file "_package_MyState" :depends-on ("_package"))
  ))
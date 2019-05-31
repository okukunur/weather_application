
(cl:in-package :asdf)

(defsystem "lab1_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Message1" :depends-on ("_package_Message1"))
    (:file "_package_Message1" :depends-on ("_package"))
  ))
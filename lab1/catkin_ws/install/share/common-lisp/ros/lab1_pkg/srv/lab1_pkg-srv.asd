
(cl:in-package :asdf)

(defsystem "lab1_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetTemp" :depends-on ("_package_GetTemp"))
    (:file "_package_GetTemp" :depends-on ("_package"))
  ))
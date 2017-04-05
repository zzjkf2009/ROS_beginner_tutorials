
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TalkerService" :depends-on ("_package_TalkerService"))
    (:file "_package_TalkerService" :depends-on ("_package"))
  ))
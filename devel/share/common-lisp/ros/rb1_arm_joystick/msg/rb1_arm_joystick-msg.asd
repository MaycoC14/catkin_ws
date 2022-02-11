
(cl:in-package :asdf)

(defsystem "rb1_arm_joystick-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmRefRb1" :depends-on ("_package_ArmRefRb1"))
    (:file "_package_ArmRefRb1" :depends-on ("_package"))
  ))
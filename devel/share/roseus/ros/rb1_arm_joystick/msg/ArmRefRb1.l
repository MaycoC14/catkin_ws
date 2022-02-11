;; Auto-generated. Do not edit!


(when (boundp 'rb1_arm_joystick::ArmRefRb1)
  (if (not (find-package "RB1_ARM_JOYSTICK"))
    (make-package "RB1_ARM_JOYSTICK"))
  (shadow 'ArmRefRb1 (find-package "RB1_ARM_JOYSTICK")))
(unless (find-package "RB1_ARM_JOYSTICK::ARMREFRB1")
  (make-package "RB1_ARM_JOYSTICK::ARMREFRB1"))

(in-package "ROS")
;;//! \htmlinclude ArmRefRb1.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rb1_arm_joystick::ArmRefRb1
  :super ros::object
  :slots (_cmd_vel _joint_selection _select_reference _op_mode ))

(defmethod rb1_arm_joystick::ArmRefRb1
  (:init
   (&key
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Twist :init))
    ((:joint_selection __joint_selection) 0.0)
    ((:select_reference __select_reference) 0.0)
    ((:op_mode __op_mode) 0)
    )
   (send-super :init)
   (setq _cmd_vel __cmd_vel)
   (setq _joint_selection (float __joint_selection))
   (setq _select_reference (float __select_reference))
   (setq _op_mode (round __op_mode))
   self)
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:joint_selection
   (&optional __joint_selection)
   (if __joint_selection (setq _joint_selection __joint_selection)) _joint_selection)
  (:select_reference
   (&optional __select_reference)
   (if __select_reference (setq _select_reference __select_reference)) _select_reference)
  (:op_mode
   (&optional __op_mode)
   (if __op_mode (setq _op_mode __op_mode)) _op_mode)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _cmd_vel
    (send _cmd_vel :serialization-length)
    ;; float64 _joint_selection
    8
    ;; float64 _select_reference
    8
    ;; uint8 _op_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _cmd_vel
       (send _cmd_vel :serialize s)
     ;; float64 _joint_selection
       (sys::poke _joint_selection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _select_reference
       (sys::poke _select_reference (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _op_mode
       (write-byte _op_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;; float64 _joint_selection
     (setq _joint_selection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _select_reference
     (setq _select_reference (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _op_mode
     (setq _op_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rb1_arm_joystick::ArmRefRb1 :md5sum-) "ea1e485f946c43bd1f8a76b08ea8ed5b")
(setf (get rb1_arm_joystick::ArmRefRb1 :datatype-) "rb1_arm_joystick/ArmRefRb1")
(setf (get rb1_arm_joystick::ArmRefRb1 :definition-)
      "geometry_msgs/Twist cmd_vel
float64 joint_selection
float64 select_reference
uint8 op_mode

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rb1_arm_joystick/ArmRefRb1 "ea1e485f946c43bd1f8a76b08ea8ed5b")



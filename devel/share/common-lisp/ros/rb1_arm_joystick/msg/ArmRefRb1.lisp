; Auto-generated. Do not edit!


(cl:in-package rb1_arm_joystick-msg)


;//! \htmlinclude ArmRefRb1.msg.html

(cl:defclass <ArmRefRb1> (roslisp-msg-protocol:ros-message)
  ((cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (joint_selection
    :reader joint_selection
    :initarg :joint_selection
    :type cl:float
    :initform 0.0)
   (select_reference
    :reader select_reference
    :initarg :select_reference
    :type cl:float
    :initform 0.0)
   (op_mode
    :reader op_mode
    :initarg :op_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArmRefRb1 (<ArmRefRb1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmRefRb1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmRefRb1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rb1_arm_joystick-msg:<ArmRefRb1> is deprecated: use rb1_arm_joystick-msg:ArmRefRb1 instead.")))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <ArmRefRb1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rb1_arm_joystick-msg:cmd_vel-val is deprecated.  Use rb1_arm_joystick-msg:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'joint_selection-val :lambda-list '(m))
(cl:defmethod joint_selection-val ((m <ArmRefRb1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rb1_arm_joystick-msg:joint_selection-val is deprecated.  Use rb1_arm_joystick-msg:joint_selection instead.")
  (joint_selection m))

(cl:ensure-generic-function 'select_reference-val :lambda-list '(m))
(cl:defmethod select_reference-val ((m <ArmRefRb1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rb1_arm_joystick-msg:select_reference-val is deprecated.  Use rb1_arm_joystick-msg:select_reference instead.")
  (select_reference m))

(cl:ensure-generic-function 'op_mode-val :lambda-list '(m))
(cl:defmethod op_mode-val ((m <ArmRefRb1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rb1_arm_joystick-msg:op_mode-val is deprecated.  Use rb1_arm_joystick-msg:op_mode instead.")
  (op_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmRefRb1>) ostream)
  "Serializes a message object of type '<ArmRefRb1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_selection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'select_reference))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmRefRb1>) istream)
  "Deserializes a message object of type '<ArmRefRb1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_selection) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'select_reference) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmRefRb1>)))
  "Returns string type for a message object of type '<ArmRefRb1>"
  "rb1_arm_joystick/ArmRefRb1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmRefRb1)))
  "Returns string type for a message object of type 'ArmRefRb1"
  "rb1_arm_joystick/ArmRefRb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmRefRb1>)))
  "Returns md5sum for a message object of type '<ArmRefRb1>"
  "ea1e485f946c43bd1f8a76b08ea8ed5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmRefRb1)))
  "Returns md5sum for a message object of type 'ArmRefRb1"
  "ea1e485f946c43bd1f8a76b08ea8ed5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmRefRb1>)))
  "Returns full string definition for message of type '<ArmRefRb1>"
  (cl:format cl:nil "geometry_msgs/Twist cmd_vel~%float64 joint_selection~%float64 select_reference~%uint8 op_mode~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmRefRb1)))
  "Returns full string definition for message of type 'ArmRefRb1"
  (cl:format cl:nil "geometry_msgs/Twist cmd_vel~%float64 joint_selection~%float64 select_reference~%uint8 op_mode~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmRefRb1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmRefRb1>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmRefRb1
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':joint_selection (joint_selection msg))
    (cl:cons ':select_reference (select_reference msg))
    (cl:cons ':op_mode (op_mode msg))
))

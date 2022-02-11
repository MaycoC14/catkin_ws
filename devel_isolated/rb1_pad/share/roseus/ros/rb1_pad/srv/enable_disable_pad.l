;; Auto-generated. Do not edit!


(when (boundp 'rb1_pad::enable_disable_pad)
  (if (not (find-package "RB1_PAD"))
    (make-package "RB1_PAD"))
  (shadow 'enable_disable_pad (find-package "RB1_PAD")))
(unless (find-package "RB1_PAD::ENABLE_DISABLE_PAD")
  (make-package "RB1_PAD::ENABLE_DISABLE_PAD"))
(unless (find-package "RB1_PAD::ENABLE_DISABLE_PADREQUEST")
  (make-package "RB1_PAD::ENABLE_DISABLE_PADREQUEST"))
(unless (find-package "RB1_PAD::ENABLE_DISABLE_PADRESPONSE")
  (make-package "RB1_PAD::ENABLE_DISABLE_PADRESPONSE"))

(in-package "ROS")





(defclass rb1_pad::enable_disable_padRequest
  :super ros::object
  :slots (_value ))

(defmethod rb1_pad::enable_disable_padRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rb1_pad::enable_disable_padResponse
  :super ros::object
  :slots (_ret ))

(defmethod rb1_pad::enable_disable_padResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rb1_pad::enable_disable_pad
  :super ros::object
  :slots ())

(setf (get rb1_pad::enable_disable_pad :md5sum-) "44aff93ccf05e13b2ec5d62303a837a2")
(setf (get rb1_pad::enable_disable_pad :datatype-) "rb1_pad/enable_disable_pad")
(setf (get rb1_pad::enable_disable_pad :request) rb1_pad::enable_disable_padRequest)
(setf (get rb1_pad::enable_disable_pad :response) rb1_pad::enable_disable_padResponse)

(defmethod rb1_pad::enable_disable_padRequest
  (:response () (instance rb1_pad::enable_disable_padResponse :init)))

(setf (get rb1_pad::enable_disable_padRequest :md5sum-) "44aff93ccf05e13b2ec5d62303a837a2")
(setf (get rb1_pad::enable_disable_padRequest :datatype-) "rb1_pad/enable_disable_padRequest")
(setf (get rb1_pad::enable_disable_padRequest :definition-)
      "bool value
---
bool ret 

")

(setf (get rb1_pad::enable_disable_padResponse :md5sum-) "44aff93ccf05e13b2ec5d62303a837a2")
(setf (get rb1_pad::enable_disable_padResponse :datatype-) "rb1_pad/enable_disable_padResponse")
(setf (get rb1_pad::enable_disable_padResponse :definition-)
      "bool value
---
bool ret 

")



(provide :rb1_pad/enable_disable_pad "44aff93ccf05e13b2ec5d62303a837a2")



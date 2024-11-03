;; Auto-generated. Do not edit!


(when (boundp 'FootstepControl::SetV)
  (if (not (find-package "FOOTSTEPCONTROL"))
    (make-package "FOOTSTEPCONTROL"))
  (shadow 'SetV (find-package "FOOTSTEPCONTROL")))
(unless (find-package "FOOTSTEPCONTROL::SETV")
  (make-package "FOOTSTEPCONTROL::SETV"))
(unless (find-package "FOOTSTEPCONTROL::SETVREQUEST")
  (make-package "FOOTSTEPCONTROL::SETVREQUEST"))
(unless (find-package "FOOTSTEPCONTROL::SETVRESPONSE")
  (make-package "FOOTSTEPCONTROL::SETVRESPONSE"))

(in-package "ROS")





(defclass FootstepControl::SetVRequest
  :super ros::object
  :slots (_vx _vy _vr ))

(defmethod FootstepControl::SetVRequest
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vr __vr) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vr (float __vr))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vr
   (&optional __vr)
   (if __vr (setq _vr __vr)) _vr)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vr
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vr
       (sys::poke _vr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vr
     (setq _vr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass FootstepControl::SetVResponse
  :super ros::object
  :slots ())

(defmethod FootstepControl::SetVResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass FootstepControl::SetV
  :super ros::object
  :slots ())

(setf (get FootstepControl::SetV :md5sum-) "8362ce87c5ed325fb041904db410063b")
(setf (get FootstepControl::SetV :datatype-) "FootstepControl/SetV")
(setf (get FootstepControl::SetV :request) FootstepControl::SetVRequest)
(setf (get FootstepControl::SetV :response) FootstepControl::SetVResponse)

(defmethod FootstepControl::SetVRequest
  (:response () (instance FootstepControl::SetVResponse :init)))

(setf (get FootstepControl::SetVRequest :md5sum-) "8362ce87c5ed325fb041904db410063b")
(setf (get FootstepControl::SetVRequest :datatype-) "FootstepControl/SetVRequest")
(setf (get FootstepControl::SetVRequest :definition-)
      "float64 vx
float64 vy
float64 vr
---
")

(setf (get FootstepControl::SetVResponse :md5sum-) "8362ce87c5ed325fb041904db410063b")
(setf (get FootstepControl::SetVResponse :datatype-) "FootstepControl/SetVResponse")
(setf (get FootstepControl::SetVResponse :definition-)
      "float64 vx
float64 vy
float64 vr
---
")



(provide :FootstepControl/SetV "8362ce87c5ed325fb041904db410063b")



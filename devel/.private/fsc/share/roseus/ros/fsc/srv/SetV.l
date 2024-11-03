;; Auto-generated. Do not edit!


(when (boundp 'fsc::SetV)
  (if (not (find-package "FSC"))
    (make-package "FSC"))
  (shadow 'SetV (find-package "FSC")))
(unless (find-package "FSC::SETV")
  (make-package "FSC::SETV"))
(unless (find-package "FSC::SETVREQUEST")
  (make-package "FSC::SETVREQUEST"))
(unless (find-package "FSC::SETVRESPONSE")
  (make-package "FSC::SETVRESPONSE"))

(in-package "ROS")





(defclass fsc::SetVRequest
  :super ros::object
  :slots (_vx _vy _vr ))

(defmethod fsc::SetVRequest
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

(defclass fsc::SetVResponse
  :super ros::object
  :slots ())

(defmethod fsc::SetVResponse
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

(defclass fsc::SetV
  :super ros::object
  :slots ())

(setf (get fsc::SetV :md5sum-) "8362ce87c5ed325fb041904db410063b")
(setf (get fsc::SetV :datatype-) "fsc/SetV")
(setf (get fsc::SetV :request) fsc::SetVRequest)
(setf (get fsc::SetV :response) fsc::SetVResponse)

(defmethod fsc::SetVRequest
  (:response () (instance fsc::SetVResponse :init)))

(setf (get fsc::SetVRequest :md5sum-) "8362ce87c5ed325fb041904db410063b")
(setf (get fsc::SetVRequest :datatype-) "fsc/SetVRequest")
(setf (get fsc::SetVRequest :definition-)
      "float64 vx
float64 vy
float64 vr
---
")

(setf (get fsc::SetVResponse :md5sum-) "8362ce87c5ed325fb041904db410063b")
(setf (get fsc::SetVResponse :datatype-) "fsc/SetVResponse")
(setf (get fsc::SetVResponse :definition-)
      "float64 vx
float64 vy
float64 vr
---
")



(provide :fsc/SetV "8362ce87c5ed325fb041904db410063b")



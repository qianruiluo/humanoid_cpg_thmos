;; Auto-generated. Do not edit!


(when (boundp 'fsc::CpgParam)
  (if (not (find-package "FSC"))
    (make-package "FSC"))
  (shadow 'CpgParam (find-package "FSC")))
(unless (find-package "FSC::CPGPARAM")
  (make-package "FSC::CPGPARAM"))

(in-package "ROS")
;;//! \htmlinclude CpgParam.msg.html


(defclass fsc::CpgParam
  :super ros::object
  :slots (_ax _ay _ar _T ))

(defmethod fsc::CpgParam
  (:init
   (&key
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:ar __ar) 0.0)
    ((:T __T) 0.0)
    )
   (send-super :init)
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _ar (float __ar))
   (setq _T (float __T))
   self)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:ar
   (&optional __ar)
   (if __ar (setq _ar __ar)) _ar)
  (:T
   (&optional __T)
   (if __T (setq _T __T)) _T)
  (:serialization-length
   ()
   (+
    ;; float64 _ax
    8
    ;; float64 _ay
    8
    ;; float64 _ar
    8
    ;; float64 _T
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ar
       (sys::poke _ar (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _T
       (sys::poke _T (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ax
     (setq _ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay
     (setq _ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ar
     (setq _ar (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _T
     (setq _T (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fsc::CpgParam :md5sum-) "f9655a65c5483d537755b7beecffd1fb")
(setf (get fsc::CpgParam :datatype-) "fsc/CpgParam")
(setf (get fsc::CpgParam :definition-)
      "float64 ax
float64 ay
float64 ar
float64 T
")



(provide :fsc/CpgParam "f9655a65c5483d537755b7beecffd1fb")



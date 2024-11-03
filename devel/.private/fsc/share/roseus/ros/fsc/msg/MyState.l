;; Auto-generated. Do not edit!


(when (boundp 'fsc::MyState)
  (if (not (find-package "FSC"))
    (make-package "FSC"))
  (shadow 'MyState (find-package "FSC")))
(unless (find-package "FSC::MYSTATE")
  (make-package "FSC::MYSTATE"))

(in-package "ROS")
;;//! \htmlinclude MyState.msg.html


(defclass fsc::MyState
  :super ros::object
  :slots (_cx _dcx _cy _dcy _is_left_support _is_right_support ))

(defmethod fsc::MyState
  (:init
   (&key
    ((:cx __cx) 0.0)
    ((:dcx __dcx) 0.0)
    ((:cy __cy) 0.0)
    ((:dcy __dcy) 0.0)
    ((:is_left_support __is_left_support) 0)
    ((:is_right_support __is_right_support) 0)
    )
   (send-super :init)
   (setq _cx (float __cx))
   (setq _dcx (float __dcx))
   (setq _cy (float __cy))
   (setq _dcy (float __dcy))
   (setq _is_left_support (round __is_left_support))
   (setq _is_right_support (round __is_right_support))
   self)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:dcx
   (&optional __dcx)
   (if __dcx (setq _dcx __dcx)) _dcx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:dcy
   (&optional __dcy)
   (if __dcy (setq _dcy __dcy)) _dcy)
  (:is_left_support
   (&optional __is_left_support)
   (if __is_left_support (setq _is_left_support __is_left_support)) _is_left_support)
  (:is_right_support
   (&optional __is_right_support)
   (if __is_right_support (setq _is_right_support __is_right_support)) _is_right_support)
  (:serialization-length
   ()
   (+
    ;; float64 _cx
    8
    ;; float64 _dcx
    8
    ;; float64 _cy
    8
    ;; float64 _dcy
    8
    ;; uint8 _is_left_support
    1
    ;; uint8 _is_right_support
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cx
       (sys::poke _cx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dcx
       (sys::poke _dcx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cy
       (sys::poke _cy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dcy
       (sys::poke _dcy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _is_left_support
       (write-byte _is_left_support s)
     ;; uint8 _is_right_support
       (write-byte _is_right_support s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cx
     (setq _cx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dcx
     (setq _dcx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cy
     (setq _cy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dcy
     (setq _dcy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _is_left_support
     (setq _is_left_support (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _is_right_support
     (setq _is_right_support (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fsc::MyState :md5sum-) "4493873f0a72e816f885a561816cfc96")
(setf (get fsc::MyState :datatype-) "fsc/MyState")
(setf (get fsc::MyState :definition-)
      "float64 cx
float64 dcx
float64 cy
float64 dcy
uint8 is_left_support
uint8 is_right_support
")



(provide :fsc/MyState "4493873f0a72e816f885a561816cfc96")



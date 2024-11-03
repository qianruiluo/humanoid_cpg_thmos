;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::OrientationGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'OrientationGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::ORIENTATIONGOAL")
  (make-package "BIO_IK_MSGS::ORIENTATIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude OrientationGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::OrientationGoal
  :super ros::object
  :slots (_link_name _weight _orientation ))

(defmethod bio_ik_msgs::OrientationGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _orientation __orientation)
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get bio_ik_msgs::OrientationGoal :md5sum-) "defee7501360d7a1eb6a70388df00af7")
(setf (get bio_ik_msgs::OrientationGoal :datatype-) "bio_ik_msgs/OrientationGoal")
(setf (get bio_ik_msgs::OrientationGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal orientation into which the end effector link shall be brought
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :bio_ik_msgs/OrientationGoal "defee7501360d7a1eb6a70388df00af7")



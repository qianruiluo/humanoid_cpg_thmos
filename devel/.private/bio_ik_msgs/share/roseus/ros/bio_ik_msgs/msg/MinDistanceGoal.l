;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::MinDistanceGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'MinDistanceGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::MINDISTANCEGOAL")
  (make-package "BIO_IK_MSGS::MINDISTANCEGOAL"))

(in-package "ROS")
;;//! \htmlinclude MinDistanceGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::MinDistanceGoal
  :super ros::object
  :slots (_link_name _weight _target _distance ))

(defmethod bio_ik_msgs::MinDistanceGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:target __target) (instance geometry_msgs::Point :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _target __target)
   (setq _distance (float __distance))
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Point _target
    (send _target :serialization-length)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _target
       (send _target :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get bio_ik_msgs::MinDistanceGoal :md5sum-) "bcfa7c3e29387935515d0e4b0708f298")
(setf (get bio_ik_msgs::MinDistanceGoal :datatype-) "bio_ik_msgs/MinDistanceGoal")
(setf (get bio_ik_msgs::MinDistanceGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The distance will be computed from the origin of the end effector link to the target point
geometry_msgs/Point target

# Minimum allowed distance
# Forces the end effector link to be at least the specified distance away from the target
float64 distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :bio_ik_msgs/MinDistanceGoal "bcfa7c3e29387935515d0e4b0708f298")



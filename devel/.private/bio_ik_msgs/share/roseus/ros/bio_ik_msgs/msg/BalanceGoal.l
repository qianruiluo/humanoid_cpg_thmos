;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::BalanceGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'BalanceGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::BALANCEGOAL")
  (make-package "BIO_IK_MSGS::BALANCEGOAL"))

(in-package "ROS")
;;//! \htmlinclude BalanceGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::BalanceGoal
  :super ros::object
  :slots (_weight _target _axis ))

(defmethod bio_ik_msgs::BalanceGoal
  (:init
   (&key
    ((:weight __weight) 0.0)
    ((:target __target) (instance geometry_msgs::Point :init))
    ((:axis __axis) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _weight (float __weight))
   (setq _target __target)
   (setq _axis __axis)
   self)
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
  (:axis
   (&rest __axis)
   (if (keywordp (car __axis))
       (send* _axis __axis)
     (progn
       (if __axis (setq _axis (car __axis)))
       _axis)))
  (:serialization-length
   ()
   (+
    ;; float64 _weight
    8
    ;; geometry_msgs/Point _target
    (send _target :serialization-length)
    ;; geometry_msgs/Vector3 _axis
    (send _axis :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _target
       (send _target :serialize s)
     ;; geometry_msgs/Vector3 _axis
       (send _axis :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; geometry_msgs/Vector3 _axis
     (send _axis :deserialize buf ptr-) (incf ptr- (send _axis :serialization-length))
   ;;
   self)
  )

(setf (get bio_ik_msgs::BalanceGoal :md5sum-) "a41c41e95b53d1061e0af70f43304d5b")
(setf (get bio_ik_msgs::BalanceGoal :datatype-) "bio_ik_msgs/BalanceGoal")
(setf (get bio_ik_msgs::BalanceGoal :definition-)
      "# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The center of gravity will be pulled above this target point
geometry_msgs/Point target

# Gravity vector (optional)
geometry_msgs/Vector3 axis

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :bio_ik_msgs/BalanceGoal "a41c41e95b53d1061e0af70f43304d5b")



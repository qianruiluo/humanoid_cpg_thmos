;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::LookAtGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'LookAtGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::LOOKATGOAL")
  (make-package "BIO_IK_MSGS::LOOKATGOAL"))

(in-package "ROS")
;;//! \htmlinclude LookAtGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::LookAtGoal
  :super ros::object
  :slots (_link_name _weight _axis _target ))

(defmethod bio_ik_msgs::LookAtGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:axis __axis) (instance geometry_msgs::Vector3 :init))
    ((:target __target) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _axis __axis)
   (setq _target __target)
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:axis
   (&rest __axis)
   (if (keywordp (car __axis))
       (send* _axis __axis)
     (progn
       (if __axis (setq _axis (car __axis)))
       _axis)))
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Vector3 _axis
    (send _axis :serialization-length)
    ;; geometry_msgs/Point _target
    (send _target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _axis
       (send _axis :serialize s)
     ;; geometry_msgs/Point _target
       (send _target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _axis
     (send _axis :deserialize buf ptr-) (incf ptr- (send _axis :serialization-length))
   ;; geometry_msgs/Point _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;;
   self)
  )

(setf (get bio_ik_msgs::LookAtGoal :md5sum-) "5353e403e5f3d793ed695b9d5f62178a")
(setf (get bio_ik_msgs::LookAtGoal :datatype-) "bio_ik_msgs/LookAtGoal")
(setf (get bio_ik_msgs::LookAtGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The axis in the link's local coordinate frame which shall point towards the target
geometry_msgs/Vector3 axis

# The target point which the axis shall point at
geometry_msgs/Point target

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
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :bio_ik_msgs/LookAtGoal "5353e403e5f3d793ed695b9d5f62178a")



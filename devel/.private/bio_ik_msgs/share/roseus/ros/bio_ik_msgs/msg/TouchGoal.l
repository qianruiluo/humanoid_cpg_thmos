;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::TouchGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'TouchGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::TOUCHGOAL")
  (make-package "BIO_IK_MSGS::TOUCHGOAL"))

(in-package "ROS")
;;//! \htmlinclude TouchGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::TouchGoal
  :super ros::object
  :slots (_link_name _weight _position _normal ))

(defmethod bio_ik_msgs::TouchGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:normal __normal) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _position __position)
   (setq _normal __normal)
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _normal
    (send _normal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _normal
       (send _normal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;;
   self)
  )

(setf (get bio_ik_msgs::TouchGoal :md5sum-) "fc51b5abee95ec050de84316a0363e23")
(setf (get bio_ik_msgs::TouchGoal :datatype-) "bio_ik_msgs/TouchGoal")
(setf (get bio_ik_msgs::TouchGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# A point on the plane that shall be touched by the end effector link mesh
geometry_msgs/Point position

# The normal of the plane that shall be touched by the end effector link mesh
geometry_msgs/Vector3 normal

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



(provide :bio_ik_msgs/TouchGoal "fc51b5abee95ec050de84316a0363e23")



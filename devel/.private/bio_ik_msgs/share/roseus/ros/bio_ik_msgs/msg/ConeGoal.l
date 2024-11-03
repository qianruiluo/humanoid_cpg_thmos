;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::ConeGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'ConeGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::CONEGOAL")
  (make-package "BIO_IK_MSGS::CONEGOAL"))

(in-package "ROS")
;;//! \htmlinclude ConeGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::ConeGoal
  :super ros::object
  :slots (_link_name _weight _position _position_weight _axis _direction _angle ))

(defmethod bio_ik_msgs::ConeGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:position_weight __position_weight) 0.0)
    ((:axis __axis) (instance geometry_msgs::Vector3 :init))
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _position __position)
   (setq _position_weight (float __position_weight))
   (setq _axis __axis)
   (setq _direction __direction)
   (setq _angle (float __angle))
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
  (:position_weight
   (&optional __position_weight)
   (if __position_weight (setq _position_weight __position_weight)) _position_weight)
  (:axis
   (&rest __axis)
   (if (keywordp (car __axis))
       (send* _axis __axis)
     (progn
       (if __axis (setq _axis (car __axis)))
       _axis)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _position_weight
    8
    ;; geometry_msgs/Vector3 _axis
    (send _axis :serialization-length)
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; float64 _angle
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
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _position_weight
       (sys::poke _position_weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _axis
       (send _axis :serialize s)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _position_weight
     (setq _position_weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _axis
     (send _axis :deserialize buf ptr-) (incf ptr- (send _axis :serialization-length))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get bio_ik_msgs::ConeGoal :md5sum-) "d627f3360ed70a33e1852aae499c94db")
(setf (get bio_ik_msgs::ConeGoal :datatype-) "bio_ik_msgs/ConeGoal")
(setf (get bio_ik_msgs::ConeGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

geometry_msgs/Point position
float64 position_weight
geometry_msgs/Vector3 axis
geometry_msgs/Vector3 direction
float64 angle

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



(provide :bio_ik_msgs/ConeGoal "d627f3360ed70a33e1852aae499c94db")



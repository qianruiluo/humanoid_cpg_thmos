;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::PoseGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'PoseGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::POSEGOAL")
  (make-package "BIO_IK_MSGS::POSEGOAL"))

(in-package "ROS")
;;//! \htmlinclude PoseGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::PoseGoal
  :super ros::object
  :slots (_link_name _weight _pose _rotation_scale ))

(defmethod bio_ik_msgs::PoseGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:rotation_scale __rotation_scale) 0.0)
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _pose __pose)
   (setq _rotation_scale (float __rotation_scale))
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:rotation_scale
   (&optional __rotation_scale)
   (if __rotation_scale (setq _rotation_scale __rotation_scale)) _rotation_scale)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _rotation_scale
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
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _rotation_scale
       (sys::poke _rotation_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _rotation_scale
     (setq _rotation_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get bio_ik_msgs::PoseGoal :md5sum-) "ab4e8566ca0cc9b21ea1ca6eeaaa55d7")
(setf (get bio_ik_msgs::PoseGoal :datatype-) "bio_ik_msgs/PoseGoal")
(setf (get bio_ik_msgs::PoseGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal pose into which the end effector link shall be brought
geometry_msgs/Pose pose

# How rotational errors will be weighted in relation to positional errors
float64 rotation_scale

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :bio_ik_msgs/PoseGoal "ab4e8566ca0cc9b21ea1ca6eeaaa55d7")



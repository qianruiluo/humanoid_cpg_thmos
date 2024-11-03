;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::PositionGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'PositionGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::POSITIONGOAL")
  (make-package "BIO_IK_MSGS::POSITIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude PositionGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass bio_ik_msgs::PositionGoal
  :super ros::object
  :slots (_link_name _weight _position ))

(defmethod bio_ik_msgs::PositionGoal
  (:init
   (&key
    ((:link_name __link_name) "")
    ((:weight __weight) 0.0)
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   (setq _weight (float __weight))
   (setq _position __position)
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
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ;; float64 _weight
    8
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
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
   ;;
   self)
  )

(setf (get bio_ik_msgs::PositionGoal :md5sum-) "f7ba9cf3694b741fc17857a4a52dcde9")
(setf (get bio_ik_msgs::PositionGoal :datatype-) "bio_ik_msgs/PositionGoal")
(setf (get bio_ik_msgs::PositionGoal :definition-)
      "# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal position into which the end effector link shall be brought
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :bio_ik_msgs/PositionGoal "f7ba9cf3694b741fc17857a4a52dcde9")



;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::JointVariableGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'JointVariableGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::JOINTVARIABLEGOAL")
  (make-package "BIO_IK_MSGS::JOINTVARIABLEGOAL"))

(in-package "ROS")
;;//! \htmlinclude JointVariableGoal.msg.html


(defclass bio_ik_msgs::JointVariableGoal
  :super ros::object
  :slots (_variable_name _variable_position _weight _secondary ))

(defmethod bio_ik_msgs::JointVariableGoal
  (:init
   (&key
    ((:variable_name __variable_name) "")
    ((:variable_position __variable_position) 0.0)
    ((:weight __weight) 0.0)
    ((:secondary __secondary) nil)
    )
   (send-super :init)
   (setq _variable_name (string __variable_name))
   (setq _variable_position (float __variable_position))
   (setq _weight (float __weight))
   (setq _secondary __secondary)
   self)
  (:variable_name
   (&optional __variable_name)
   (if __variable_name (setq _variable_name __variable_name)) _variable_name)
  (:variable_position
   (&optional __variable_position)
   (if __variable_position (setq _variable_position __variable_position)) _variable_position)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:secondary
   (&optional __secondary)
   (if __secondary (setq _secondary __secondary)) _secondary)
  (:serialization-length
   ()
   (+
    ;; string _variable_name
    4 (length _variable_name)
    ;; float64 _variable_position
    8
    ;; float64 _weight
    8
    ;; bool _secondary
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _variable_name
       (write-long (length _variable_name) s) (princ _variable_name s)
     ;; float64 _variable_position
       (sys::poke _variable_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _secondary
       (if _secondary (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _variable_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _variable_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _variable_position
     (setq _variable_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _secondary
     (setq _secondary (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bio_ik_msgs::JointVariableGoal :md5sum-) "ee6ea02a53bfdacf34c1c1097ce15d71")
(setf (get bio_ik_msgs::JointVariableGoal :datatype-) "bio_ik_msgs/JointVariableGoal")
(setf (get bio_ik_msgs::JointVariableGoal :definition-)
      "# The name of the joint variable
string variable_name

# The desired position value of the joint variable
float64 variable_position

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to false, the goal will be primary goal (like eg. position goals)
# If set to true, this goal will always have lower priority than the primary goals
bool secondary

")



(provide :bio_ik_msgs/JointVariableGoal "ee6ea02a53bfdacf34c1c1097ce15d71")



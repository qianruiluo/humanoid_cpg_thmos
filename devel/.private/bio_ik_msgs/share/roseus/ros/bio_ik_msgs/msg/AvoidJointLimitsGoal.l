;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::AvoidJointLimitsGoal)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'AvoidJointLimitsGoal (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::AVOIDJOINTLIMITSGOAL")
  (make-package "BIO_IK_MSGS::AVOIDJOINTLIMITSGOAL"))

(in-package "ROS")
;;//! \htmlinclude AvoidJointLimitsGoal.msg.html


(defclass bio_ik_msgs::AvoidJointLimitsGoal
  :super ros::object
  :slots (_weight _primary ))

(defmethod bio_ik_msgs::AvoidJointLimitsGoal
  (:init
   (&key
    ((:weight __weight) 0.0)
    ((:primary __primary) nil)
    )
   (send-super :init)
   (setq _weight (float __weight))
   (setq _primary __primary)
   self)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:primary
   (&optional __primary)
   (if __primary (setq _primary __primary)) _primary)
  (:serialization-length
   ()
   (+
    ;; float64 _weight
    8
    ;; bool _primary
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _primary
       (if _primary (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _primary
     (setq _primary (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bio_ik_msgs::AvoidJointLimitsGoal :md5sum-) "ccbc658a4d415bcd21aba09a68bf23dd")
(setf (get bio_ik_msgs::AvoidJointLimitsGoal :datatype-) "bio_ik_msgs/AvoidJointLimitsGoal")
(setf (get bio_ik_msgs::AvoidJointLimitsGoal :definition-)
      "# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to true, the goal will be primary goal (like eg. position goals)
# If set to false, this goal will always have lower priority than the primary goals
bool primary

")



(provide :bio_ik_msgs/AvoidJointLimitsGoal "ccbc658a4d415bcd21aba09a68bf23dd")



;; Auto-generated. Do not edit!


(when (boundp 'bio_ik_msgs::IKRequest)
  (if (not (find-package "BIO_IK_MSGS"))
    (make-package "BIO_IK_MSGS"))
  (shadow 'IKRequest (find-package "BIO_IK_MSGS")))
(unless (find-package "BIO_IK_MSGS::IKREQUEST")
  (make-package "BIO_IK_MSGS::IKREQUEST"))

(in-package "ROS")
;;//! \htmlinclude IKRequest.msg.html
(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))


(defclass bio_ik_msgs::IKRequest
  :super ros::object
  :slots (_robot_description _group_name _approximate _timeout _fixed_joints _robot_state _avoid_collisions _position_goals _orientation_goals _pose_goals _look_at_goals _min_distance_goals _max_distance_goals _line_goals _touch_goals _avoid_joint_limits_goals _center_joints_goals _minimal_displacement_goals _joint_variable_goals _balance_goals _side_goals _direction_goals _cone_goals ))

(defmethod bio_ik_msgs::IKRequest
  (:init
   (&key
    ((:robot_description __robot_description) "")
    ((:group_name __group_name) "")
    ((:approximate __approximate) nil)
    ((:timeout __timeout) (instance ros::time :init))
    ((:fixed_joints __fixed_joints) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:robot_state __robot_state) (instance moveit_msgs::RobotState :init))
    ((:avoid_collisions __avoid_collisions) nil)
    ((:position_goals __position_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::PositionGoal :init) r)) r))
    ((:orientation_goals __orientation_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::OrientationGoal :init) r)) r))
    ((:pose_goals __pose_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::PoseGoal :init) r)) r))
    ((:look_at_goals __look_at_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::LookAtGoal :init) r)) r))
    ((:min_distance_goals __min_distance_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::MinDistanceGoal :init) r)) r))
    ((:max_distance_goals __max_distance_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::MaxDistanceGoal :init) r)) r))
    ((:line_goals __line_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::LineGoal :init) r)) r))
    ((:touch_goals __touch_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::TouchGoal :init) r)) r))
    ((:avoid_joint_limits_goals __avoid_joint_limits_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::AvoidJointLimitsGoal :init) r)) r))
    ((:center_joints_goals __center_joints_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::CenterJointsGoal :init) r)) r))
    ((:minimal_displacement_goals __minimal_displacement_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::MinimalDisplacementGoal :init) r)) r))
    ((:joint_variable_goals __joint_variable_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::JointVariableGoal :init) r)) r))
    ((:balance_goals __balance_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::BalanceGoal :init) r)) r))
    ((:side_goals __side_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::SideGoal :init) r)) r))
    ((:direction_goals __direction_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::DirectionGoal :init) r)) r))
    ((:cone_goals __cone_goals) (let (r) (dotimes (i 0) (push (instance bio_ik_msgs::ConeGoal :init) r)) r))
    )
   (send-super :init)
   (setq _robot_description (string __robot_description))
   (setq _group_name (string __group_name))
   (setq _approximate __approximate)
   (setq _timeout __timeout)
   (setq _fixed_joints __fixed_joints)
   (setq _robot_state __robot_state)
   (setq _avoid_collisions __avoid_collisions)
   (setq _position_goals __position_goals)
   (setq _orientation_goals __orientation_goals)
   (setq _pose_goals __pose_goals)
   (setq _look_at_goals __look_at_goals)
   (setq _min_distance_goals __min_distance_goals)
   (setq _max_distance_goals __max_distance_goals)
   (setq _line_goals __line_goals)
   (setq _touch_goals __touch_goals)
   (setq _avoid_joint_limits_goals __avoid_joint_limits_goals)
   (setq _center_joints_goals __center_joints_goals)
   (setq _minimal_displacement_goals __minimal_displacement_goals)
   (setq _joint_variable_goals __joint_variable_goals)
   (setq _balance_goals __balance_goals)
   (setq _side_goals __side_goals)
   (setq _direction_goals __direction_goals)
   (setq _cone_goals __cone_goals)
   self)
  (:robot_description
   (&optional __robot_description)
   (if __robot_description (setq _robot_description __robot_description)) _robot_description)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:approximate
   (&optional __approximate)
   (if __approximate (setq _approximate __approximate)) _approximate)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:fixed_joints
   (&optional __fixed_joints)
   (if __fixed_joints (setq _fixed_joints __fixed_joints)) _fixed_joints)
  (:robot_state
   (&rest __robot_state)
   (if (keywordp (car __robot_state))
       (send* _robot_state __robot_state)
     (progn
       (if __robot_state (setq _robot_state (car __robot_state)))
       _robot_state)))
  (:avoid_collisions
   (&optional __avoid_collisions)
   (if __avoid_collisions (setq _avoid_collisions __avoid_collisions)) _avoid_collisions)
  (:position_goals
   (&rest __position_goals)
   (if (keywordp (car __position_goals))
       (send* _position_goals __position_goals)
     (progn
       (if __position_goals (setq _position_goals (car __position_goals)))
       _position_goals)))
  (:orientation_goals
   (&rest __orientation_goals)
   (if (keywordp (car __orientation_goals))
       (send* _orientation_goals __orientation_goals)
     (progn
       (if __orientation_goals (setq _orientation_goals (car __orientation_goals)))
       _orientation_goals)))
  (:pose_goals
   (&rest __pose_goals)
   (if (keywordp (car __pose_goals))
       (send* _pose_goals __pose_goals)
     (progn
       (if __pose_goals (setq _pose_goals (car __pose_goals)))
       _pose_goals)))
  (:look_at_goals
   (&rest __look_at_goals)
   (if (keywordp (car __look_at_goals))
       (send* _look_at_goals __look_at_goals)
     (progn
       (if __look_at_goals (setq _look_at_goals (car __look_at_goals)))
       _look_at_goals)))
  (:min_distance_goals
   (&rest __min_distance_goals)
   (if (keywordp (car __min_distance_goals))
       (send* _min_distance_goals __min_distance_goals)
     (progn
       (if __min_distance_goals (setq _min_distance_goals (car __min_distance_goals)))
       _min_distance_goals)))
  (:max_distance_goals
   (&rest __max_distance_goals)
   (if (keywordp (car __max_distance_goals))
       (send* _max_distance_goals __max_distance_goals)
     (progn
       (if __max_distance_goals (setq _max_distance_goals (car __max_distance_goals)))
       _max_distance_goals)))
  (:line_goals
   (&rest __line_goals)
   (if (keywordp (car __line_goals))
       (send* _line_goals __line_goals)
     (progn
       (if __line_goals (setq _line_goals (car __line_goals)))
       _line_goals)))
  (:touch_goals
   (&rest __touch_goals)
   (if (keywordp (car __touch_goals))
       (send* _touch_goals __touch_goals)
     (progn
       (if __touch_goals (setq _touch_goals (car __touch_goals)))
       _touch_goals)))
  (:avoid_joint_limits_goals
   (&rest __avoid_joint_limits_goals)
   (if (keywordp (car __avoid_joint_limits_goals))
       (send* _avoid_joint_limits_goals __avoid_joint_limits_goals)
     (progn
       (if __avoid_joint_limits_goals (setq _avoid_joint_limits_goals (car __avoid_joint_limits_goals)))
       _avoid_joint_limits_goals)))
  (:center_joints_goals
   (&rest __center_joints_goals)
   (if (keywordp (car __center_joints_goals))
       (send* _center_joints_goals __center_joints_goals)
     (progn
       (if __center_joints_goals (setq _center_joints_goals (car __center_joints_goals)))
       _center_joints_goals)))
  (:minimal_displacement_goals
   (&rest __minimal_displacement_goals)
   (if (keywordp (car __minimal_displacement_goals))
       (send* _minimal_displacement_goals __minimal_displacement_goals)
     (progn
       (if __minimal_displacement_goals (setq _minimal_displacement_goals (car __minimal_displacement_goals)))
       _minimal_displacement_goals)))
  (:joint_variable_goals
   (&rest __joint_variable_goals)
   (if (keywordp (car __joint_variable_goals))
       (send* _joint_variable_goals __joint_variable_goals)
     (progn
       (if __joint_variable_goals (setq _joint_variable_goals (car __joint_variable_goals)))
       _joint_variable_goals)))
  (:balance_goals
   (&rest __balance_goals)
   (if (keywordp (car __balance_goals))
       (send* _balance_goals __balance_goals)
     (progn
       (if __balance_goals (setq _balance_goals (car __balance_goals)))
       _balance_goals)))
  (:side_goals
   (&rest __side_goals)
   (if (keywordp (car __side_goals))
       (send* _side_goals __side_goals)
     (progn
       (if __side_goals (setq _side_goals (car __side_goals)))
       _side_goals)))
  (:direction_goals
   (&rest __direction_goals)
   (if (keywordp (car __direction_goals))
       (send* _direction_goals __direction_goals)
     (progn
       (if __direction_goals (setq _direction_goals (car __direction_goals)))
       _direction_goals)))
  (:cone_goals
   (&rest __cone_goals)
   (if (keywordp (car __cone_goals))
       (send* _cone_goals __cone_goals)
     (progn
       (if __cone_goals (setq _cone_goals (car __cone_goals)))
       _cone_goals)))
  (:serialization-length
   ()
   (+
    ;; string _robot_description
    4 (length _robot_description)
    ;; string _group_name
    4 (length _group_name)
    ;; bool _approximate
    1
    ;; duration _timeout
    8
    ;; string[] _fixed_joints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _fixed_joints)) 4
    ;; moveit_msgs/RobotState _robot_state
    (send _robot_state :serialization-length)
    ;; bool _avoid_collisions
    1
    ;; bio_ik_msgs/PositionGoal[] _position_goals
    (apply #'+ (send-all _position_goals :serialization-length)) 4
    ;; bio_ik_msgs/OrientationGoal[] _orientation_goals
    (apply #'+ (send-all _orientation_goals :serialization-length)) 4
    ;; bio_ik_msgs/PoseGoal[] _pose_goals
    (apply #'+ (send-all _pose_goals :serialization-length)) 4
    ;; bio_ik_msgs/LookAtGoal[] _look_at_goals
    (apply #'+ (send-all _look_at_goals :serialization-length)) 4
    ;; bio_ik_msgs/MinDistanceGoal[] _min_distance_goals
    (apply #'+ (send-all _min_distance_goals :serialization-length)) 4
    ;; bio_ik_msgs/MaxDistanceGoal[] _max_distance_goals
    (apply #'+ (send-all _max_distance_goals :serialization-length)) 4
    ;; bio_ik_msgs/LineGoal[] _line_goals
    (apply #'+ (send-all _line_goals :serialization-length)) 4
    ;; bio_ik_msgs/TouchGoal[] _touch_goals
    (apply #'+ (send-all _touch_goals :serialization-length)) 4
    ;; bio_ik_msgs/AvoidJointLimitsGoal[] _avoid_joint_limits_goals
    (apply #'+ (send-all _avoid_joint_limits_goals :serialization-length)) 4
    ;; bio_ik_msgs/CenterJointsGoal[] _center_joints_goals
    (apply #'+ (send-all _center_joints_goals :serialization-length)) 4
    ;; bio_ik_msgs/MinimalDisplacementGoal[] _minimal_displacement_goals
    (apply #'+ (send-all _minimal_displacement_goals :serialization-length)) 4
    ;; bio_ik_msgs/JointVariableGoal[] _joint_variable_goals
    (apply #'+ (send-all _joint_variable_goals :serialization-length)) 4
    ;; bio_ik_msgs/BalanceGoal[] _balance_goals
    (apply #'+ (send-all _balance_goals :serialization-length)) 4
    ;; bio_ik_msgs/SideGoal[] _side_goals
    (apply #'+ (send-all _side_goals :serialization-length)) 4
    ;; bio_ik_msgs/DirectionGoal[] _direction_goals
    (apply #'+ (send-all _direction_goals :serialization-length)) 4
    ;; bio_ik_msgs/ConeGoal[] _cone_goals
    (apply #'+ (send-all _cone_goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_description
       (write-long (length _robot_description) s) (princ _robot_description s)
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; bool _approximate
       (if _approximate (write-byte -1 s) (write-byte 0 s))
     ;; duration _timeout
       (write-long (send _timeout :sec) s) (write-long (send _timeout :nsec) s)
     ;; string[] _fixed_joints
     (write-long (length _fixed_joints) s)
     (dolist (elem _fixed_joints)
       (write-long (length elem) s) (princ elem s)
       )
     ;; moveit_msgs/RobotState _robot_state
       (send _robot_state :serialize s)
     ;; bool _avoid_collisions
       (if _avoid_collisions (write-byte -1 s) (write-byte 0 s))
     ;; bio_ik_msgs/PositionGoal[] _position_goals
     (write-long (length _position_goals) s)
     (dolist (elem _position_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/OrientationGoal[] _orientation_goals
     (write-long (length _orientation_goals) s)
     (dolist (elem _orientation_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/PoseGoal[] _pose_goals
     (write-long (length _pose_goals) s)
     (dolist (elem _pose_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/LookAtGoal[] _look_at_goals
     (write-long (length _look_at_goals) s)
     (dolist (elem _look_at_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/MinDistanceGoal[] _min_distance_goals
     (write-long (length _min_distance_goals) s)
     (dolist (elem _min_distance_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/MaxDistanceGoal[] _max_distance_goals
     (write-long (length _max_distance_goals) s)
     (dolist (elem _max_distance_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/LineGoal[] _line_goals
     (write-long (length _line_goals) s)
     (dolist (elem _line_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/TouchGoal[] _touch_goals
     (write-long (length _touch_goals) s)
     (dolist (elem _touch_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/AvoidJointLimitsGoal[] _avoid_joint_limits_goals
     (write-long (length _avoid_joint_limits_goals) s)
     (dolist (elem _avoid_joint_limits_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/CenterJointsGoal[] _center_joints_goals
     (write-long (length _center_joints_goals) s)
     (dolist (elem _center_joints_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/MinimalDisplacementGoal[] _minimal_displacement_goals
     (write-long (length _minimal_displacement_goals) s)
     (dolist (elem _minimal_displacement_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/JointVariableGoal[] _joint_variable_goals
     (write-long (length _joint_variable_goals) s)
     (dolist (elem _joint_variable_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/BalanceGoal[] _balance_goals
     (write-long (length _balance_goals) s)
     (dolist (elem _balance_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/SideGoal[] _side_goals
     (write-long (length _side_goals) s)
     (dolist (elem _side_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/DirectionGoal[] _direction_goals
     (write-long (length _direction_goals) s)
     (dolist (elem _direction_goals)
       (send elem :serialize s)
       )
     ;; bio_ik_msgs/ConeGoal[] _cone_goals
     (write-long (length _cone_goals) s)
     (dolist (elem _cone_goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _approximate
     (setq _approximate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; duration _timeout
     (send _timeout :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeout :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _fixed_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fixed_joints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _fixed_joints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; moveit_msgs/RobotState _robot_state
     (send _robot_state :deserialize buf ptr-) (incf ptr- (send _robot_state :serialization-length))
   ;; bool _avoid_collisions
     (setq _avoid_collisions (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bio_ik_msgs/PositionGoal[] _position_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::PositionGoal :init) r)) r))
     (dolist (elem- _position_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/OrientationGoal[] _orientation_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientation_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::OrientationGoal :init) r)) r))
     (dolist (elem- _orientation_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/PoseGoal[] _pose_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::PoseGoal :init) r)) r))
     (dolist (elem- _pose_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/LookAtGoal[] _look_at_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _look_at_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::LookAtGoal :init) r)) r))
     (dolist (elem- _look_at_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/MinDistanceGoal[] _min_distance_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min_distance_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::MinDistanceGoal :init) r)) r))
     (dolist (elem- _min_distance_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/MaxDistanceGoal[] _max_distance_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_distance_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::MaxDistanceGoal :init) r)) r))
     (dolist (elem- _max_distance_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/LineGoal[] _line_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::LineGoal :init) r)) r))
     (dolist (elem- _line_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/TouchGoal[] _touch_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _touch_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::TouchGoal :init) r)) r))
     (dolist (elem- _touch_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/AvoidJointLimitsGoal[] _avoid_joint_limits_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avoid_joint_limits_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::AvoidJointLimitsGoal :init) r)) r))
     (dolist (elem- _avoid_joint_limits_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/CenterJointsGoal[] _center_joints_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center_joints_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::CenterJointsGoal :init) r)) r))
     (dolist (elem- _center_joints_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/MinimalDisplacementGoal[] _minimal_displacement_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _minimal_displacement_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::MinimalDisplacementGoal :init) r)) r))
     (dolist (elem- _minimal_displacement_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/JointVariableGoal[] _joint_variable_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_variable_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::JointVariableGoal :init) r)) r))
     (dolist (elem- _joint_variable_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/BalanceGoal[] _balance_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _balance_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::BalanceGoal :init) r)) r))
     (dolist (elem- _balance_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/SideGoal[] _side_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _side_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::SideGoal :init) r)) r))
     (dolist (elem- _side_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/DirectionGoal[] _direction_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::DirectionGoal :init) r)) r))
     (dolist (elem- _direction_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bio_ik_msgs/ConeGoal[] _cone_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cone_goals (let (r) (dotimes (i n) (push (instance bio_ik_msgs::ConeGoal :init) r)) r))
     (dolist (elem- _cone_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get bio_ik_msgs::IKRequest :md5sum-) "c18863357cc1a388fef1f1f38d21ec53")
(setf (get bio_ik_msgs::IKRequest :datatype-) "bio_ik_msgs/IKRequest")
(setf (get bio_ik_msgs::IKRequest :definition-)
      "# Name of the rosparam parameter from which to load the robot model
# default: \"robot_description\"
string robot_description

# Name of the move group for which to compute IK
# Only joints that are part of the specified move group will be modified by the IK solver
string group_name

# If no accurate solution could be found and approximate is false,
# no solution will be returned. If approximate is true, the best
# approximate solution will be returned, even if no accurate solution could be found.
bool approximate

# IK timeout
# If no solution could be found within the specified timeout, the IK request is canceled
# and if return_approximate_solution is false, no solution is returned.
duration timeout

# Joints specified as fixed_joints will always keep their initial positions and will
# not be moved by the IK solver
string[] fixed_joints

# Initial robot state from which to start looking for IK solutions
moveit_msgs/RobotState robot_state

# If true, IK results will be checked for collisions, and IK results that result in collisions
# will be rejected.
# Collision checking requires a moveit planning scene to be present. If no planning scene was found
# the bio_ik_service node will print a ROS_ERROR message on startup or during the first collision
# aware IK request.
bool avoid_collisions

# Typed goal lists
PositionGoal[] position_goals
OrientationGoal[] orientation_goals
PoseGoal[] pose_goals
LookAtGoal[] look_at_goals
MinDistanceGoal[] min_distance_goals
MaxDistanceGoal[] max_distance_goals
LineGoal[] line_goals
TouchGoal[] touch_goals
AvoidJointLimitsGoal[] avoid_joint_limits_goals
CenterJointsGoal[] center_joints_goals
MinimalDisplacementGoal[] minimal_displacement_goals
JointVariableGoal[] joint_variable_goals
BalanceGoal[] balance_goals
SideGoal[] side_goals
DirectionGoal[] direction_goals
ConeGoal[] cone_goals

================================================================================
MSG: moveit_msgs/RobotState
# This message contains information about the robot state, i.e. the positions of its joints and links
sensor_msgs/JointState joint_state

# Joints that may have multiple DOF are specified here
sensor_msgs/MultiDOFJointState multi_dof_joint_state

# Attached collision objects (attached to some link on the robot)
AttachedCollisionObject[] attached_collision_objects

# Flag indicating whether this scene is to be interpreted as a diff with respect to some other scene
# This is mostly important for handling the attached bodies (whether or not to clear the attached bodies
# of a moveit::core::RobotState before updating it with this message)
bool is_diff

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/MultiDOFJointState
# Representation of state for joints with multiple degrees of freedom, 
# following the structure of JointState.
#
# It is assumed that a joint in a system corresponds to a transform that gets applied 
# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)
# and those 3DOF can be expressed as a transformation matrix, and that transformation
# matrix can be converted back to (x, y, yaw)
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# wrench associated with them, you can leave the wrench array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.

Header header

string[] joint_names
geometry_msgs/Transform[] transforms
geometry_msgs/Twist[] twist
geometry_msgs/Wrench[] wrench

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: moveit_msgs/AttachedCollisionObject
# The CollisionObject will be attached with a fixed joint to this link
string link_name

#This contains the actual shapes and poses for the CollisionObject
#to be attached to the link
#If action is remove and no object.id is set, all objects
#attached to the link indicated by link_name will be removed
CollisionObject object

# The set of links that the attached objects are allowed to touch
# by default - the link_name is already considered by default
string[] touch_links

# If certain links were placed in a particular posture for this object to remain attached 
# (e.g., an end effector closing around an object), the posture necessary for releasing
# the object is stored here
trajectory_msgs/JointTrajectory detach_posture

# The weight of the attached object, if known
float64 weight

================================================================================
MSG: moveit_msgs/CollisionObject
# A header, used for interpreting the poses
Header header

# The id of the object (name used in MoveIt)
string id

# The object type in a database of known objects
object_recognition_msgs/ObjectType type

# The collision geometries associated with the object.
# Their poses are with respect to the specified header

# Solid geometric primitives
shape_msgs/SolidPrimitive[] primitives
geometry_msgs/Pose[] primitive_poses

# Meshes
shape_msgs/Mesh[] meshes
geometry_msgs/Pose[] mesh_poses

# Bounding planes (equation is specified, but the plane can be oriented using an additional pose)
shape_msgs/Plane[] planes
geometry_msgs/Pose[] plane_poses

# Adds the object to the planning scene. If the object previously existed, it is replaced.
byte ADD=0

# Removes the object from the environment entirely (everything that matches the specified id)
byte REMOVE=1

# Append to an object that already exists in the planning scene. If the object does not exist, it is added.
byte APPEND=2

# If an object already exists in the scene, new poses can be sent (the geometry arrays must be left empty)
# if solely moving the object is desired
byte MOVE=3

# Operation to be performed
byte operation

================================================================================
MSG: object_recognition_msgs/ObjectType
################################################## OBJECT ID #########################################################

# Contains information about the type of a found object. Those two sets of parameters together uniquely define an
# object

# The key of the found object: the unique identifier in the given db
string key

# The db parameters stored as a JSON/compressed YAML string. An object id does not make sense without the corresponding
# database. E.g., in object_recognition, it can look like: \"{'type':'CouchDB', 'root':'http://localhost'}\"
# There is no conventional format for those parameters and it's nice to keep that flexibility.
# The object_recognition_core as a generic DB type that can read those fields
# Current examples:
# For CouchDB:
#   type: 'CouchDB'
#   root: 'http://localhost:5984'
#   collection: 'object_recognition'
# For SQL household database:
#   type: 'SqlHousehold'
#   host: 'wgs36'
#   port: 5432
#   user: 'willow'
#   password: 'willow'
#   name: 'household_objects'
#   module: 'tabletop'
string db

================================================================================
MSG: shape_msgs/SolidPrimitive
# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

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
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: shape_msgs/Plane
# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: bio_ik_msgs/PositionGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal position into which the end effector link shall be brought
geometry_msgs/Point position

================================================================================
MSG: bio_ik_msgs/OrientationGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal orientation into which the end effector link shall be brought
geometry_msgs/Quaternion orientation

================================================================================
MSG: bio_ik_msgs/PoseGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The goal pose into which the end effector link shall be brought
geometry_msgs/Pose pose

# How rotational errors will be weighted in relation to positional errors
float64 rotation_scale

================================================================================
MSG: bio_ik_msgs/LookAtGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The axis in the link's local coordinate frame which shall point towards the target
geometry_msgs/Vector3 axis

# The target point which the axis shall point at
geometry_msgs/Point target

================================================================================
MSG: bio_ik_msgs/MinDistanceGoal
# The name of this goal's end effector link
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
MSG: bio_ik_msgs/MaxDistanceGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The distance will be computed from the origin of the end effector link to the target point
geometry_msgs/Point target

# Maximum allowed distance
# Forces the end effector link to be at most the specified distance away from the target
float64 distance

================================================================================
MSG: bio_ik_msgs/LineGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# A point on the line
geometry_msgs/Point position

# Direction of the line
geometry_msgs/Vector3 direction

================================================================================
MSG: bio_ik_msgs/TouchGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# A point on the plane that shall be touched by the end effector link mesh
geometry_msgs/Point position

# The normal of the plane that shall be touched by the end effector link mesh
geometry_msgs/Vector3 normal

================================================================================
MSG: bio_ik_msgs/AvoidJointLimitsGoal
# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to true, the goal will be primary goal (like eg. position goals)
# If set to false, this goal will always have lower priority than the primary goals
bool primary

================================================================================
MSG: bio_ik_msgs/CenterJointsGoal
# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to true, the goal will be primary goal (like eg. position goals)
# If set to false, this goal will always have lower priority than the primary goals
bool primary

================================================================================
MSG: bio_ik_msgs/MinimalDisplacementGoal
# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to true, the goal will be primary goal (like eg. position goals)
# If set to false, this goal will always have lower priority than the primary goals
bool primary

================================================================================
MSG: bio_ik_msgs/JointVariableGoal
# The name of the joint variable
string variable_name

# The desired position value of the joint variable
float64 variable_position

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to false, the goal will be primary goal (like eg. position goals)
# If set to true, this goal will always have lower priority than the primary goals
bool secondary

================================================================================
MSG: bio_ik_msgs/BalanceGoal
# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The center of gravity will be pulled above this target point
geometry_msgs/Point target

# Gravity vector (optional)
geometry_msgs/Vector3 axis

================================================================================
MSG: bio_ik_msgs/SideGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

geometry_msgs/Vector3 axis

geometry_msgs/Vector3 direction

================================================================================
MSG: bio_ik_msgs/DirectionGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

geometry_msgs/Vector3 axis

geometry_msgs/Vector3 direction

================================================================================
MSG: bio_ik_msgs/ConeGoal
# The name of this goal's end effector link
string link_name

# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

geometry_msgs/Point position
float64 position_weight
geometry_msgs/Vector3 axis
geometry_msgs/Vector3 direction
float64 angle

")



(provide :bio_ik_msgs/IKRequest "c18863357cc1a388fef1f1f38d21ec53")



// Auto-generated. Do not edit!

// (in-package bio_ik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PositionGoal = require('./PositionGoal.js');
let OrientationGoal = require('./OrientationGoal.js');
let PoseGoal = require('./PoseGoal.js');
let LookAtGoal = require('./LookAtGoal.js');
let MinDistanceGoal = require('./MinDistanceGoal.js');
let MaxDistanceGoal = require('./MaxDistanceGoal.js');
let LineGoal = require('./LineGoal.js');
let TouchGoal = require('./TouchGoal.js');
let AvoidJointLimitsGoal = require('./AvoidJointLimitsGoal.js');
let CenterJointsGoal = require('./CenterJointsGoal.js');
let MinimalDisplacementGoal = require('./MinimalDisplacementGoal.js');
let JointVariableGoal = require('./JointVariableGoal.js');
let BalanceGoal = require('./BalanceGoal.js');
let SideGoal = require('./SideGoal.js');
let DirectionGoal = require('./DirectionGoal.js');
let ConeGoal = require('./ConeGoal.js');
let moveit_msgs = _finder('moveit_msgs');

//-----------------------------------------------------------

class IKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_description = null;
      this.group_name = null;
      this.approximate = null;
      this.timeout = null;
      this.fixed_joints = null;
      this.robot_state = null;
      this.avoid_collisions = null;
      this.position_goals = null;
      this.orientation_goals = null;
      this.pose_goals = null;
      this.look_at_goals = null;
      this.min_distance_goals = null;
      this.max_distance_goals = null;
      this.line_goals = null;
      this.touch_goals = null;
      this.avoid_joint_limits_goals = null;
      this.center_joints_goals = null;
      this.minimal_displacement_goals = null;
      this.joint_variable_goals = null;
      this.balance_goals = null;
      this.side_goals = null;
      this.direction_goals = null;
      this.cone_goals = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_description')) {
        this.robot_description = initObj.robot_description
      }
      else {
        this.robot_description = '';
      }
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('approximate')) {
        this.approximate = initObj.approximate
      }
      else {
        this.approximate = false;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('fixed_joints')) {
        this.fixed_joints = initObj.fixed_joints
      }
      else {
        this.fixed_joints = [];
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = new moveit_msgs.msg.RobotState();
      }
      if (initObj.hasOwnProperty('avoid_collisions')) {
        this.avoid_collisions = initObj.avoid_collisions
      }
      else {
        this.avoid_collisions = false;
      }
      if (initObj.hasOwnProperty('position_goals')) {
        this.position_goals = initObj.position_goals
      }
      else {
        this.position_goals = [];
      }
      if (initObj.hasOwnProperty('orientation_goals')) {
        this.orientation_goals = initObj.orientation_goals
      }
      else {
        this.orientation_goals = [];
      }
      if (initObj.hasOwnProperty('pose_goals')) {
        this.pose_goals = initObj.pose_goals
      }
      else {
        this.pose_goals = [];
      }
      if (initObj.hasOwnProperty('look_at_goals')) {
        this.look_at_goals = initObj.look_at_goals
      }
      else {
        this.look_at_goals = [];
      }
      if (initObj.hasOwnProperty('min_distance_goals')) {
        this.min_distance_goals = initObj.min_distance_goals
      }
      else {
        this.min_distance_goals = [];
      }
      if (initObj.hasOwnProperty('max_distance_goals')) {
        this.max_distance_goals = initObj.max_distance_goals
      }
      else {
        this.max_distance_goals = [];
      }
      if (initObj.hasOwnProperty('line_goals')) {
        this.line_goals = initObj.line_goals
      }
      else {
        this.line_goals = [];
      }
      if (initObj.hasOwnProperty('touch_goals')) {
        this.touch_goals = initObj.touch_goals
      }
      else {
        this.touch_goals = [];
      }
      if (initObj.hasOwnProperty('avoid_joint_limits_goals')) {
        this.avoid_joint_limits_goals = initObj.avoid_joint_limits_goals
      }
      else {
        this.avoid_joint_limits_goals = [];
      }
      if (initObj.hasOwnProperty('center_joints_goals')) {
        this.center_joints_goals = initObj.center_joints_goals
      }
      else {
        this.center_joints_goals = [];
      }
      if (initObj.hasOwnProperty('minimal_displacement_goals')) {
        this.minimal_displacement_goals = initObj.minimal_displacement_goals
      }
      else {
        this.minimal_displacement_goals = [];
      }
      if (initObj.hasOwnProperty('joint_variable_goals')) {
        this.joint_variable_goals = initObj.joint_variable_goals
      }
      else {
        this.joint_variable_goals = [];
      }
      if (initObj.hasOwnProperty('balance_goals')) {
        this.balance_goals = initObj.balance_goals
      }
      else {
        this.balance_goals = [];
      }
      if (initObj.hasOwnProperty('side_goals')) {
        this.side_goals = initObj.side_goals
      }
      else {
        this.side_goals = [];
      }
      if (initObj.hasOwnProperty('direction_goals')) {
        this.direction_goals = initObj.direction_goals
      }
      else {
        this.direction_goals = [];
      }
      if (initObj.hasOwnProperty('cone_goals')) {
        this.cone_goals = initObj.cone_goals
      }
      else {
        this.cone_goals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKRequest
    // Serialize message field [robot_description]
    bufferOffset = _serializer.string(obj.robot_description, buffer, bufferOffset);
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [approximate]
    bufferOffset = _serializer.bool(obj.approximate, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.duration(obj.timeout, buffer, bufferOffset);
    // Serialize message field [fixed_joints]
    bufferOffset = _arraySerializer.string(obj.fixed_joints, buffer, bufferOffset, null);
    // Serialize message field [robot_state]
    bufferOffset = moveit_msgs.msg.RobotState.serialize(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [avoid_collisions]
    bufferOffset = _serializer.bool(obj.avoid_collisions, buffer, bufferOffset);
    // Serialize message field [position_goals]
    // Serialize the length for message field [position_goals]
    bufferOffset = _serializer.uint32(obj.position_goals.length, buffer, bufferOffset);
    obj.position_goals.forEach((val) => {
      bufferOffset = PositionGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [orientation_goals]
    // Serialize the length for message field [orientation_goals]
    bufferOffset = _serializer.uint32(obj.orientation_goals.length, buffer, bufferOffset);
    obj.orientation_goals.forEach((val) => {
      bufferOffset = OrientationGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pose_goals]
    // Serialize the length for message field [pose_goals]
    bufferOffset = _serializer.uint32(obj.pose_goals.length, buffer, bufferOffset);
    obj.pose_goals.forEach((val) => {
      bufferOffset = PoseGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [look_at_goals]
    // Serialize the length for message field [look_at_goals]
    bufferOffset = _serializer.uint32(obj.look_at_goals.length, buffer, bufferOffset);
    obj.look_at_goals.forEach((val) => {
      bufferOffset = LookAtGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [min_distance_goals]
    // Serialize the length for message field [min_distance_goals]
    bufferOffset = _serializer.uint32(obj.min_distance_goals.length, buffer, bufferOffset);
    obj.min_distance_goals.forEach((val) => {
      bufferOffset = MinDistanceGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [max_distance_goals]
    // Serialize the length for message field [max_distance_goals]
    bufferOffset = _serializer.uint32(obj.max_distance_goals.length, buffer, bufferOffset);
    obj.max_distance_goals.forEach((val) => {
      bufferOffset = MaxDistanceGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [line_goals]
    // Serialize the length for message field [line_goals]
    bufferOffset = _serializer.uint32(obj.line_goals.length, buffer, bufferOffset);
    obj.line_goals.forEach((val) => {
      bufferOffset = LineGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [touch_goals]
    // Serialize the length for message field [touch_goals]
    bufferOffset = _serializer.uint32(obj.touch_goals.length, buffer, bufferOffset);
    obj.touch_goals.forEach((val) => {
      bufferOffset = TouchGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [avoid_joint_limits_goals]
    // Serialize the length for message field [avoid_joint_limits_goals]
    bufferOffset = _serializer.uint32(obj.avoid_joint_limits_goals.length, buffer, bufferOffset);
    obj.avoid_joint_limits_goals.forEach((val) => {
      bufferOffset = AvoidJointLimitsGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [center_joints_goals]
    // Serialize the length for message field [center_joints_goals]
    bufferOffset = _serializer.uint32(obj.center_joints_goals.length, buffer, bufferOffset);
    obj.center_joints_goals.forEach((val) => {
      bufferOffset = CenterJointsGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [minimal_displacement_goals]
    // Serialize the length for message field [minimal_displacement_goals]
    bufferOffset = _serializer.uint32(obj.minimal_displacement_goals.length, buffer, bufferOffset);
    obj.minimal_displacement_goals.forEach((val) => {
      bufferOffset = MinimalDisplacementGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [joint_variable_goals]
    // Serialize the length for message field [joint_variable_goals]
    bufferOffset = _serializer.uint32(obj.joint_variable_goals.length, buffer, bufferOffset);
    obj.joint_variable_goals.forEach((val) => {
      bufferOffset = JointVariableGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [balance_goals]
    // Serialize the length for message field [balance_goals]
    bufferOffset = _serializer.uint32(obj.balance_goals.length, buffer, bufferOffset);
    obj.balance_goals.forEach((val) => {
      bufferOffset = BalanceGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [side_goals]
    // Serialize the length for message field [side_goals]
    bufferOffset = _serializer.uint32(obj.side_goals.length, buffer, bufferOffset);
    obj.side_goals.forEach((val) => {
      bufferOffset = SideGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [direction_goals]
    // Serialize the length for message field [direction_goals]
    bufferOffset = _serializer.uint32(obj.direction_goals.length, buffer, bufferOffset);
    obj.direction_goals.forEach((val) => {
      bufferOffset = DirectionGoal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cone_goals]
    // Serialize the length for message field [cone_goals]
    bufferOffset = _serializer.uint32(obj.cone_goals.length, buffer, bufferOffset);
    obj.cone_goals.forEach((val) => {
      bufferOffset = ConeGoal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKRequest
    let len;
    let data = new IKRequest(null);
    // Deserialize message field [robot_description]
    data.robot_description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [approximate]
    data.approximate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [fixed_joints]
    data.fixed_joints = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [robot_state]
    data.robot_state = moveit_msgs.msg.RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [avoid_collisions]
    data.avoid_collisions = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position_goals]
    // Deserialize array length for message field [position_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.position_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.position_goals[i] = PositionGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [orientation_goals]
    // Deserialize array length for message field [orientation_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.orientation_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.orientation_goals[i] = OrientationGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pose_goals]
    // Deserialize array length for message field [pose_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_goals[i] = PoseGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [look_at_goals]
    // Deserialize array length for message field [look_at_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.look_at_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.look_at_goals[i] = LookAtGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [min_distance_goals]
    // Deserialize array length for message field [min_distance_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.min_distance_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.min_distance_goals[i] = MinDistanceGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [max_distance_goals]
    // Deserialize array length for message field [max_distance_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.max_distance_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.max_distance_goals[i] = MaxDistanceGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [line_goals]
    // Deserialize array length for message field [line_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.line_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.line_goals[i] = LineGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [touch_goals]
    // Deserialize array length for message field [touch_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.touch_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.touch_goals[i] = TouchGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [avoid_joint_limits_goals]
    // Deserialize array length for message field [avoid_joint_limits_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.avoid_joint_limits_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.avoid_joint_limits_goals[i] = AvoidJointLimitsGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center_joints_goals]
    // Deserialize array length for message field [center_joints_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.center_joints_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.center_joints_goals[i] = CenterJointsGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [minimal_displacement_goals]
    // Deserialize array length for message field [minimal_displacement_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.minimal_displacement_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.minimal_displacement_goals[i] = MinimalDisplacementGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [joint_variable_goals]
    // Deserialize array length for message field [joint_variable_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_variable_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_variable_goals[i] = JointVariableGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [balance_goals]
    // Deserialize array length for message field [balance_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.balance_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.balance_goals[i] = BalanceGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [side_goals]
    // Deserialize array length for message field [side_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.side_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.side_goals[i] = SideGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [direction_goals]
    // Deserialize array length for message field [direction_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.direction_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.direction_goals[i] = DirectionGoal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cone_goals]
    // Deserialize array length for message field [cone_goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cone_goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cone_goals[i] = ConeGoal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_description.length;
    length += object.group_name.length;
    object.fixed_joints.forEach((val) => {
      length += 4 + val.length;
    });
    length += moveit_msgs.msg.RobotState.getMessageSize(object.robot_state);
    object.position_goals.forEach((val) => {
      length += PositionGoal.getMessageSize(val);
    });
    object.orientation_goals.forEach((val) => {
      length += OrientationGoal.getMessageSize(val);
    });
    object.pose_goals.forEach((val) => {
      length += PoseGoal.getMessageSize(val);
    });
    object.look_at_goals.forEach((val) => {
      length += LookAtGoal.getMessageSize(val);
    });
    object.min_distance_goals.forEach((val) => {
      length += MinDistanceGoal.getMessageSize(val);
    });
    object.max_distance_goals.forEach((val) => {
      length += MaxDistanceGoal.getMessageSize(val);
    });
    object.line_goals.forEach((val) => {
      length += LineGoal.getMessageSize(val);
    });
    object.touch_goals.forEach((val) => {
      length += TouchGoal.getMessageSize(val);
    });
    length += 9 * object.avoid_joint_limits_goals.length;
    length += 9 * object.center_joints_goals.length;
    length += 9 * object.minimal_displacement_goals.length;
    object.joint_variable_goals.forEach((val) => {
      length += JointVariableGoal.getMessageSize(val);
    });
    length += 56 * object.balance_goals.length;
    object.side_goals.forEach((val) => {
      length += SideGoal.getMessageSize(val);
    });
    object.direction_goals.forEach((val) => {
      length += DirectionGoal.getMessageSize(val);
    });
    object.cone_goals.forEach((val) => {
      length += ConeGoal.getMessageSize(val);
    });
    return length + 86;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/IKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c18863357cc1a388fef1f1f38d21ec53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Name of the rosparam parameter from which to load the robot model
    # default: "robot_description"
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
    # database. E.g., in object_recognition, it can look like: "{'type':'CouchDB', 'root':'http://localhost'}"
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKRequest(null);
    if (msg.robot_description !== undefined) {
      resolved.robot_description = msg.robot_description;
    }
    else {
      resolved.robot_description = ''
    }

    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.approximate !== undefined) {
      resolved.approximate = msg.approximate;
    }
    else {
      resolved.approximate = false
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = {secs: 0, nsecs: 0}
    }

    if (msg.fixed_joints !== undefined) {
      resolved.fixed_joints = msg.fixed_joints;
    }
    else {
      resolved.fixed_joints = []
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = moveit_msgs.msg.RobotState.Resolve(msg.robot_state)
    }
    else {
      resolved.robot_state = new moveit_msgs.msg.RobotState()
    }

    if (msg.avoid_collisions !== undefined) {
      resolved.avoid_collisions = msg.avoid_collisions;
    }
    else {
      resolved.avoid_collisions = false
    }

    if (msg.position_goals !== undefined) {
      resolved.position_goals = new Array(msg.position_goals.length);
      for (let i = 0; i < resolved.position_goals.length; ++i) {
        resolved.position_goals[i] = PositionGoal.Resolve(msg.position_goals[i]);
      }
    }
    else {
      resolved.position_goals = []
    }

    if (msg.orientation_goals !== undefined) {
      resolved.orientation_goals = new Array(msg.orientation_goals.length);
      for (let i = 0; i < resolved.orientation_goals.length; ++i) {
        resolved.orientation_goals[i] = OrientationGoal.Resolve(msg.orientation_goals[i]);
      }
    }
    else {
      resolved.orientation_goals = []
    }

    if (msg.pose_goals !== undefined) {
      resolved.pose_goals = new Array(msg.pose_goals.length);
      for (let i = 0; i < resolved.pose_goals.length; ++i) {
        resolved.pose_goals[i] = PoseGoal.Resolve(msg.pose_goals[i]);
      }
    }
    else {
      resolved.pose_goals = []
    }

    if (msg.look_at_goals !== undefined) {
      resolved.look_at_goals = new Array(msg.look_at_goals.length);
      for (let i = 0; i < resolved.look_at_goals.length; ++i) {
        resolved.look_at_goals[i] = LookAtGoal.Resolve(msg.look_at_goals[i]);
      }
    }
    else {
      resolved.look_at_goals = []
    }

    if (msg.min_distance_goals !== undefined) {
      resolved.min_distance_goals = new Array(msg.min_distance_goals.length);
      for (let i = 0; i < resolved.min_distance_goals.length; ++i) {
        resolved.min_distance_goals[i] = MinDistanceGoal.Resolve(msg.min_distance_goals[i]);
      }
    }
    else {
      resolved.min_distance_goals = []
    }

    if (msg.max_distance_goals !== undefined) {
      resolved.max_distance_goals = new Array(msg.max_distance_goals.length);
      for (let i = 0; i < resolved.max_distance_goals.length; ++i) {
        resolved.max_distance_goals[i] = MaxDistanceGoal.Resolve(msg.max_distance_goals[i]);
      }
    }
    else {
      resolved.max_distance_goals = []
    }

    if (msg.line_goals !== undefined) {
      resolved.line_goals = new Array(msg.line_goals.length);
      for (let i = 0; i < resolved.line_goals.length; ++i) {
        resolved.line_goals[i] = LineGoal.Resolve(msg.line_goals[i]);
      }
    }
    else {
      resolved.line_goals = []
    }

    if (msg.touch_goals !== undefined) {
      resolved.touch_goals = new Array(msg.touch_goals.length);
      for (let i = 0; i < resolved.touch_goals.length; ++i) {
        resolved.touch_goals[i] = TouchGoal.Resolve(msg.touch_goals[i]);
      }
    }
    else {
      resolved.touch_goals = []
    }

    if (msg.avoid_joint_limits_goals !== undefined) {
      resolved.avoid_joint_limits_goals = new Array(msg.avoid_joint_limits_goals.length);
      for (let i = 0; i < resolved.avoid_joint_limits_goals.length; ++i) {
        resolved.avoid_joint_limits_goals[i] = AvoidJointLimitsGoal.Resolve(msg.avoid_joint_limits_goals[i]);
      }
    }
    else {
      resolved.avoid_joint_limits_goals = []
    }

    if (msg.center_joints_goals !== undefined) {
      resolved.center_joints_goals = new Array(msg.center_joints_goals.length);
      for (let i = 0; i < resolved.center_joints_goals.length; ++i) {
        resolved.center_joints_goals[i] = CenterJointsGoal.Resolve(msg.center_joints_goals[i]);
      }
    }
    else {
      resolved.center_joints_goals = []
    }

    if (msg.minimal_displacement_goals !== undefined) {
      resolved.minimal_displacement_goals = new Array(msg.minimal_displacement_goals.length);
      for (let i = 0; i < resolved.minimal_displacement_goals.length; ++i) {
        resolved.minimal_displacement_goals[i] = MinimalDisplacementGoal.Resolve(msg.minimal_displacement_goals[i]);
      }
    }
    else {
      resolved.minimal_displacement_goals = []
    }

    if (msg.joint_variable_goals !== undefined) {
      resolved.joint_variable_goals = new Array(msg.joint_variable_goals.length);
      for (let i = 0; i < resolved.joint_variable_goals.length; ++i) {
        resolved.joint_variable_goals[i] = JointVariableGoal.Resolve(msg.joint_variable_goals[i]);
      }
    }
    else {
      resolved.joint_variable_goals = []
    }

    if (msg.balance_goals !== undefined) {
      resolved.balance_goals = new Array(msg.balance_goals.length);
      for (let i = 0; i < resolved.balance_goals.length; ++i) {
        resolved.balance_goals[i] = BalanceGoal.Resolve(msg.balance_goals[i]);
      }
    }
    else {
      resolved.balance_goals = []
    }

    if (msg.side_goals !== undefined) {
      resolved.side_goals = new Array(msg.side_goals.length);
      for (let i = 0; i < resolved.side_goals.length; ++i) {
        resolved.side_goals[i] = SideGoal.Resolve(msg.side_goals[i]);
      }
    }
    else {
      resolved.side_goals = []
    }

    if (msg.direction_goals !== undefined) {
      resolved.direction_goals = new Array(msg.direction_goals.length);
      for (let i = 0; i < resolved.direction_goals.length; ++i) {
        resolved.direction_goals[i] = DirectionGoal.Resolve(msg.direction_goals[i]);
      }
    }
    else {
      resolved.direction_goals = []
    }

    if (msg.cone_goals !== undefined) {
      resolved.cone_goals = new Array(msg.cone_goals.length);
      for (let i = 0; i < resolved.cone_goals.length; ++i) {
        resolved.cone_goals[i] = ConeGoal.Resolve(msg.cone_goals[i]);
      }
    }
    else {
      resolved.cone_goals = []
    }

    return resolved;
    }
};

module.exports = IKRequest;

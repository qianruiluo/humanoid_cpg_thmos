// Auto-generated. Do not edit!

// (in-package bio_ik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PoseGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_name = null;
      this.weight = null;
      this.pose = null;
      this.rotation_scale = null;
    }
    else {
      if (initObj.hasOwnProperty('link_name')) {
        this.link_name = initObj.link_name
      }
      else {
        this.link_name = '';
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('rotation_scale')) {
        this.rotation_scale = initObj.rotation_scale
      }
      else {
        this.rotation_scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseGoal
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [rotation_scale]
    bufferOffset = _serializer.float64(obj.rotation_scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseGoal
    let len;
    let data = new PoseGoal(null);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation_scale]
    data.rotation_scale = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link_name.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/PoseGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab4e8566ca0cc9b21ea1ca6eeaaa55d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseGoal(null);
    if (msg.link_name !== undefined) {
      resolved.link_name = msg.link_name;
    }
    else {
      resolved.link_name = ''
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.rotation_scale !== undefined) {
      resolved.rotation_scale = msg.rotation_scale;
    }
    else {
      resolved.rotation_scale = 0.0
    }

    return resolved;
    }
};

module.exports = PoseGoal;

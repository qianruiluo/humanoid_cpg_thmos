// Auto-generated. Do not edit!

// (in-package bio_ik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointVariableGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.variable_name = null;
      this.variable_position = null;
      this.weight = null;
      this.secondary = null;
    }
    else {
      if (initObj.hasOwnProperty('variable_name')) {
        this.variable_name = initObj.variable_name
      }
      else {
        this.variable_name = '';
      }
      if (initObj.hasOwnProperty('variable_position')) {
        this.variable_position = initObj.variable_position
      }
      else {
        this.variable_position = 0.0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('secondary')) {
        this.secondary = initObj.secondary
      }
      else {
        this.secondary = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointVariableGoal
    // Serialize message field [variable_name]
    bufferOffset = _serializer.string(obj.variable_name, buffer, bufferOffset);
    // Serialize message field [variable_position]
    bufferOffset = _serializer.float64(obj.variable_position, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [secondary]
    bufferOffset = _serializer.bool(obj.secondary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointVariableGoal
    let len;
    let data = new JointVariableGoal(null);
    // Deserialize message field [variable_name]
    data.variable_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [variable_position]
    data.variable_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [secondary]
    data.secondary = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.variable_name.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/JointVariableGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee6ea02a53bfdacf34c1c1097ce15d71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointVariableGoal(null);
    if (msg.variable_name !== undefined) {
      resolved.variable_name = msg.variable_name;
    }
    else {
      resolved.variable_name = ''
    }

    if (msg.variable_position !== undefined) {
      resolved.variable_position = msg.variable_position;
    }
    else {
      resolved.variable_position = 0.0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.secondary !== undefined) {
      resolved.secondary = msg.secondary;
    }
    else {
      resolved.secondary = false
    }

    return resolved;
    }
};

module.exports = JointVariableGoal;

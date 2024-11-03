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

class AvoidJointLimitsGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.weight = null;
      this.primary = null;
    }
    else {
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('primary')) {
        this.primary = initObj.primary
      }
      else {
        this.primary = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvoidJointLimitsGoal
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [primary]
    bufferOffset = _serializer.bool(obj.primary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvoidJointLimitsGoal
    let len;
    let data = new AvoidJointLimitsGoal(null);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [primary]
    data.primary = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/AvoidJointLimitsGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccbc658a4d415bcd21aba09a68bf23dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Weight of the current goal
    # Goals with a higher weight will have a stronger influence than goals with a smaller weight
    float64 weight
    
    # If set to true, the goal will be primary goal (like eg. position goals)
    # If set to false, this goal will always have lower priority than the primary goals
    bool primary
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvoidJointLimitsGoal(null);
    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.primary !== undefined) {
      resolved.primary = msg.primary;
    }
    else {
      resolved.primary = false
    }

    return resolved;
    }
};

module.exports = AvoidJointLimitsGoal;

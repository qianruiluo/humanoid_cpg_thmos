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

class BalanceGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.weight = null;
      this.target = null;
      this.axis = null;
    }
    else {
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BalanceGoal
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [axis]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.axis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BalanceGoal
    let len;
    let data = new BalanceGoal(null);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [axis]
    data.axis = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/BalanceGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a41c41e95b53d1061e0af70f43304d5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Weight of the current goal
    # Goals with a higher weight will have a stronger influence than goals with a smaller weight
    float64 weight
    
    # The center of gravity will be pulled above this target point
    geometry_msgs/Point target
    
    # Gravity vector (optional)
    geometry_msgs/Vector3 axis
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BalanceGoal(null);
    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.target !== undefined) {
      resolved.target = geometry_msgs.msg.Point.Resolve(msg.target)
    }
    else {
      resolved.target = new geometry_msgs.msg.Point()
    }

    if (msg.axis !== undefined) {
      resolved.axis = geometry_msgs.msg.Vector3.Resolve(msg.axis)
    }
    else {
      resolved.axis = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = BalanceGoal;

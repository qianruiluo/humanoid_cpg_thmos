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

class MinDistanceGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_name = null;
      this.weight = null;
      this.target = null;
      this.distance = null;
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
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MinDistanceGoal
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MinDistanceGoal
    let len;
    let data = new MinDistanceGoal(null);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link_name.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/MinDistanceGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcfa7c3e29387935515d0e4b0708f298';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new MinDistanceGoal(null);
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

    if (msg.target !== undefined) {
      resolved.target = geometry_msgs.msg.Point.Resolve(msg.target)
    }
    else {
      resolved.target = new geometry_msgs.msg.Point()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = MinDistanceGoal;

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

class DirectionGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_name = null;
      this.weight = null;
      this.axis = null;
      this.direction = null;
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
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DirectionGoal
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float64(obj.weight, buffer, bufferOffset);
    // Serialize message field [axis]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.axis, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DirectionGoal
    let len;
    let data = new DirectionGoal(null);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [axis]
    data.axis = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link_name.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bio_ik_msgs/DirectionGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6075759add2b8333cf00f76cb2d6cc74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The name of this goal's end effector link
    string link_name
    
    # Weight of the current goal
    # Goals with a higher weight will have a stronger influence than goals with a smaller weight
    float64 weight
    
    geometry_msgs/Vector3 axis
    
    geometry_msgs/Vector3 direction
    
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
    const resolved = new DirectionGoal(null);
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

    if (msg.axis !== undefined) {
      resolved.axis = geometry_msgs.msg.Vector3.Resolve(msg.axis)
    }
    else {
      resolved.axis = new geometry_msgs.msg.Vector3()
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = DirectionGoal;

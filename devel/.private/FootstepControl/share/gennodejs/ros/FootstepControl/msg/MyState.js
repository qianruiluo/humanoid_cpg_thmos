// Auto-generated. Do not edit!

// (in-package FootstepControl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cx = null;
      this.dcx = null;
      this.cy = null;
      this.dcy = null;
      this.is_left_support = null;
      this.is_right_support = null;
    }
    else {
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = 0.0;
      }
      if (initObj.hasOwnProperty('dcx')) {
        this.dcx = initObj.dcx
      }
      else {
        this.dcx = 0.0;
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = 0.0;
      }
      if (initObj.hasOwnProperty('dcy')) {
        this.dcy = initObj.dcy
      }
      else {
        this.dcy = 0.0;
      }
      if (initObj.hasOwnProperty('is_left_support')) {
        this.is_left_support = initObj.is_left_support
      }
      else {
        this.is_left_support = 0;
      }
      if (initObj.hasOwnProperty('is_right_support')) {
        this.is_right_support = initObj.is_right_support
      }
      else {
        this.is_right_support = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MyState
    // Serialize message field [cx]
    bufferOffset = _serializer.float64(obj.cx, buffer, bufferOffset);
    // Serialize message field [dcx]
    bufferOffset = _serializer.float64(obj.dcx, buffer, bufferOffset);
    // Serialize message field [cy]
    bufferOffset = _serializer.float64(obj.cy, buffer, bufferOffset);
    // Serialize message field [dcy]
    bufferOffset = _serializer.float64(obj.dcy, buffer, bufferOffset);
    // Serialize message field [is_left_support]
    bufferOffset = _serializer.uint8(obj.is_left_support, buffer, bufferOffset);
    // Serialize message field [is_right_support]
    bufferOffset = _serializer.uint8(obj.is_right_support, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MyState
    let len;
    let data = new MyState(null);
    // Deserialize message field [cx]
    data.cx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dcx]
    data.dcx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cy]
    data.cy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dcy]
    data.dcy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_left_support]
    data.is_left_support = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_right_support]
    data.is_right_support = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'FootstepControl/MyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4493873f0a72e816f885a561816cfc96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 cx
    float64 dcx
    float64 cy
    float64 dcy
    uint8 is_left_support
    uint8 is_right_support
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MyState(null);
    if (msg.cx !== undefined) {
      resolved.cx = msg.cx;
    }
    else {
      resolved.cx = 0.0
    }

    if (msg.dcx !== undefined) {
      resolved.dcx = msg.dcx;
    }
    else {
      resolved.dcx = 0.0
    }

    if (msg.cy !== undefined) {
      resolved.cy = msg.cy;
    }
    else {
      resolved.cy = 0.0
    }

    if (msg.dcy !== undefined) {
      resolved.dcy = msg.dcy;
    }
    else {
      resolved.dcy = 0.0
    }

    if (msg.is_left_support !== undefined) {
      resolved.is_left_support = msg.is_left_support;
    }
    else {
      resolved.is_left_support = 0
    }

    if (msg.is_right_support !== undefined) {
      resolved.is_right_support = msg.is_right_support;
    }
    else {
      resolved.is_right_support = 0
    }

    return resolved;
    }
};

module.exports = MyState;

// Auto-generated. Do not edit!

// (in-package fsc.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CpgParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ax = null;
      this.ay = null;
      this.ar = null;
      this.T = null;
    }
    else {
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('ar')) {
        this.ar = initObj.ar
      }
      else {
        this.ar = 0.0;
      }
      if (initObj.hasOwnProperty('T')) {
        this.T = initObj.T
      }
      else {
        this.T = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CpgParam
    // Serialize message field [ax]
    bufferOffset = _serializer.float64(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float64(obj.ay, buffer, bufferOffset);
    // Serialize message field [ar]
    bufferOffset = _serializer.float64(obj.ar, buffer, bufferOffset);
    // Serialize message field [T]
    bufferOffset = _serializer.float64(obj.T, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CpgParam
    let len;
    let data = new CpgParam(null);
    // Deserialize message field [ax]
    data.ax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ar]
    data.ar = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [T]
    data.T = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsc/CpgParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9655a65c5483d537755b7beecffd1fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ax
    float64 ay
    float64 ar
    float64 T
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CpgParam(null);
    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.ar !== undefined) {
      resolved.ar = msg.ar;
    }
    else {
      resolved.ar = 0.0
    }

    if (msg.T !== undefined) {
      resolved.T = msg.T;
    }
    else {
      resolved.T = 0.0
    }

    return resolved;
    }
};

module.exports = CpgParam;

// Auto-generated. Do not edit!

// (in-package FootstepControl.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetVRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.vy = null;
      this.vr = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vr')) {
        this.vr = initObj.vr
      }
      else {
        this.vr = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetVRequest
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vr]
    bufferOffset = _serializer.float64(obj.vr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetVRequest
    let len;
    let data = new SetVRequest(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vr]
    data.vr = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'FootstepControl/SetVRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8362ce87c5ed325fb041904db410063b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 vx
    float64 vy
    float64 vr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetVRequest(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vr !== undefined) {
      resolved.vr = msg.vr;
    }
    else {
      resolved.vr = 0.0
    }

    return resolved;
    }
};

class SetVResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetVResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetVResponse
    let len;
    let data = new SetVResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'FootstepControl/SetVResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetVResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetVRequest,
  Response: SetVResponse,
  md5sum() { return '8362ce87c5ed325fb041904db410063b'; },
  datatype() { return 'FootstepControl/SetV'; }
};

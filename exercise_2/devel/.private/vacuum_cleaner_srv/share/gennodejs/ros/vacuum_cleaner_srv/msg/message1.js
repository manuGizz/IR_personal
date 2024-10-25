// Auto-generated. Do not edit!

// (in-package vacuum_cleaner_srv.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class message1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.roomName = null;
      this.batteryStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('roomName')) {
        this.roomName = initObj.roomName
      }
      else {
        this.roomName = '';
      }
      if (initObj.hasOwnProperty('batteryStatus')) {
        this.batteryStatus = initObj.batteryStatus
      }
      else {
        this.batteryStatus = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type message1
    // Serialize message field [ID]
    bufferOffset = _serializer.int32(obj.ID, buffer, bufferOffset);
    // Serialize message field [roomName]
    bufferOffset = _serializer.string(obj.roomName, buffer, bufferOffset);
    // Serialize message field [batteryStatus]
    bufferOffset = _serializer.float32(obj.batteryStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type message1
    let len;
    let data = new message1(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [roomName]
    data.roomName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [batteryStatus]
    data.batteryStatus = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.roomName);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vacuum_cleaner_srv/message1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acd1e05bd975455a68392bd190d3066a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ID
    string roomName
    float32 batteryStatus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new message1(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.roomName !== undefined) {
      resolved.roomName = msg.roomName;
    }
    else {
      resolved.roomName = ''
    }

    if (msg.batteryStatus !== undefined) {
      resolved.batteryStatus = msg.batteryStatus;
    }
    else {
      resolved.batteryStatus = 0.0
    }

    return resolved;
    }
};

module.exports = message1;

// Auto-generated. Do not edit!

// (in-package baxter_maintenance_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TareData = require('./TareData.js');

//-----------------------------------------------------------

class TareEnable {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isEnabled = null;
      this.uid = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('isEnabled')) {
        this.isEnabled = initObj.isEnabled
      }
      else {
        this.isEnabled = false;
      }
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new TareData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TareEnable
    // Serialize message field [isEnabled]
    bufferOffset = _serializer.bool(obj.isEnabled, buffer, bufferOffset);
    // Serialize message field [uid]
    bufferOffset = _serializer.string(obj.uid, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = TareData.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TareEnable
    let len;
    let data = new TareEnable(null);
    // Deserialize message field [isEnabled]
    data.isEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [uid]
    data.uid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = TareData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uid);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'baxter_maintenance_msgs/TareEnable';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d38ec0923789ab928453d933bef8c51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isEnabled
    string uid
    TareData data
    
    ================================================================================
    MSG: baxter_maintenance_msgs/TareData
    bool tuneGravitySpring
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TareEnable(null);
    if (msg.isEnabled !== undefined) {
      resolved.isEnabled = msg.isEnabled;
    }
    else {
      resolved.isEnabled = false
    }

    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = ''
    }

    if (msg.data !== undefined) {
      resolved.data = TareData.Resolve(msg.data)
    }
    else {
      resolved.data = new TareData()
    }

    return resolved;
    }
};

module.exports = TareEnable;

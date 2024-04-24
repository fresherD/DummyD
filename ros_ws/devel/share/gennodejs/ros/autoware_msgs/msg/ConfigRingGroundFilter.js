// Auto-generated. Do not edit!

// (in-package autoware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConfigRingGroundFilter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_model = null;
      this.sensor_height = null;
      this.max_slope = null;
      this.point_distance = null;
      this.min_point = null;
      this.clipping_thres = null;
      this.gap_thres = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_model')) {
        this.sensor_model = initObj.sensor_model
      }
      else {
        this.sensor_model = '';
      }
      if (initObj.hasOwnProperty('sensor_height')) {
        this.sensor_height = initObj.sensor_height
      }
      else {
        this.sensor_height = 0.0;
      }
      if (initObj.hasOwnProperty('max_slope')) {
        this.max_slope = initObj.max_slope
      }
      else {
        this.max_slope = 0.0;
      }
      if (initObj.hasOwnProperty('point_distance')) {
        this.point_distance = initObj.point_distance
      }
      else {
        this.point_distance = 0.0;
      }
      if (initObj.hasOwnProperty('min_point')) {
        this.min_point = initObj.min_point
      }
      else {
        this.min_point = 0.0;
      }
      if (initObj.hasOwnProperty('clipping_thres')) {
        this.clipping_thres = initObj.clipping_thres
      }
      else {
        this.clipping_thres = 0.0;
      }
      if (initObj.hasOwnProperty('gap_thres')) {
        this.gap_thres = initObj.gap_thres
      }
      else {
        this.gap_thres = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigRingGroundFilter
    // Serialize message field [sensor_model]
    bufferOffset = _serializer.string(obj.sensor_model, buffer, bufferOffset);
    // Serialize message field [sensor_height]
    bufferOffset = _serializer.float32(obj.sensor_height, buffer, bufferOffset);
    // Serialize message field [max_slope]
    bufferOffset = _serializer.float32(obj.max_slope, buffer, bufferOffset);
    // Serialize message field [point_distance]
    bufferOffset = _serializer.float32(obj.point_distance, buffer, bufferOffset);
    // Serialize message field [min_point]
    bufferOffset = _serializer.float32(obj.min_point, buffer, bufferOffset);
    // Serialize message field [clipping_thres]
    bufferOffset = _serializer.float32(obj.clipping_thres, buffer, bufferOffset);
    // Serialize message field [gap_thres]
    bufferOffset = _serializer.float32(obj.gap_thres, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigRingGroundFilter
    let len;
    let data = new ConfigRingGroundFilter(null);
    // Deserialize message field [sensor_model]
    data.sensor_model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_height]
    data.sensor_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_slope]
    data.max_slope = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_distance]
    data.point_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_point]
    data.min_point = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [clipping_thres]
    data.clipping_thres = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gap_thres]
    data.gap_thres = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensor_model.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_msgs/ConfigRingGroundFilter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29b10a55bebbea4ca5fa23de06d152d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sensor_model
    float32 sensor_height
    float32 max_slope
    float32 point_distance
    float32 min_point
    float32 clipping_thres
    float32 gap_thres
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigRingGroundFilter(null);
    if (msg.sensor_model !== undefined) {
      resolved.sensor_model = msg.sensor_model;
    }
    else {
      resolved.sensor_model = ''
    }

    if (msg.sensor_height !== undefined) {
      resolved.sensor_height = msg.sensor_height;
    }
    else {
      resolved.sensor_height = 0.0
    }

    if (msg.max_slope !== undefined) {
      resolved.max_slope = msg.max_slope;
    }
    else {
      resolved.max_slope = 0.0
    }

    if (msg.point_distance !== undefined) {
      resolved.point_distance = msg.point_distance;
    }
    else {
      resolved.point_distance = 0.0
    }

    if (msg.min_point !== undefined) {
      resolved.min_point = msg.min_point;
    }
    else {
      resolved.min_point = 0.0
    }

    if (msg.clipping_thres !== undefined) {
      resolved.clipping_thres = msg.clipping_thres;
    }
    else {
      resolved.clipping_thres = 0.0
    }

    if (msg.gap_thres !== undefined) {
      resolved.gap_thres = msg.gap_thres;
    }
    else {
      resolved.gap_thres = 0.0
    }

    return resolved;
    }
};

module.exports = ConfigRingGroundFilter;

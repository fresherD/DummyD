// Auto-generated. Do not edit!

// (in-package autoware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let dtlane = require('./dtlane.js');
let WaypointState = require('./WaypointState.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gid = null;
      this.lid = null;
      this.pose = null;
      this.twist = null;
      this.dtlane = null;
      this.change_flag = null;
      this.wpstate = null;
    }
    else {
      if (initObj.hasOwnProperty('gid')) {
        this.gid = initObj.gid
      }
      else {
        this.gid = 0;
      }
      if (initObj.hasOwnProperty('lid')) {
        this.lid = initObj.lid
      }
      else {
        this.lid = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.TwistStamped();
      }
      if (initObj.hasOwnProperty('dtlane')) {
        this.dtlane = initObj.dtlane
      }
      else {
        this.dtlane = new dtlane();
      }
      if (initObj.hasOwnProperty('change_flag')) {
        this.change_flag = initObj.change_flag
      }
      else {
        this.change_flag = 0;
      }
      if (initObj.hasOwnProperty('wpstate')) {
        this.wpstate = initObj.wpstate
      }
      else {
        this.wpstate = new WaypointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type waypoint
    // Serialize message field [gid]
    bufferOffset = _serializer.int32(obj.gid, buffer, bufferOffset);
    // Serialize message field [lid]
    bufferOffset = _serializer.int32(obj.lid, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.TwistStamped.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [dtlane]
    bufferOffset = dtlane.serialize(obj.dtlane, buffer, bufferOffset);
    // Serialize message field [change_flag]
    bufferOffset = _serializer.int32(obj.change_flag, buffer, bufferOffset);
    // Serialize message field [wpstate]
    bufferOffset = WaypointState.serialize(obj.wpstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type waypoint
    let len;
    let data = new waypoint(null);
    // Deserialize message field [gid]
    data.gid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lid]
    data.lid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.TwistStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [dtlane]
    data.dtlane = dtlane.deserialize(buffer, bufferOffset);
    // Deserialize message field [change_flag]
    data.change_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wpstate]
    data.wpstate = WaypointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += geometry_msgs.msg.TwistStamped.getMessageSize(object.twist);
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_msgs/waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f42e6a8fdd936a989d454b327851bb01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # global id
    int32 gid 
    # local id
    int32 lid
    geometry_msgs/PoseStamped pose
    geometry_msgs/TwistStamped twist
    dtlane dtlane
    int32 change_flag
    WaypointState wpstate
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    ================================================================================
    MSG: autoware_msgs/dtlane
    float64 dist
    float64 dir
    float64 apara
    float64 r
    float64 slope
    float64 cant
    float64 lw
    float64 rw
    
    ================================================================================
    MSG: autoware_msgs/WaypointState
    int32 aid
    uint8 NULLSTATE=0
    uint8 lanechange_state
    
    uint8 steering_state
    uint8 STR_LEFT=1
    uint8 STR_RIGHT=2
    uint8 STR_STRAIGHT=3
    
    uint8 accel_state
    uint8 stopline_state
      uint8 TYPE_NULL=0
      uint8 TYPE_STOPLINE=1
      uint8 TYPE_STOP=2
    # 1 is stopline, 2 is stop which 2 can only be released manually.
    uint64 event_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new waypoint(null);
    if (msg.gid !== undefined) {
      resolved.gid = msg.gid;
    }
    else {
      resolved.gid = 0
    }

    if (msg.lid !== undefined) {
      resolved.lid = msg.lid;
    }
    else {
      resolved.lid = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.TwistStamped.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.TwistStamped()
    }

    if (msg.dtlane !== undefined) {
      resolved.dtlane = dtlane.Resolve(msg.dtlane)
    }
    else {
      resolved.dtlane = new dtlane()
    }

    if (msg.change_flag !== undefined) {
      resolved.change_flag = msg.change_flag;
    }
    else {
      resolved.change_flag = 0
    }

    if (msg.wpstate !== undefined) {
      resolved.wpstate = WaypointState.Resolve(msg.wpstate)
    }
    else {
      resolved.wpstate = new WaypointState()
    }

    return resolved;
    }
};

module.exports = waypoint;

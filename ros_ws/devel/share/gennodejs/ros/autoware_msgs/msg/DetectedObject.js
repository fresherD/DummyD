// Auto-generated. Do not edit!

// (in-package autoware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneArray = require('./LaneArray.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.label = null;
      this.pose = null;
      this.dimensions = null;
      this.variance = null;
      this.velocity = null;
      this.convex_hull = null;
      this.candidate_trajectories = null;
      this.pose_reliable = null;
      this.velocity_reliable = null;
      this.behavior_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('variance')) {
        this.variance = initObj.variance
      }
      else {
        this.variance = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('convex_hull')) {
        this.convex_hull = initObj.convex_hull
      }
      else {
        this.convex_hull = new geometry_msgs.msg.PolygonStamped();
      }
      if (initObj.hasOwnProperty('candidate_trajectories')) {
        this.candidate_trajectories = initObj.candidate_trajectories
      }
      else {
        this.candidate_trajectories = new LaneArray();
      }
      if (initObj.hasOwnProperty('pose_reliable')) {
        this.pose_reliable = initObj.pose_reliable
      }
      else {
        this.pose_reliable = false;
      }
      if (initObj.hasOwnProperty('velocity_reliable')) {
        this.velocity_reliable = initObj.velocity_reliable
      }
      else {
        this.velocity_reliable = false;
      }
      if (initObj.hasOwnProperty('behavior_state')) {
        this.behavior_state = initObj.behavior_state
      }
      else {
        this.behavior_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    // Serialize message field [variance]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.variance, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [convex_hull]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.convex_hull, buffer, bufferOffset);
    // Serialize message field [candidate_trajectories]
    bufferOffset = LaneArray.serialize(obj.candidate_trajectories, buffer, bufferOffset);
    // Serialize message field [pose_reliable]
    bufferOffset = _serializer.bool(obj.pose_reliable, buffer, bufferOffset);
    // Serialize message field [velocity_reliable]
    bufferOffset = _serializer.bool(obj.velocity_reliable, buffer, bufferOffset);
    // Serialize message field [behavior_state]
    bufferOffset = _serializer.uint32(obj.behavior_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObject
    let len;
    let data = new DetectedObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [variance]
    data.variance = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [convex_hull]
    data.convex_hull = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [candidate_trajectories]
    data.candidate_trajectories = LaneArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_reliable]
    data.pose_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity_reliable]
    data.velocity_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [behavior_state]
    data.behavior_state = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.label.length;
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.convex_hull);
    length += LaneArray.getMessageSize(object.candidate_trajectories);
    return length + 166;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_msgs/DetectedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c06586ec9d717a6bea036a0fc1901bdd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint32 id
    string label
    
    geometry_msgs/Pose pose
    geometry_msgs/Vector3 dimensions
    geometry_msgs/Vector3 variance
    geometry_msgs/Twist velocity
    
    geometry_msgs/PolygonStamped convex_hull
    autoware_msgs/LaneArray candidate_trajectories
    
    bool pose_reliable
    bool velocity_reliable
    
    # Behavior State of the Detected Object
    # FORWARD_STATE			= 0
    # STOPPING_STATE 		= 1
    # BRANCH_LEFT_STATE		= 2
    # BRANCH_RIGHT_STATE	= 3 
    # YIELDING_STATE		= 4
    # ACCELERATING_STATE	= 5
    # SLOWDOWN_STATE 		= 6
    
    uint32 behavior_state
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: autoware_msgs/LaneArray
    lane[] lanes
    ================================================================================
    MSG: autoware_msgs/lane
    Header header
    int32 increment
    int32 lane_id
    waypoint[] waypoints
    
    ================================================================================
    MSG: autoware_msgs/waypoint
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
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
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
    const resolved = new DetectedObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    if (msg.variance !== undefined) {
      resolved.variance = geometry_msgs.msg.Vector3.Resolve(msg.variance)
    }
    else {
      resolved.variance = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.convex_hull !== undefined) {
      resolved.convex_hull = geometry_msgs.msg.PolygonStamped.Resolve(msg.convex_hull)
    }
    else {
      resolved.convex_hull = new geometry_msgs.msg.PolygonStamped()
    }

    if (msg.candidate_trajectories !== undefined) {
      resolved.candidate_trajectories = LaneArray.Resolve(msg.candidate_trajectories)
    }
    else {
      resolved.candidate_trajectories = new LaneArray()
    }

    if (msg.pose_reliable !== undefined) {
      resolved.pose_reliable = msg.pose_reliable;
    }
    else {
      resolved.pose_reliable = false
    }

    if (msg.velocity_reliable !== undefined) {
      resolved.velocity_reliable = msg.velocity_reliable;
    }
    else {
      resolved.velocity_reliable = false
    }

    if (msg.behavior_state !== undefined) {
      resolved.behavior_state = msg.behavior_state;
    }
    else {
      resolved.behavior_state = 0
    }

    return resolved;
    }
};

module.exports = DetectedObject;

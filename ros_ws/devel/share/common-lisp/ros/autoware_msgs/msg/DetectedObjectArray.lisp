; Auto-generated. Do not edit!


(cl:in-package autoware_msgs-msg)


;//! \htmlinclude DetectedObjectArray.msg.html

(cl:defclass <DetectedObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector autoware_msgs-msg:DetectedObject)
   :initform (cl:make-array 0 :element-type 'autoware_msgs-msg:DetectedObject :initial-element (cl:make-instance 'autoware_msgs-msg:DetectedObject))))
)

(cl:defclass DetectedObjectArray (<DetectedObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_msgs-msg:<DetectedObjectArray> is deprecated: use autoware_msgs-msg:DetectedObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:header-val is deprecated.  Use autoware_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DetectedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:objects-val is deprecated.  Use autoware_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObjectArray>) ostream)
  "Serializes a message object of type '<DetectedObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObjectArray>) istream)
  "Deserializes a message object of type '<DetectedObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_msgs-msg:DetectedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObjectArray>)))
  "Returns string type for a message object of type '<DetectedObjectArray>"
  "autoware_msgs/DetectedObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObjectArray)))
  "Returns string type for a message object of type 'DetectedObjectArray"
  "autoware_msgs/DetectedObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObjectArray>)))
  "Returns md5sum for a message object of type '<DetectedObjectArray>"
  "d360796682d5aaa5d9244996f9cea815")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObjectArray)))
  "Returns md5sum for a message object of type 'DetectedObjectArray"
  "d360796682d5aaa5d9244996f9cea815")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObjectArray>)))
  "Returns full string definition for message of type '<DetectedObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: autoware_msgs/DetectedObject~%std_msgs/Header header~%~%uint32 id~%string label~%~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Vector3 variance~%geometry_msgs/Twist velocity~%~%geometry_msgs/PolygonStamped convex_hull~%autoware_msgs/LaneArray candidate_trajectories~%~%bool pose_reliable~%bool velocity_reliable~%~%# Behavior State of the Detected Object~%# FORWARD_STATE			= 0~%# STOPPING_STATE 		= 1~%# BRANCH_LEFT_STATE		= 2~%# BRANCH_RIGHT_STATE	= 3 ~%# YIELDING_STATE		= 4~%# ACCELERATING_STATE	= 5~%# SLOWDOWN_STATE 		= 6~%~%uint32 behavior_state~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: autoware_msgs/LaneArray~%lane[] lanes~%================================================================================~%MSG: autoware_msgs/lane~%Header header~%int32 increment~%int32 lane_id~%waypoint[] waypoints~%~%================================================================================~%MSG: autoware_msgs/waypoint~%# global id~%int32 gid ~%# local id~%int32 lid~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%WaypointState wpstate~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: autoware_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%================================================================================~%MSG: autoware_msgs/WaypointState~%int32 aid~%uint8 NULLSTATE=0~%uint8 lanechange_state~%~%uint8 steering_state~%uint8 STR_LEFT=1~%uint8 STR_RIGHT=2~%uint8 STR_STRAIGHT=3~%~%uint8 accel_state~%uint8 stopline_state~%  uint8 TYPE_NULL=0~%  uint8 TYPE_STOPLINE=1~%  uint8 TYPE_STOP=2~%# 1 is stopline, 2 is stop which 2 can only be released manually.~%uint64 event_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObjectArray)))
  "Returns full string definition for message of type 'DetectedObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: autoware_msgs/DetectedObject~%std_msgs/Header header~%~%uint32 id~%string label~%~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Vector3 variance~%geometry_msgs/Twist velocity~%~%geometry_msgs/PolygonStamped convex_hull~%autoware_msgs/LaneArray candidate_trajectories~%~%bool pose_reliable~%bool velocity_reliable~%~%# Behavior State of the Detected Object~%# FORWARD_STATE			= 0~%# STOPPING_STATE 		= 1~%# BRANCH_LEFT_STATE		= 2~%# BRANCH_RIGHT_STATE	= 3 ~%# YIELDING_STATE		= 4~%# ACCELERATING_STATE	= 5~%# SLOWDOWN_STATE 		= 6~%~%uint32 behavior_state~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: autoware_msgs/LaneArray~%lane[] lanes~%================================================================================~%MSG: autoware_msgs/lane~%Header header~%int32 increment~%int32 lane_id~%waypoint[] waypoints~%~%================================================================================~%MSG: autoware_msgs/waypoint~%# global id~%int32 gid ~%# local id~%int32 lid~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%WaypointState wpstate~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: autoware_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%================================================================================~%MSG: autoware_msgs/WaypointState~%int32 aid~%uint8 NULLSTATE=0~%uint8 lanechange_state~%~%uint8 steering_state~%uint8 STR_LEFT=1~%uint8 STR_RIGHT=2~%uint8 STR_STRAIGHT=3~%~%uint8 accel_state~%uint8 stopline_state~%  uint8 TYPE_NULL=0~%  uint8 TYPE_STOPLINE=1~%  uint8 TYPE_STOP=2~%# 1 is stopline, 2 is stop which 2 can only be released manually.~%uint64 event_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))

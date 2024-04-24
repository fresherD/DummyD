;; Auto-generated. Do not edit!


(when (boundp 'autoware_msgs::DetectedObjectArray)
  (if (not (find-package "AUTOWARE_MSGS"))
    (make-package "AUTOWARE_MSGS"))
  (shadow 'DetectedObjectArray (find-package "AUTOWARE_MSGS")))
(unless (find-package "AUTOWARE_MSGS::DETECTEDOBJECTARRAY")
  (make-package "AUTOWARE_MSGS::DETECTEDOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_msgs::DetectedObjectArray
  :super ros::object
  :slots (_header _objects ))

(defmethod autoware_msgs::DetectedObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance autoware_msgs::DetectedObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_msgs/DetectedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_msgs/DetectedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_msgs/DetectedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance autoware_msgs::DetectedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_msgs::DetectedObjectArray :md5sum-) "d360796682d5aaa5d9244996f9cea815")
(setf (get autoware_msgs::DetectedObjectArray :datatype-) "autoware_msgs/DetectedObjectArray")
(setf (get autoware_msgs::DetectedObjectArray :definition-)
      "std_msgs/Header header
DetectedObject[] objects
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
MSG: autoware_msgs/DetectedObject
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

")



(provide :autoware_msgs/DetectedObjectArray "d360796682d5aaa5d9244996f9cea815")



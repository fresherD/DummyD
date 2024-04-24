;; Auto-generated. Do not edit!


(when (boundp 'autoware_msgs::DetectedObject)
  (if (not (find-package "AUTOWARE_MSGS"))
    (make-package "AUTOWARE_MSGS"))
  (shadow 'DetectedObject (find-package "AUTOWARE_MSGS")))
(unless (find-package "AUTOWARE_MSGS::DETECTEDOBJECT")
  (make-package "AUTOWARE_MSGS::DETECTEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_msgs::DetectedObject
  :super ros::object
  :slots (_header _id _label _pose _dimensions _variance _velocity _convex_hull _candidate_trajectories _pose_reliable _velocity_reliable _behavior_state ))

(defmethod autoware_msgs::DetectedObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:label __label) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:variance __variance) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:convex_hull __convex_hull) (instance geometry_msgs::PolygonStamped :init))
    ((:candidate_trajectories __candidate_trajectories) (instance autoware_msgs::LaneArray :init))
    ((:pose_reliable __pose_reliable) nil)
    ((:velocity_reliable __velocity_reliable) nil)
    ((:behavior_state __behavior_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _label (string __label))
   (setq _pose __pose)
   (setq _dimensions __dimensions)
   (setq _variance __variance)
   (setq _velocity __velocity)
   (setq _convex_hull __convex_hull)
   (setq _candidate_trajectories __candidate_trajectories)
   (setq _pose_reliable __pose_reliable)
   (setq _velocity_reliable __velocity_reliable)
   (setq _behavior_state (round __behavior_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:variance
   (&rest __variance)
   (if (keywordp (car __variance))
       (send* _variance __variance)
     (progn
       (if __variance (setq _variance (car __variance)))
       _variance)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:convex_hull
   (&rest __convex_hull)
   (if (keywordp (car __convex_hull))
       (send* _convex_hull __convex_hull)
     (progn
       (if __convex_hull (setq _convex_hull (car __convex_hull)))
       _convex_hull)))
  (:candidate_trajectories
   (&rest __candidate_trajectories)
   (if (keywordp (car __candidate_trajectories))
       (send* _candidate_trajectories __candidate_trajectories)
     (progn
       (if __candidate_trajectories (setq _candidate_trajectories (car __candidate_trajectories)))
       _candidate_trajectories)))
  (:pose_reliable
   (&optional __pose_reliable)
   (if __pose_reliable (setq _pose_reliable __pose_reliable)) _pose_reliable)
  (:velocity_reliable
   (&optional __velocity_reliable)
   (if __velocity_reliable (setq _velocity_reliable __velocity_reliable)) _velocity_reliable)
  (:behavior_state
   (&optional __behavior_state)
   (if __behavior_state (setq _behavior_state __behavior_state)) _behavior_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Vector3 _variance
    (send _variance :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/PolygonStamped _convex_hull
    (send _convex_hull :serialization-length)
    ;; autoware_msgs/LaneArray _candidate_trajectories
    (send _candidate_trajectories :serialization-length)
    ;; bool _pose_reliable
    1
    ;; bool _velocity_reliable
    1
    ;; uint32 _behavior_state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Vector3 _variance
       (send _variance :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/PolygonStamped _convex_hull
       (send _convex_hull :serialize s)
     ;; autoware_msgs/LaneArray _candidate_trajectories
       (send _candidate_trajectories :serialize s)
     ;; bool _pose_reliable
       (if _pose_reliable (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_reliable
       (if _velocity_reliable (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _behavior_state
       (write-long _behavior_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Vector3 _variance
     (send _variance :deserialize buf ptr-) (incf ptr- (send _variance :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/PolygonStamped _convex_hull
     (send _convex_hull :deserialize buf ptr-) (incf ptr- (send _convex_hull :serialization-length))
   ;; autoware_msgs/LaneArray _candidate_trajectories
     (send _candidate_trajectories :deserialize buf ptr-) (incf ptr- (send _candidate_trajectories :serialization-length))
   ;; bool _pose_reliable
     (setq _pose_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_reliable
     (setq _velocity_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _behavior_state
     (setq _behavior_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_msgs::DetectedObject :md5sum-) "c06586ec9d717a6bea036a0fc1901bdd")
(setf (get autoware_msgs::DetectedObject :datatype-) "autoware_msgs/DetectedObject")
(setf (get autoware_msgs::DetectedObject :definition-)
      "std_msgs/Header header

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

")



(provide :autoware_msgs/DetectedObject "c06586ec9d717a6bea036a0fc1901bdd")



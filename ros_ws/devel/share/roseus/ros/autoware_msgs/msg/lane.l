;; Auto-generated. Do not edit!


(when (boundp 'autoware_msgs::lane)
  (if (not (find-package "AUTOWARE_MSGS"))
    (make-package "AUTOWARE_MSGS"))
  (shadow 'lane (find-package "AUTOWARE_MSGS")))
(unless (find-package "AUTOWARE_MSGS::LANE")
  (make-package "AUTOWARE_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude lane.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_msgs::lane
  :super ros::object
  :slots (_header _increment _lane_id _waypoints ))

(defmethod autoware_msgs::lane
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:increment __increment) 0)
    ((:lane_id __lane_id) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance autoware_msgs::waypoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _increment (round __increment))
   (setq _lane_id (round __lane_id))
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:increment
   (&optional __increment)
   (if __increment (setq _increment __increment)) _increment)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _increment
    4
    ;; int32 _lane_id
    4
    ;; autoware_msgs/waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _increment
       (write-long _increment s)
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; autoware_msgs/waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _increment
     (setq _increment (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; autoware_msgs/waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance autoware_msgs::waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_msgs::lane :md5sum-) "3c63bd29455064c5c0c6658b234a2e48")
(setf (get autoware_msgs::lane :datatype-) "autoware_msgs/lane")
(setf (get autoware_msgs::lane :definition-)
      "Header header
int32 increment
int32 lane_id
waypoint[] waypoints

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

")



(provide :autoware_msgs/lane "3c63bd29455064c5c0c6658b234a2e48")



// Generated by gencpp from file autoware_msgs/VehicleCmd.msg
// DO NOT EDIT!


#ifndef AUTOWARE_MSGS_MESSAGE_VEHICLECMD_H
#define AUTOWARE_MSGS_MESSAGE_VEHICLECMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <autoware_msgs/steer_cmd.h>
#include <autoware_msgs/accel_cmd.h>
#include <autoware_msgs/brake_cmd.h>
#include <autoware_msgs/lamp_cmd.h>
#include <geometry_msgs/TwistStamped.h>
#include <autoware_msgs/ControlCommand.h>

namespace autoware_msgs
{
template <class ContainerAllocator>
struct VehicleCmd_
{
  typedef VehicleCmd_<ContainerAllocator> Type;

  VehicleCmd_()
    : header()
    , steer_cmd()
    , accel_cmd()
    , brake_cmd()
    , lamp_cmd()
    , gear(0)
    , mode(0)
    , twist_cmd()
    , ctrl_cmd()
    , emergency(0)  {
    }
  VehicleCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steer_cmd(_alloc)
    , accel_cmd(_alloc)
    , brake_cmd(_alloc)
    , lamp_cmd(_alloc)
    , gear(0)
    , mode(0)
    , twist_cmd(_alloc)
    , ctrl_cmd(_alloc)
    , emergency(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::autoware_msgs::steer_cmd_<ContainerAllocator>  _steer_cmd_type;
  _steer_cmd_type steer_cmd;

   typedef  ::autoware_msgs::accel_cmd_<ContainerAllocator>  _accel_cmd_type;
  _accel_cmd_type accel_cmd;

   typedef  ::autoware_msgs::brake_cmd_<ContainerAllocator>  _brake_cmd_type;
  _brake_cmd_type brake_cmd;

   typedef  ::autoware_msgs::lamp_cmd_<ContainerAllocator>  _lamp_cmd_type;
  _lamp_cmd_type lamp_cmd;

   typedef int32_t _gear_type;
  _gear_type gear;

   typedef int32_t _mode_type;
  _mode_type mode;

   typedef  ::geometry_msgs::TwistStamped_<ContainerAllocator>  _twist_cmd_type;
  _twist_cmd_type twist_cmd;

   typedef  ::autoware_msgs::ControlCommand_<ContainerAllocator>  _ctrl_cmd_type;
  _ctrl_cmd_type ctrl_cmd;

   typedef int32_t _emergency_type;
  _emergency_type emergency;





  typedef boost::shared_ptr< ::autoware_msgs::VehicleCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_msgs::VehicleCmd_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleCmd_

typedef ::autoware_msgs::VehicleCmd_<std::allocator<void> > VehicleCmd;

typedef boost::shared_ptr< ::autoware_msgs::VehicleCmd > VehicleCmdPtr;
typedef boost::shared_ptr< ::autoware_msgs::VehicleCmd const> VehicleCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_msgs::VehicleCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace autoware_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pcl_msgs': ['/opt/ros/kinetic/share/pcl_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'jsk_footstep_msgs': ['/opt/ros/kinetic/share/jsk_footstep_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'jsk_recognition_msgs': ['/opt/ros/kinetic/share/jsk_recognition_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'autoware_msgs': ['/root/ros_ws/src/autoware_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::VehicleCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::VehicleCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::VehicleCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "153301368e83526f24c12f8e8cddf283";
  }

  static const char* value(const ::autoware_msgs::VehicleCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x153301368e83526fULL;
  static const uint64_t static_value2 = 0x24c12f8e8cddf283ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_msgs/VehicleCmd";
  }

  static const char* value(const ::autoware_msgs::VehicleCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
autoware_msgs/steer_cmd steer_cmd\n\
autoware_msgs/accel_cmd accel_cmd\n\
autoware_msgs/brake_cmd brake_cmd\n\
autoware_msgs/lamp_cmd lamp_cmd\n\
int32 gear\n\
int32 mode\n\
geometry_msgs/TwistStamped twist_cmd\n\
autoware_msgs/ControlCommand ctrl_cmd\n\
int32 emergency\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: autoware_msgs/steer_cmd\n\
Header header\n\
int32 steer\n\
\n\
================================================================================\n\
MSG: autoware_msgs/accel_cmd\n\
Header header\n\
int32 accel\n\
\n\
================================================================================\n\
MSG: autoware_msgs/brake_cmd\n\
Header header\n\
int32 brake\n\
\n\
================================================================================\n\
MSG: autoware_msgs/lamp_cmd\n\
Header header\n\
int32 l\n\
int32 r\n\
\n\
================================================================================\n\
MSG: geometry_msgs/TwistStamped\n\
# A twist with reference coordinate frame and timestamp\n\
Header header\n\
Twist twist\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: autoware_msgs/ControlCommand\n\
float64 linear_velocity\n\
float64 linear_acceleration #m/s^2\n\
float64 steering_angle\n\
";
  }

  static const char* value(const ::autoware_msgs::VehicleCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steer_cmd);
      stream.next(m.accel_cmd);
      stream.next(m.brake_cmd);
      stream.next(m.lamp_cmd);
      stream.next(m.gear);
      stream.next(m.mode);
      stream.next(m.twist_cmd);
      stream.next(m.ctrl_cmd);
      stream.next(m.emergency);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_msgs::VehicleCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_msgs::VehicleCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steer_cmd: ";
    s << std::endl;
    Printer< ::autoware_msgs::steer_cmd_<ContainerAllocator> >::stream(s, indent + "  ", v.steer_cmd);
    s << indent << "accel_cmd: ";
    s << std::endl;
    Printer< ::autoware_msgs::accel_cmd_<ContainerAllocator> >::stream(s, indent + "  ", v.accel_cmd);
    s << indent << "brake_cmd: ";
    s << std::endl;
    Printer< ::autoware_msgs::brake_cmd_<ContainerAllocator> >::stream(s, indent + "  ", v.brake_cmd);
    s << indent << "lamp_cmd: ";
    s << std::endl;
    Printer< ::autoware_msgs::lamp_cmd_<ContainerAllocator> >::stream(s, indent + "  ", v.lamp_cmd);
    s << indent << "gear: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gear);
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
    s << indent << "twist_cmd: ";
    s << std::endl;
    Printer< ::geometry_msgs::TwistStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.twist_cmd);
    s << indent << "ctrl_cmd: ";
    s << std::endl;
    Printer< ::autoware_msgs::ControlCommand_<ContainerAllocator> >::stream(s, indent + "  ", v.ctrl_cmd);
    s << indent << "emergency: ";
    Printer<int32_t>::stream(s, indent + "  ", v.emergency);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_MSGS_MESSAGE_VEHICLECMD_H

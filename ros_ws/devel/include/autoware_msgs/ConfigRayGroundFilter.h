// Generated by gencpp from file autoware_msgs/ConfigRayGroundFilter.msg
// DO NOT EDIT!


#ifndef AUTOWARE_MSGS_MESSAGE_CONFIGRAYGROUNDFILTER_H
#define AUTOWARE_MSGS_MESSAGE_CONFIGRAYGROUNDFILTER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autoware_msgs
{
template <class ContainerAllocator>
struct ConfigRayGroundFilter_
{
  typedef ConfigRayGroundFilter_<ContainerAllocator> Type;

  ConfigRayGroundFilter_()
    : header()
    , sensor_height(0.0)
    , clipping_height(0.0)
    , min_point_distance(0.0)
    , radial_divider_angle(0.0)
    , concentric_divider_distance(0.0)
    , local_max_slope(0.0)
    , general_max_slope(0.0)
    , min_height_threshold(0.0)
    , reclass_distance_threshold(0.0)  {
    }
  ConfigRayGroundFilter_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sensor_height(0.0)
    , clipping_height(0.0)
    , min_point_distance(0.0)
    , radial_divider_angle(0.0)
    , concentric_divider_distance(0.0)
    , local_max_slope(0.0)
    , general_max_slope(0.0)
    , min_height_threshold(0.0)
    , reclass_distance_threshold(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _sensor_height_type;
  _sensor_height_type sensor_height;

   typedef double _clipping_height_type;
  _clipping_height_type clipping_height;

   typedef double _min_point_distance_type;
  _min_point_distance_type min_point_distance;

   typedef double _radial_divider_angle_type;
  _radial_divider_angle_type radial_divider_angle;

   typedef double _concentric_divider_distance_type;
  _concentric_divider_distance_type concentric_divider_distance;

   typedef double _local_max_slope_type;
  _local_max_slope_type local_max_slope;

   typedef double _general_max_slope_type;
  _general_max_slope_type general_max_slope;

   typedef double _min_height_threshold_type;
  _min_height_threshold_type min_height_threshold;

   typedef double _reclass_distance_threshold_type;
  _reclass_distance_threshold_type reclass_distance_threshold;





  typedef boost::shared_ptr< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigRayGroundFilter_

typedef ::autoware_msgs::ConfigRayGroundFilter_<std::allocator<void> > ConfigRayGroundFilter;

typedef boost::shared_ptr< ::autoware_msgs::ConfigRayGroundFilter > ConfigRayGroundFilterPtr;
typedef boost::shared_ptr< ::autoware_msgs::ConfigRayGroundFilter const> ConfigRayGroundFilterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1b9a20593709b07932fff996671d4ed6";
  }

  static const char* value(const ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1b9a20593709b079ULL;
  static const uint64_t static_value2 = 0x32fff996671d4ed6ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_msgs/ConfigRayGroundFilter";
  }

  static const char* value(const ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
\n\
float64  sensor_height\n\
float64  clipping_height\n\
float64  min_point_distance\n\
float64  radial_divider_angle\n\
float64  concentric_divider_distance\n\
float64  local_max_slope\n\
float64  general_max_slope\n\
float64  min_height_threshold\n\
float64  reclass_distance_threshold\n\
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
";
  }

  static const char* value(const ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sensor_height);
      stream.next(m.clipping_height);
      stream.next(m.min_point_distance);
      stream.next(m.radial_divider_angle);
      stream.next(m.concentric_divider_distance);
      stream.next(m.local_max_slope);
      stream.next(m.general_max_slope);
      stream.next(m.min_height_threshold);
      stream.next(m.reclass_distance_threshold);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigRayGroundFilter_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_msgs::ConfigRayGroundFilter_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sensor_height: ";
    Printer<double>::stream(s, indent + "  ", v.sensor_height);
    s << indent << "clipping_height: ";
    Printer<double>::stream(s, indent + "  ", v.clipping_height);
    s << indent << "min_point_distance: ";
    Printer<double>::stream(s, indent + "  ", v.min_point_distance);
    s << indent << "radial_divider_angle: ";
    Printer<double>::stream(s, indent + "  ", v.radial_divider_angle);
    s << indent << "concentric_divider_distance: ";
    Printer<double>::stream(s, indent + "  ", v.concentric_divider_distance);
    s << indent << "local_max_slope: ";
    Printer<double>::stream(s, indent + "  ", v.local_max_slope);
    s << indent << "general_max_slope: ";
    Printer<double>::stream(s, indent + "  ", v.general_max_slope);
    s << indent << "min_height_threshold: ";
    Printer<double>::stream(s, indent + "  ", v.min_height_threshold);
    s << indent << "reclass_distance_threshold: ";
    Printer<double>::stream(s, indent + "  ", v.reclass_distance_threshold);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_MSGS_MESSAGE_CONFIGRAYGROUNDFILTER_H

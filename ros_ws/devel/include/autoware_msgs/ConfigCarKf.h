// Generated by gencpp from file autoware_msgs/ConfigCarKf.msg
// DO NOT EDIT!


#ifndef AUTOWARE_MSGS_MESSAGE_CONFIGCARKF_H
#define AUTOWARE_MSGS_MESSAGE_CONFIGCARKF_H


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
struct ConfigCarKf_
{
  typedef ConfigCarKf_<ContainerAllocator> Type;

  ConfigCarKf_()
    : header()
    , initial_lifespan(0)
    , default_lifespan(0)
    , noise_covariance(0.0)
    , measurement_noise_covariance(0.0)
    , error_estimate_covariance(0.0)
    , percentage_of_overlapping(0.0)
    , orb_features(0)
    , use_orb(0)  {
    }
  ConfigCarKf_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , initial_lifespan(0)
    , default_lifespan(0)
    , noise_covariance(0.0)
    , measurement_noise_covariance(0.0)
    , error_estimate_covariance(0.0)
    , percentage_of_overlapping(0.0)
    , orb_features(0)
    , use_orb(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _initial_lifespan_type;
  _initial_lifespan_type initial_lifespan;

   typedef int32_t _default_lifespan_type;
  _default_lifespan_type default_lifespan;

   typedef float _noise_covariance_type;
  _noise_covariance_type noise_covariance;

   typedef float _measurement_noise_covariance_type;
  _measurement_noise_covariance_type measurement_noise_covariance;

   typedef float _error_estimate_covariance_type;
  _error_estimate_covariance_type error_estimate_covariance;

   typedef float _percentage_of_overlapping_type;
  _percentage_of_overlapping_type percentage_of_overlapping;

   typedef int32_t _orb_features_type;
  _orb_features_type orb_features;

   typedef int32_t _use_orb_type;
  _use_orb_type use_orb;





  typedef boost::shared_ptr< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigCarKf_

typedef ::autoware_msgs::ConfigCarKf_<std::allocator<void> > ConfigCarKf;

typedef boost::shared_ptr< ::autoware_msgs::ConfigCarKf > ConfigCarKfPtr;
typedef boost::shared_ptr< ::autoware_msgs::ConfigCarKf const> ConfigCarKfConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_msgs::ConfigCarKf_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
{
  static const char* value()
  {
    return "35fb5980cbba7f237457ede929c58aa9";
  }

  static const char* value(const ::autoware_msgs::ConfigCarKf_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x35fb5980cbba7f23ULL;
  static const uint64_t static_value2 = 0x7457ede929c58aa9ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_msgs/ConfigCarKf";
  }

  static const char* value(const ::autoware_msgs::ConfigCarKf_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 initial_lifespan\n\
int32 default_lifespan\n\
float32 noise_covariance\n\
float32 measurement_noise_covariance\n\
float32 error_estimate_covariance\n\
float32 percentage_of_overlapping\n\
int32 orb_features\n\
int32 use_orb\n\
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

  static const char* value(const ::autoware_msgs::ConfigCarKf_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.initial_lifespan);
      stream.next(m.default_lifespan);
      stream.next(m.noise_covariance);
      stream.next(m.measurement_noise_covariance);
      stream.next(m.error_estimate_covariance);
      stream.next(m.percentage_of_overlapping);
      stream.next(m.orb_features);
      stream.next(m.use_orb);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigCarKf_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_msgs::ConfigCarKf_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_msgs::ConfigCarKf_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "initial_lifespan: ";
    Printer<int32_t>::stream(s, indent + "  ", v.initial_lifespan);
    s << indent << "default_lifespan: ";
    Printer<int32_t>::stream(s, indent + "  ", v.default_lifespan);
    s << indent << "noise_covariance: ";
    Printer<float>::stream(s, indent + "  ", v.noise_covariance);
    s << indent << "measurement_noise_covariance: ";
    Printer<float>::stream(s, indent + "  ", v.measurement_noise_covariance);
    s << indent << "error_estimate_covariance: ";
    Printer<float>::stream(s, indent + "  ", v.error_estimate_covariance);
    s << indent << "percentage_of_overlapping: ";
    Printer<float>::stream(s, indent + "  ", v.percentage_of_overlapping);
    s << indent << "orb_features: ";
    Printer<int32_t>::stream(s, indent + "  ", v.orb_features);
    s << indent << "use_orb: ";
    Printer<int32_t>::stream(s, indent + "  ", v.use_orb);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_MSGS_MESSAGE_CONFIGCARKF_H

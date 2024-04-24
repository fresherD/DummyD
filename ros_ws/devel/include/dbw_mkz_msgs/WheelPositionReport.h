// Generated by gencpp from file dbw_mkz_msgs/WheelPositionReport.msg
// DO NOT EDIT!


#ifndef DBW_MKZ_MSGS_MESSAGE_WHEELPOSITIONREPORT_H
#define DBW_MKZ_MSGS_MESSAGE_WHEELPOSITIONREPORT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace dbw_mkz_msgs
{
template <class ContainerAllocator>
struct WheelPositionReport_
{
  typedef WheelPositionReport_<ContainerAllocator> Type;

  WheelPositionReport_()
    : header()
    , front_left(0)
    , front_right(0)
    , rear_left(0)
    , rear_right(0)  {
    }
  WheelPositionReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , front_left(0)
    , front_right(0)
    , rear_left(0)
    , rear_right(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _front_left_type;
  _front_left_type front_left;

   typedef int16_t _front_right_type;
  _front_right_type front_right;

   typedef int16_t _rear_left_type;
  _rear_left_type rear_left;

   typedef int16_t _rear_right_type;
  _rear_right_type rear_right;




  static const float COUNTS_PER_REV;

  typedef boost::shared_ptr< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> const> ConstPtr;

}; // struct WheelPositionReport_

typedef ::dbw_mkz_msgs::WheelPositionReport_<std::allocator<void> > WheelPositionReport;

typedef boost::shared_ptr< ::dbw_mkz_msgs::WheelPositionReport > WheelPositionReportPtr;
typedef boost::shared_ptr< ::dbw_mkz_msgs::WheelPositionReport const> WheelPositionReportConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const float
      WheelPositionReport_<ContainerAllocator>::COUNTS_PER_REV =
        
          125.5
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dbw_mkz_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/root/ros_ws/src/dbw_mkz_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0e6f28c4c7a099c93cc2173da9808a16";
  }

  static const char* value(const ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0e6f28c4c7a099c9ULL;
  static const uint64_t static_value2 = 0x3cc2173da9808a16ULL;
};

template<class ContainerAllocator>
struct DataType< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbw_mkz_msgs/WheelPositionReport";
  }

  static const char* value(const ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# Wheel positions (counts)\n\
int16 front_left\n\
int16 front_right\n\
int16 rear_left\n\
int16 rear_right\n\
\n\
# Conversion factor\n\
float32 COUNTS_PER_REV=125.5\n\
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
";
  }

  static const char* value(const ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.front_left);
      stream.next(m.front_right);
      stream.next(m.rear_left);
      stream.next(m.rear_right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelPositionReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dbw_mkz_msgs::WheelPositionReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "front_left: ";
    Printer<int16_t>::stream(s, indent + "  ", v.front_left);
    s << indent << "front_right: ";
    Printer<int16_t>::stream(s, indent + "  ", v.front_right);
    s << indent << "rear_left: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rear_left);
    s << indent << "rear_right: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rear_right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DBW_MKZ_MSGS_MESSAGE_WHEELPOSITIONREPORT_H

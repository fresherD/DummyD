// Generated by gencpp from file autoware_msgs/PointsImage.msg
// DO NOT EDIT!


#ifndef AUTOWARE_MSGS_MESSAGE_POINTSIMAGE_H
#define AUTOWARE_MSGS_MESSAGE_POINTSIMAGE_H


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
struct PointsImage_
{
  typedef PointsImage_<ContainerAllocator> Type;

  PointsImage_()
    : header()
    , distance()
    , intensity()
    , min_height()
    , max_height()
    , max_y(0)
    , min_y(0)
    , image_height(0)
    , image_width(0)  {
    }
  PointsImage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , distance(_alloc)
    , intensity(_alloc)
    , min_height(_alloc)
    , max_height(_alloc)
    , max_y(0)
    , min_y(0)
    , image_height(0)
    , image_width(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _distance_type;
  _distance_type distance;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _intensity_type;
  _intensity_type intensity;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _min_height_type;
  _min_height_type min_height;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _max_height_type;
  _max_height_type max_height;

   typedef int32_t _max_y_type;
  _max_y_type max_y;

   typedef int32_t _min_y_type;
  _min_y_type min_y;

   typedef int32_t _image_height_type;
  _image_height_type image_height;

   typedef int32_t _image_width_type;
  _image_width_type image_width;





  typedef boost::shared_ptr< ::autoware_msgs::PointsImage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_msgs::PointsImage_<ContainerAllocator> const> ConstPtr;

}; // struct PointsImage_

typedef ::autoware_msgs::PointsImage_<std::allocator<void> > PointsImage;

typedef boost::shared_ptr< ::autoware_msgs::PointsImage > PointsImagePtr;
typedef boost::shared_ptr< ::autoware_msgs::PointsImage const> PointsImageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_msgs::PointsImage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_msgs::PointsImage_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::autoware_msgs::PointsImage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_msgs::PointsImage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::PointsImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_msgs::PointsImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::PointsImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_msgs::PointsImage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_msgs::PointsImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "15d4a81152c2787f78cf14a957d8135e";
  }

  static const char* value(const ::autoware_msgs::PointsImage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x15d4a81152c2787fULL;
  static const uint64_t static_value2 = 0x78cf14a957d8135eULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_msgs::PointsImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_msgs/PointsImage";
  }

  static const char* value(const ::autoware_msgs::PointsImage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_msgs::PointsImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32[] distance\n\
float32[] intensity\n\
float32[] min_height\n\
float32[] max_height\n\
int32 max_y\n\
int32 min_y\n\
int32 image_height\n\
int32 image_width\n\
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

  static const char* value(const ::autoware_msgs::PointsImage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_msgs::PointsImage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.distance);
      stream.next(m.intensity);
      stream.next(m.min_height);
      stream.next(m.max_height);
      stream.next(m.max_y);
      stream.next(m.min_y);
      stream.next(m.image_height);
      stream.next(m.image_width);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PointsImage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_msgs::PointsImage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_msgs::PointsImage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "distance[]" << std::endl;
    for (size_t i = 0; i < v.distance.size(); ++i)
    {
      s << indent << "  distance[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.distance[i]);
    }
    s << indent << "intensity[]" << std::endl;
    for (size_t i = 0; i < v.intensity.size(); ++i)
    {
      s << indent << "  intensity[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.intensity[i]);
    }
    s << indent << "min_height[]" << std::endl;
    for (size_t i = 0; i < v.min_height.size(); ++i)
    {
      s << indent << "  min_height[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.min_height[i]);
    }
    s << indent << "max_height[]" << std::endl;
    for (size_t i = 0; i < v.max_height.size(); ++i)
    {
      s << indent << "  max_height[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.max_height[i]);
    }
    s << indent << "max_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.max_y);
    s << indent << "min_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.min_y);
    s << indent << "image_height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.image_height);
    s << indent << "image_width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.image_width);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_MSGS_MESSAGE_POINTSIMAGE_H

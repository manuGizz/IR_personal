// Generated by gencpp from file vacuum_cleaner_srv/service1Response.msg
// DO NOT EDIT!


#ifndef VACUUM_CLEANER_SRV_MESSAGE_SERVICE1RESPONSE_H
#define VACUUM_CLEANER_SRV_MESSAGE_SERVICE1RESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vacuum_cleaner_srv/message1.h>

namespace vacuum_cleaner_srv
{
template <class ContainerAllocator>
struct service1Response_
{
  typedef service1Response_<ContainerAllocator> Type;

  service1Response_()
    : header()
    , info_robot()  {
    }
  service1Response_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , info_robot(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::vacuum_cleaner_srv::message1_<ContainerAllocator>  _info_robot_type;
  _info_robot_type info_robot;





  typedef boost::shared_ptr< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> const> ConstPtr;

}; // struct service1Response_

typedef ::vacuum_cleaner_srv::service1Response_<std::allocator<void> > service1Response;

typedef boost::shared_ptr< ::vacuum_cleaner_srv::service1Response > service1ResponsePtr;
typedef boost::shared_ptr< ::vacuum_cleaner_srv::service1Response const> service1ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator1> & lhs, const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.info_robot == rhs.info_robot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator1> & lhs, const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vacuum_cleaner_srv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc3adc72d2509a4687f33f47a4f584ad";
  }

  static const char* value(const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc3adc72d2509a46ULL;
  static const uint64_t static_value2 = 0x87f33f47a4f584adULL;
};

template<class ContainerAllocator>
struct DataType< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vacuum_cleaner_srv/service1Response";
  }

  static const char* value(const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"message1 info_robot\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: vacuum_cleaner_srv/message1\n"
"int32 ID\n"
"string roomName\n"
"float32 batteryStatus\n"
;
  }

  static const char* value(const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.info_robot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct service1Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vacuum_cleaner_srv::service1Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vacuum_cleaner_srv::service1Response_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "info_robot: ";
    s << std::endl;
    Printer< ::vacuum_cleaner_srv::message1_<ContainerAllocator> >::stream(s, indent + "  ", v.info_robot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VACUUM_CLEANER_SRV_MESSAGE_SERVICE1RESPONSE_H
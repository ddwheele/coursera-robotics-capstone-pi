// Generated by gencpp from file dynamic_reconfigure/ReconfigureResponse.msg
// DO NOT EDIT!


#ifndef DYNAMIC_RECONFIGURE_MESSAGE_RECONFIGURERESPONSE_H
#define DYNAMIC_RECONFIGURE_MESSAGE_RECONFIGURERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dynamic_reconfigure/Config.h>

namespace dynamic_reconfigure
{
template <class ContainerAllocator>
struct ReconfigureResponse_
{
  typedef ReconfigureResponse_<ContainerAllocator> Type;

  ReconfigureResponse_()
    : config()  {
    }
  ReconfigureResponse_(const ContainerAllocator& _alloc)
    : config(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dynamic_reconfigure::Config_<ContainerAllocator>  _config_type;
  _config_type config;




  typedef boost::shared_ptr< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ReconfigureResponse_

typedef ::dynamic_reconfigure::ReconfigureResponse_<std::allocator<void> > ReconfigureResponse;

typedef boost::shared_ptr< ::dynamic_reconfigure::ReconfigureResponse > ReconfigureResponsePtr;
typedef boost::shared_ptr< ::dynamic_reconfigure::ReconfigureResponse const> ReconfigureResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dynamic_reconfigure

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'dynamic_reconfigure': ['/home/pi/ros_catkin_ws/src/dynamic_reconfigure/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac41a77620a4a0348b7001641796a8a1";
  }

  static const char* value(const ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac41a77620a4a034ULL;
  static const uint64_t static_value2 = 0x8b7001641796a8a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamic_reconfigure/ReconfigureResponse";
  }

  static const char* value(const ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Config config\n\
\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/Config\n\
BoolParameter[] bools\n\
IntParameter[] ints\n\
StrParameter[] strs\n\
DoubleParameter[] doubles\n\
GroupState[] groups\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/BoolParameter\n\
string name\n\
bool value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/IntParameter\n\
string name\n\
int32 value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/StrParameter\n\
string name\n\
string value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/DoubleParameter\n\
string name\n\
float64 value\n\
\n\
================================================================================\n\
MSG: dynamic_reconfigure/GroupState\n\
string name\n\
bool state\n\
int32 id\n\
int32 parent\n\
";
  }

  static const char* value(const ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.config);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ReconfigureResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamic_reconfigure::ReconfigureResponse_<ContainerAllocator>& v)
  {
    s << indent << "config: ";
    s << std::endl;
    Printer< ::dynamic_reconfigure::Config_<ContainerAllocator> >::stream(s, indent + "  ", v.config);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIC_RECONFIGURE_MESSAGE_RECONFIGURERESPONSE_H

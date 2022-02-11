// Generated by gencpp from file kinova_msgs/SetTorqueControlModeRequest.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_SETTORQUECONTROLMODEREQUEST_H
#define KINOVA_MSGS_MESSAGE_SETTORQUECONTROLMODEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kinova_msgs
{
template <class ContainerAllocator>
struct SetTorqueControlModeRequest_
{
  typedef SetTorqueControlModeRequest_<ContainerAllocator> Type;

  SetTorqueControlModeRequest_()
    : state(0)  {
    }
  SetTorqueControlModeRequest_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef uint16_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTorqueControlModeRequest_

typedef ::kinova_msgs::SetTorqueControlModeRequest_<std::allocator<void> > SetTorqueControlModeRequest;

typedef boost::shared_ptr< ::kinova_msgs::SetTorqueControlModeRequest > SetTorqueControlModeRequestPtr;
typedef boost::shared_ptr< ::kinova_msgs::SetTorqueControlModeRequest const> SetTorqueControlModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator1> & lhs, const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator1> & lhs, const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "891b541ef99af7889d0f22a062410be8";
  }

  static const char* value(const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x891b541ef99af788ULL;
  static const uint64_t static_value2 = 0x9d0f22a062410be8ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/SetTorqueControlModeRequest";
  }

  static const char* value(const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 state\n"
;
  }

  static const char* value(const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTorqueControlModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::SetTorqueControlModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_SETTORQUECONTROLMODEREQUEST_H
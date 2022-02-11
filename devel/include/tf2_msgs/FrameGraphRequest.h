// Generated by gencpp from file tf2_msgs/FrameGraphRequest.msg
// DO NOT EDIT!


#ifndef TF2_MSGS_MESSAGE_FRAMEGRAPHREQUEST_H
#define TF2_MSGS_MESSAGE_FRAMEGRAPHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tf2_msgs
{
template <class ContainerAllocator>
struct FrameGraphRequest_
{
  typedef FrameGraphRequest_<ContainerAllocator> Type;

  FrameGraphRequest_()
    {
    }
  FrameGraphRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FrameGraphRequest_

typedef ::tf2_msgs::FrameGraphRequest_<std::allocator<void> > FrameGraphRequest;

typedef boost::shared_ptr< ::tf2_msgs::FrameGraphRequest > FrameGraphRequestPtr;
typedef boost::shared_ptr< ::tf2_msgs::FrameGraphRequest const> FrameGraphRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace tf2_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::tf2_msgs::FrameGraphRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tf2_msgs/FrameGraphRequest";
  }

  static const char* value(const ::tf2_msgs::FrameGraphRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::tf2_msgs::FrameGraphRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FrameGraphRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tf2_msgs::FrameGraphRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::tf2_msgs::FrameGraphRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TF2_MSGS_MESSAGE_FRAMEGRAPHREQUEST_H

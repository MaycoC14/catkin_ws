// Generated by gencpp from file robotnik_msgs/GetPOIResponse.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_GETPOIRESPONSE_H
#define ROBOTNIK_MSGS_MESSAGE_GETPOIRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>

namespace robotnik_msgs
{
template <class ContainerAllocator>
struct GetPOIResponse_
{
  typedef GetPOIResponse_<ContainerAllocator> Type;

  GetPOIResponse_()
    : success(false)
    , pose()  {
    }
  GetPOIResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPOIResponse_

typedef ::robotnik_msgs::GetPOIResponse_<std::allocator<void> > GetPOIResponse;

typedef boost::shared_ptr< ::robotnik_msgs::GetPOIResponse > GetPOIResponsePtr;
typedef boost::shared_ptr< ::robotnik_msgs::GetPOIResponse const> GetPOIResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator1> & lhs, const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator1> & lhs, const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ecae33bf155e58ec57f0ce3b25a51c3";
  }

  static const char* value(const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ecae33bf155e58eULL;
  static const uint64_t static_value2 = 0xc57f0ce3b25a51c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/GetPOIResponse";
  }

  static const char* value(const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"geometry_msgs/Pose2D pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPOIResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::GetPOIResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::GetPOIResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_GETPOIRESPONSE_H
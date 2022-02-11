// Generated by gencpp from file robotnik_msgs/set_CartesianEuler_poseRequest.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_SET_CARTESIANEULER_POSEREQUEST_H
#define ROBOTNIK_MSGS_MESSAGE_SET_CARTESIANEULER_POSEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_msgs
{
template <class ContainerAllocator>
struct set_CartesianEuler_poseRequest_
{
  typedef set_CartesianEuler_poseRequest_<ContainerAllocator> Type;

  set_CartesianEuler_poseRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , A(0.0)
    , B(0.0)
    , C(0.0)  {
    }
  set_CartesianEuler_poseRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , A(0.0)
    , B(0.0)
    , C(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _A_type;
  _A_type A;

   typedef float _B_type;
  _B_type B;

   typedef float _C_type;
  _C_type C;





  typedef boost::shared_ptr< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_CartesianEuler_poseRequest_

typedef ::robotnik_msgs::set_CartesianEuler_poseRequest_<std::allocator<void> > set_CartesianEuler_poseRequest;

typedef boost::shared_ptr< ::robotnik_msgs::set_CartesianEuler_poseRequest > set_CartesianEuler_poseRequestPtr;
typedef boost::shared_ptr< ::robotnik_msgs::set_CartesianEuler_poseRequest const> set_CartesianEuler_poseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator1> & lhs, const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.A == rhs.A &&
    lhs.B == rhs.B &&
    lhs.C == rhs.C;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator1> & lhs, const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cdb2d75b0c143402ced22eff49c8aa05";
  }

  static const char* value(const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcdb2d75b0c143402ULL;
  static const uint64_t static_value2 = 0xced22eff49c8aa05ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/set_CartesianEuler_poseRequest";
  }

  static const char* value(const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# New robot X position (mm)\n"
"float32 x\n"
"# New robot Y position (mm)\n"
"float32 y\n"
"# New robot Z position (mm)\n"
"float32 z\n"
"# New robot Orientation (grad)\n"
"float32 A\n"
"# New robot Orientation (grad)\n"
"float32 B\n"
"# New robot Orientation (grad)\n"
"float32 C\n"
;
  }

  static const char* value(const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.A);
      stream.next(m.B);
      stream.next(m.C);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_CartesianEuler_poseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::set_CartesianEuler_poseRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "A: ";
    Printer<float>::stream(s, indent + "  ", v.A);
    s << indent << "B: ";
    Printer<float>::stream(s, indent + "  ", v.B);
    s << indent << "C: ";
    Printer<float>::stream(s, indent + "  ", v.C);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_SET_CARTESIANEULER_POSEREQUEST_H

// Generated by gencpp from file rb1_arm_joystick/ArmRefRb1.msg
// DO NOT EDIT!


#ifndef RB1_ARM_JOYSTICK_MESSAGE_ARMREFRB1_H
#define RB1_ARM_JOYSTICK_MESSAGE_ARMREFRB1_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace rb1_arm_joystick
{
template <class ContainerAllocator>
struct ArmRefRb1_
{
  typedef ArmRefRb1_<ContainerAllocator> Type;

  ArmRefRb1_()
    : cmd_vel()
    , joint_selection(0.0)
    , select_reference(0.0)
    , op_mode(0)  {
    }
  ArmRefRb1_(const ContainerAllocator& _alloc)
    : cmd_vel(_alloc)
    , joint_selection(0.0)
    , select_reference(0.0)
    , op_mode(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _cmd_vel_type;
  _cmd_vel_type cmd_vel;

   typedef double _joint_selection_type;
  _joint_selection_type joint_selection;

   typedef double _select_reference_type;
  _select_reference_type select_reference;

   typedef uint8_t _op_mode_type;
  _op_mode_type op_mode;





  typedef boost::shared_ptr< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> const> ConstPtr;

}; // struct ArmRefRb1_

typedef ::rb1_arm_joystick::ArmRefRb1_<std::allocator<void> > ArmRefRb1;

typedef boost::shared_ptr< ::rb1_arm_joystick::ArmRefRb1 > ArmRefRb1Ptr;
typedef boost::shared_ptr< ::rb1_arm_joystick::ArmRefRb1 const> ArmRefRb1ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator1> & lhs, const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_vel == rhs.cmd_vel &&
    lhs.joint_selection == rhs.joint_selection &&
    lhs.select_reference == rhs.select_reference &&
    lhs.op_mode == rhs.op_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator1> & lhs, const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rb1_arm_joystick

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea1e485f946c43bd1f8a76b08ea8ed5b";
  }

  static const char* value(const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea1e485f946c43bdULL;
  static const uint64_t static_value2 = 0x1f8a76b08ea8ed5bULL;
};

template<class ContainerAllocator>
struct DataType< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rb1_arm_joystick/ArmRefRb1";
  }

  static const char* value(const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Twist cmd_vel\n"
"float64 joint_selection\n"
"float64 select_reference\n"
"uint8 op_mode\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_vel);
      stream.next(m.joint_selection);
      stream.next(m.select_reference);
      stream.next(m.op_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmRefRb1_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rb1_arm_joystick::ArmRefRb1_<ContainerAllocator>& v)
  {
    s << indent << "cmd_vel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.cmd_vel);
    s << indent << "joint_selection: ";
    Printer<double>::stream(s, indent + "  ", v.joint_selection);
    s << indent << "select_reference: ";
    Printer<double>::stream(s, indent + "  ", v.select_reference);
    s << indent << "op_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.op_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RB1_ARM_JOYSTICK_MESSAGE_ARMREFRB1_H

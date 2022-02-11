// Generated by gencpp from file kinova_msgs/Arm_KinovaPoseActionGoal.msg
// DO NOT EDIT!


#ifndef KINOVA_MSGS_MESSAGE_ARM_KINOVAPOSEACTIONGOAL_H
#define KINOVA_MSGS_MESSAGE_ARM_KINOVAPOSEACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <kinova_msgs/Arm_KinovaPoseGoal.h>

namespace kinova_msgs
{
template <class ContainerAllocator>
struct Arm_KinovaPoseActionGoal_
{
  typedef Arm_KinovaPoseActionGoal_<ContainerAllocator> Type;

  Arm_KinovaPoseActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  Arm_KinovaPoseActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::kinova_msgs::Arm_KinovaPoseGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct Arm_KinovaPoseActionGoal_

typedef ::kinova_msgs::Arm_KinovaPoseActionGoal_<std::allocator<void> > Arm_KinovaPoseActionGoal;

typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseActionGoal > Arm_KinovaPoseActionGoalPtr;
typedef boost::shared_ptr< ::kinova_msgs::Arm_KinovaPoseActionGoal const> Arm_KinovaPoseActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator1> & lhs, const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator1> & lhs, const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kinova_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06dfe614caa7acc4073a66e77a4ce186";
  }

  static const char* value(const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06dfe614caa7acc4ULL;
  static const uint64_t static_value2 = 0x073a66e77a4ce186ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kinova_msgs/Arm_KinovaPoseActionGoal";
  }

  static const char* value(const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"Arm_KinovaPoseGoal goal\n"
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
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kinova_msgs/Arm_KinovaPoseGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Goal\n"
"KinovaPose kinova_pose\n"
"\n"
"================================================================================\n"
"MSG: kinova_msgs/KinovaPose\n"
"float32 X\n"
"float32 Y\n"
"float32 Z\n"
"float32 ThetaX\n"
"float32 ThetaY\n"
"float32 ThetaZ\n"
;
  }

  static const char* value(const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Arm_KinovaPoseActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kinova_msgs::Arm_KinovaPoseActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::kinova_msgs::Arm_KinovaPoseGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KINOVA_MSGS_MESSAGE_ARM_KINOVAPOSEACTIONGOAL_H

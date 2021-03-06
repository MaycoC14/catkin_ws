// Generated by gencpp from file robotnik_msgs/SetCurrent.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_SETCURRENT_H
#define ROBOTNIK_MSGS_MESSAGE_SETCURRENT_H

#include <ros/service_traits.h>


#include <robotnik_msgs/SetCurrentRequest.h>
#include <robotnik_msgs/SetCurrentResponse.h>


namespace robotnik_msgs
{

struct SetCurrent
{

typedef SetCurrentRequest Request;
typedef SetCurrentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetCurrent
} // namespace robotnik_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotnik_msgs::SetCurrent > {
  static const char* value()
  {
    return "220c889cf443b9b34fafe3d24798e477";
  }

  static const char* value(const ::robotnik_msgs::SetCurrent&) { return value(); }
};

template<>
struct DataType< ::robotnik_msgs::SetCurrent > {
  static const char* value()
  {
    return "robotnik_msgs/SetCurrent";
  }

  static const char* value(const ::robotnik_msgs::SetCurrent&) { return value(); }
};


// service_traits::MD5Sum< ::robotnik_msgs::SetCurrentRequest> should match
// service_traits::MD5Sum< ::robotnik_msgs::SetCurrent >
template<>
struct MD5Sum< ::robotnik_msgs::SetCurrentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotnik_msgs::SetCurrent >::value();
  }
  static const char* value(const ::robotnik_msgs::SetCurrentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotnik_msgs::SetCurrentRequest> should match
// service_traits::DataType< ::robotnik_msgs::SetCurrent >
template<>
struct DataType< ::robotnik_msgs::SetCurrentRequest>
{
  static const char* value()
  {
    return DataType< ::robotnik_msgs::SetCurrent >::value();
  }
  static const char* value(const ::robotnik_msgs::SetCurrentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotnik_msgs::SetCurrentResponse> should match
// service_traits::MD5Sum< ::robotnik_msgs::SetCurrent >
template<>
struct MD5Sum< ::robotnik_msgs::SetCurrentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotnik_msgs::SetCurrent >::value();
  }
  static const char* value(const ::robotnik_msgs::SetCurrentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotnik_msgs::SetCurrentResponse> should match
// service_traits::DataType< ::robotnik_msgs::SetCurrent >
template<>
struct DataType< ::robotnik_msgs::SetCurrentResponse>
{
  static const char* value()
  {
    return DataType< ::robotnik_msgs::SetCurrent >::value();
  }
  static const char* value(const ::robotnik_msgs::SetCurrentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_SETCURRENT_H

// Generated by gencpp from file rb1_base_pad/enable_disable_pad.msg
// DO NOT EDIT!


#ifndef RB1_BASE_PAD_MESSAGE_ENABLE_DISABLE_PAD_H
#define RB1_BASE_PAD_MESSAGE_ENABLE_DISABLE_PAD_H

#include <ros/service_traits.h>


#include <rb1_base_pad/enable_disable_padRequest.h>
#include <rb1_base_pad/enable_disable_padResponse.h>


namespace rb1_base_pad
{

struct enable_disable_pad
{

typedef enable_disable_padRequest Request;
typedef enable_disable_padResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct enable_disable_pad
} // namespace rb1_base_pad


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rb1_base_pad::enable_disable_pad > {
  static const char* value()
  {
    return "44aff93ccf05e13b2ec5d62303a837a2";
  }

  static const char* value(const ::rb1_base_pad::enable_disable_pad&) { return value(); }
};

template<>
struct DataType< ::rb1_base_pad::enable_disable_pad > {
  static const char* value()
  {
    return "rb1_base_pad/enable_disable_pad";
  }

  static const char* value(const ::rb1_base_pad::enable_disable_pad&) { return value(); }
};


// service_traits::MD5Sum< ::rb1_base_pad::enable_disable_padRequest> should match
// service_traits::MD5Sum< ::rb1_base_pad::enable_disable_pad >
template<>
struct MD5Sum< ::rb1_base_pad::enable_disable_padRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rb1_base_pad::enable_disable_pad >::value();
  }
  static const char* value(const ::rb1_base_pad::enable_disable_padRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rb1_base_pad::enable_disable_padRequest> should match
// service_traits::DataType< ::rb1_base_pad::enable_disable_pad >
template<>
struct DataType< ::rb1_base_pad::enable_disable_padRequest>
{
  static const char* value()
  {
    return DataType< ::rb1_base_pad::enable_disable_pad >::value();
  }
  static const char* value(const ::rb1_base_pad::enable_disable_padRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rb1_base_pad::enable_disable_padResponse> should match
// service_traits::MD5Sum< ::rb1_base_pad::enable_disable_pad >
template<>
struct MD5Sum< ::rb1_base_pad::enable_disable_padResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rb1_base_pad::enable_disable_pad >::value();
  }
  static const char* value(const ::rb1_base_pad::enable_disable_padResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rb1_base_pad::enable_disable_padResponse> should match
// service_traits::DataType< ::rb1_base_pad::enable_disable_pad >
template<>
struct DataType< ::rb1_base_pad::enable_disable_padResponse>
{
  static const char* value()
  {
    return DataType< ::rb1_base_pad::enable_disable_pad >::value();
  }
  static const char* value(const ::rb1_base_pad::enable_disable_padResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RB1_BASE_PAD_MESSAGE_ENABLE_DISABLE_PAD_H
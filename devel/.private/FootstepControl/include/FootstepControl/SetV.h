// Generated by gencpp from file FootstepControl/SetV.msg
// DO NOT EDIT!


#ifndef FOOTSTEPCONTROL_MESSAGE_SETV_H
#define FOOTSTEPCONTROL_MESSAGE_SETV_H

#include <ros/service_traits.h>


#include <FootstepControl/SetVRequest.h>
#include <FootstepControl/SetVResponse.h>


namespace FootstepControl
{

struct SetV
{

typedef SetVRequest Request;
typedef SetVResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetV
} // namespace FootstepControl


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::FootstepControl::SetV > {
  static const char* value()
  {
    return "8362ce87c5ed325fb041904db410063b";
  }

  static const char* value(const ::FootstepControl::SetV&) { return value(); }
};

template<>
struct DataType< ::FootstepControl::SetV > {
  static const char* value()
  {
    return "FootstepControl/SetV";
  }

  static const char* value(const ::FootstepControl::SetV&) { return value(); }
};


// service_traits::MD5Sum< ::FootstepControl::SetVRequest> should match
// service_traits::MD5Sum< ::FootstepControl::SetV >
template<>
struct MD5Sum< ::FootstepControl::SetVRequest>
{
  static const char* value()
  {
    return MD5Sum< ::FootstepControl::SetV >::value();
  }
  static const char* value(const ::FootstepControl::SetVRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::FootstepControl::SetVRequest> should match
// service_traits::DataType< ::FootstepControl::SetV >
template<>
struct DataType< ::FootstepControl::SetVRequest>
{
  static const char* value()
  {
    return DataType< ::FootstepControl::SetV >::value();
  }
  static const char* value(const ::FootstepControl::SetVRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::FootstepControl::SetVResponse> should match
// service_traits::MD5Sum< ::FootstepControl::SetV >
template<>
struct MD5Sum< ::FootstepControl::SetVResponse>
{
  static const char* value()
  {
    return MD5Sum< ::FootstepControl::SetV >::value();
  }
  static const char* value(const ::FootstepControl::SetVResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::FootstepControl::SetVResponse> should match
// service_traits::DataType< ::FootstepControl::SetV >
template<>
struct DataType< ::FootstepControl::SetVResponse>
{
  static const char* value()
  {
    return DataType< ::FootstepControl::SetV >::value();
  }
  static const char* value(const ::FootstepControl::SetVResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FOOTSTEPCONTROL_MESSAGE_SETV_H

// Generated by gencpp from file bio_ik_msgs/GetIK.msg
// DO NOT EDIT!


#ifndef BIO_IK_MSGS_MESSAGE_GETIK_H
#define BIO_IK_MSGS_MESSAGE_GETIK_H

#include <ros/service_traits.h>


#include <bio_ik_msgs/GetIKRequest.h>
#include <bio_ik_msgs/GetIKResponse.h>


namespace bio_ik_msgs
{

struct GetIK
{

typedef GetIKRequest Request;
typedef GetIKResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetIK
} // namespace bio_ik_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bio_ik_msgs::GetIK > {
  static const char* value()
  {
    return "3422cd279819e8c14de8099ea8669f52";
  }

  static const char* value(const ::bio_ik_msgs::GetIK&) { return value(); }
};

template<>
struct DataType< ::bio_ik_msgs::GetIK > {
  static const char* value()
  {
    return "bio_ik_msgs/GetIK";
  }

  static const char* value(const ::bio_ik_msgs::GetIK&) { return value(); }
};


// service_traits::MD5Sum< ::bio_ik_msgs::GetIKRequest> should match
// service_traits::MD5Sum< ::bio_ik_msgs::GetIK >
template<>
struct MD5Sum< ::bio_ik_msgs::GetIKRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bio_ik_msgs::GetIK >::value();
  }
  static const char* value(const ::bio_ik_msgs::GetIKRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bio_ik_msgs::GetIKRequest> should match
// service_traits::DataType< ::bio_ik_msgs::GetIK >
template<>
struct DataType< ::bio_ik_msgs::GetIKRequest>
{
  static const char* value()
  {
    return DataType< ::bio_ik_msgs::GetIK >::value();
  }
  static const char* value(const ::bio_ik_msgs::GetIKRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bio_ik_msgs::GetIKResponse> should match
// service_traits::MD5Sum< ::bio_ik_msgs::GetIK >
template<>
struct MD5Sum< ::bio_ik_msgs::GetIKResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bio_ik_msgs::GetIK >::value();
  }
  static const char* value(const ::bio_ik_msgs::GetIKResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bio_ik_msgs::GetIKResponse> should match
// service_traits::DataType< ::bio_ik_msgs::GetIK >
template<>
struct DataType< ::bio_ik_msgs::GetIKResponse>
{
  static const char* value()
  {
    return DataType< ::bio_ik_msgs::GetIK >::value();
  }
  static const char* value(const ::bio_ik_msgs::GetIKResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BIO_IK_MSGS_MESSAGE_GETIK_H
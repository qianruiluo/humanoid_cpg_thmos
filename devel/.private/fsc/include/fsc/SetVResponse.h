// Generated by gencpp from file fsc/SetVResponse.msg
// DO NOT EDIT!


#ifndef FSC_MESSAGE_SETVRESPONSE_H
#define FSC_MESSAGE_SETVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fsc
{
template <class ContainerAllocator>
struct SetVResponse_
{
  typedef SetVResponse_<ContainerAllocator> Type;

  SetVResponse_()
    {
    }
  SetVResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::fsc::SetVResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fsc::SetVResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetVResponse_

typedef ::fsc::SetVResponse_<std::allocator<void> > SetVResponse;

typedef boost::shared_ptr< ::fsc::SetVResponse > SetVResponsePtr;
typedef boost::shared_ptr< ::fsc::SetVResponse const> SetVResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fsc::SetVResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fsc::SetVResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace fsc

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::fsc::SetVResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fsc::SetVResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsc::SetVResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsc::SetVResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsc::SetVResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsc::SetVResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fsc::SetVResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::fsc::SetVResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::fsc::SetVResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fsc/SetVResponse";
  }

  static const char* value(const ::fsc::SetVResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fsc::SetVResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::fsc::SetVResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fsc::SetVResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetVResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fsc::SetVResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::fsc::SetVResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // FSC_MESSAGE_SETVRESPONSE_H

// Generated by gencpp from file bio_ik_msgs/MinDistanceGoal.msg
// DO NOT EDIT!


#ifndef BIO_IK_MSGS_MESSAGE_MINDISTANCEGOAL_H
#define BIO_IK_MSGS_MESSAGE_MINDISTANCEGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace bio_ik_msgs
{
template <class ContainerAllocator>
struct MinDistanceGoal_
{
  typedef MinDistanceGoal_<ContainerAllocator> Type;

  MinDistanceGoal_()
    : link_name()
    , weight(0.0)
    , target()
    , distance(0.0)  {
    }
  MinDistanceGoal_(const ContainerAllocator& _alloc)
    : link_name(_alloc)
    , weight(0.0)
    , target(_alloc)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _link_name_type;
  _link_name_type link_name;

   typedef double _weight_type;
  _weight_type weight;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _target_type;
  _target_type target;

   typedef double _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MinDistanceGoal_

typedef ::bio_ik_msgs::MinDistanceGoal_<std::allocator<void> > MinDistanceGoal;

typedef boost::shared_ptr< ::bio_ik_msgs::MinDistanceGoal > MinDistanceGoalPtr;
typedef boost::shared_ptr< ::bio_ik_msgs::MinDistanceGoal const> MinDistanceGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator1> & lhs, const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator2> & rhs)
{
  return lhs.link_name == rhs.link_name &&
    lhs.weight == rhs.weight &&
    lhs.target == rhs.target &&
    lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator1> & lhs, const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bio_ik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bcfa7c3e29387935515d0e4b0708f298";
  }

  static const char* value(const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbcfa7c3e29387935ULL;
  static const uint64_t static_value2 = 0x515d0e4b0708f298ULL;
};

template<class ContainerAllocator>
struct DataType< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bio_ik_msgs/MinDistanceGoal";
  }

  static const char* value(const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The name of this goal's end effector link\n"
"string link_name\n"
"\n"
"# Weight of the current goal\n"
"# Goals with a higher weight will have a stronger influence than goals with a smaller weight\n"
"float64 weight\n"
"\n"
"# The distance will be computed from the origin of the end effector link to the target point\n"
"geometry_msgs/Point target\n"
"\n"
"# Minimum allowed distance\n"
"# Forces the end effector link to be at least the specified distance away from the target\n"
"float64 distance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.link_name);
      stream.next(m.weight);
      stream.next(m.target);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MinDistanceGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bio_ik_msgs::MinDistanceGoal_<ContainerAllocator>& v)
  {
    s << indent << "link_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.link_name);
    s << indent << "weight: ";
    Printer<double>::stream(s, indent + "  ", v.weight);
    s << indent << "target: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BIO_IK_MSGS_MESSAGE_MINDISTANCEGOAL_H

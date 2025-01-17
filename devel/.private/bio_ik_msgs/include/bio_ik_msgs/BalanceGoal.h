// Generated by gencpp from file bio_ik_msgs/BalanceGoal.msg
// DO NOT EDIT!


#ifndef BIO_IK_MSGS_MESSAGE_BALANCEGOAL_H
#define BIO_IK_MSGS_MESSAGE_BALANCEGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>

namespace bio_ik_msgs
{
template <class ContainerAllocator>
struct BalanceGoal_
{
  typedef BalanceGoal_<ContainerAllocator> Type;

  BalanceGoal_()
    : weight(0.0)
    , target()
    , axis()  {
    }
  BalanceGoal_(const ContainerAllocator& _alloc)
    : weight(0.0)
    , target(_alloc)
    , axis(_alloc)  {
  (void)_alloc;
    }



   typedef double _weight_type;
  _weight_type weight;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _target_type;
  _target_type target;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _axis_type;
  _axis_type axis;





  typedef boost::shared_ptr< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> const> ConstPtr;

}; // struct BalanceGoal_

typedef ::bio_ik_msgs::BalanceGoal_<std::allocator<void> > BalanceGoal;

typedef boost::shared_ptr< ::bio_ik_msgs::BalanceGoal > BalanceGoalPtr;
typedef boost::shared_ptr< ::bio_ik_msgs::BalanceGoal const> BalanceGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator1> & lhs, const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator2> & rhs)
{
  return lhs.weight == rhs.weight &&
    lhs.target == rhs.target &&
    lhs.axis == rhs.axis;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator1> & lhs, const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bio_ik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a41c41e95b53d1061e0af70f43304d5b";
  }

  static const char* value(const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa41c41e95b53d106ULL;
  static const uint64_t static_value2 = 0x1e0af70f43304d5bULL;
};

template<class ContainerAllocator>
struct DataType< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bio_ik_msgs/BalanceGoal";
  }

  static const char* value(const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Weight of the current goal\n"
"# Goals with a higher weight will have a stronger influence than goals with a smaller weight\n"
"float64 weight\n"
"\n"
"# The center of gravity will be pulled above this target point\n"
"geometry_msgs/Point target\n"
"\n"
"# Gravity vector (optional)\n"
"geometry_msgs/Vector3 axis\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
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

  static const char* value(const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.weight);
      stream.next(m.target);
      stream.next(m.axis);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BalanceGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bio_ik_msgs::BalanceGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bio_ik_msgs::BalanceGoal_<ContainerAllocator>& v)
  {
    s << indent << "weight: ";
    Printer<double>::stream(s, indent + "  ", v.weight);
    s << indent << "target: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
    s << indent << "axis: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.axis);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BIO_IK_MSGS_MESSAGE_BALANCEGOAL_H

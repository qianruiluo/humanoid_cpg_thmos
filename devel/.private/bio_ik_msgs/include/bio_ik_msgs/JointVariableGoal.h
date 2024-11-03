// Generated by gencpp from file bio_ik_msgs/JointVariableGoal.msg
// DO NOT EDIT!


#ifndef BIO_IK_MSGS_MESSAGE_JOINTVARIABLEGOAL_H
#define BIO_IK_MSGS_MESSAGE_JOINTVARIABLEGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bio_ik_msgs
{
template <class ContainerAllocator>
struct JointVariableGoal_
{
  typedef JointVariableGoal_<ContainerAllocator> Type;

  JointVariableGoal_()
    : variable_name()
    , variable_position(0.0)
    , weight(0.0)
    , secondary(false)  {
    }
  JointVariableGoal_(const ContainerAllocator& _alloc)
    : variable_name(_alloc)
    , variable_position(0.0)
    , weight(0.0)
    , secondary(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _variable_name_type;
  _variable_name_type variable_name;

   typedef double _variable_position_type;
  _variable_position_type variable_position;

   typedef double _weight_type;
  _weight_type weight;

   typedef uint8_t _secondary_type;
  _secondary_type secondary;





  typedef boost::shared_ptr< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> const> ConstPtr;

}; // struct JointVariableGoal_

typedef ::bio_ik_msgs::JointVariableGoal_<std::allocator<void> > JointVariableGoal;

typedef boost::shared_ptr< ::bio_ik_msgs::JointVariableGoal > JointVariableGoalPtr;
typedef boost::shared_ptr< ::bio_ik_msgs::JointVariableGoal const> JointVariableGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator1> & lhs, const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator2> & rhs)
{
  return lhs.variable_name == rhs.variable_name &&
    lhs.variable_position == rhs.variable_position &&
    lhs.weight == rhs.weight &&
    lhs.secondary == rhs.secondary;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator1> & lhs, const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bio_ik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee6ea02a53bfdacf34c1c1097ce15d71";
  }

  static const char* value(const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee6ea02a53bfdacfULL;
  static const uint64_t static_value2 = 0x34c1c1097ce15d71ULL;
};

template<class ContainerAllocator>
struct DataType< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bio_ik_msgs/JointVariableGoal";
  }

  static const char* value(const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The name of the joint variable\n"
"string variable_name\n"
"\n"
"# The desired position value of the joint variable\n"
"float64 variable_position\n"
"\n"
"# Weight of the current goal\n"
"# Goals with a higher weight will have a stronger influence than goals with a smaller weight\n"
"float64 weight\n"
"\n"
"# If set to false, the goal will be primary goal (like eg. position goals)\n"
"# If set to true, this goal will always have lower priority than the primary goals\n"
"bool secondary\n"
;
  }

  static const char* value(const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.variable_name);
      stream.next(m.variable_position);
      stream.next(m.weight);
      stream.next(m.secondary);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointVariableGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bio_ik_msgs::JointVariableGoal_<ContainerAllocator>& v)
  {
    s << indent << "variable_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.variable_name);
    s << indent << "variable_position: ";
    Printer<double>::stream(s, indent + "  ", v.variable_position);
    s << indent << "weight: ";
    Printer<double>::stream(s, indent + "  ", v.weight);
    s << indent << "secondary: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.secondary);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BIO_IK_MSGS_MESSAGE_JOINTVARIABLEGOAL_H

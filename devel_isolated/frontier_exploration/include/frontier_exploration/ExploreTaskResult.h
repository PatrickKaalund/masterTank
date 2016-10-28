// Generated by gencpp from file frontier_exploration/ExploreTaskResult.msg
// DO NOT EDIT!


#ifndef FRONTIER_EXPLORATION_MESSAGE_EXPLORETASKRESULT_H
#define FRONTIER_EXPLORATION_MESSAGE_EXPLORETASKRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace frontier_exploration
{
template <class ContainerAllocator>
struct ExploreTaskResult_
{
  typedef ExploreTaskResult_<ContainerAllocator> Type;

  ExploreTaskResult_()
    {
    }
  ExploreTaskResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> const> ConstPtr;

}; // struct ExploreTaskResult_

typedef ::frontier_exploration::ExploreTaskResult_<std::allocator<void> > ExploreTaskResult;

typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskResult > ExploreTaskResultPtr;
typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskResult const> ExploreTaskResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace frontier_exploration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'frontier_exploration': ['/home/plinux/RosPacks/masterTank/src/frontier_exploration/msg', '/home/plinux/RosPacks/masterTank/devel_isolated/frontier_exploration/share/frontier_exploration/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg'], 'move_base_msgs': ['/opt/ros/kinetic/share/move_base_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::frontier_exploration::ExploreTaskResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "frontier_exploration/ExploreTaskResult";
  }

  static const char* value(const ::frontier_exploration::ExploreTaskResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
";
  }

  static const char* value(const ::frontier_exploration::ExploreTaskResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ExploreTaskResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::frontier_exploration::ExploreTaskResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::frontier_exploration::ExploreTaskResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // FRONTIER_EXPLORATION_MESSAGE_EXPLORETASKRESULT_H

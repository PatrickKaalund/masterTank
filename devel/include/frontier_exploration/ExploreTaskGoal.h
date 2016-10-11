// Generated by gencpp from file frontier_exploration/ExploreTaskGoal.msg
// DO NOT EDIT!


#ifndef FRONTIER_EXPLORATION_MESSAGE_EXPLORETASKGOAL_H
#define FRONTIER_EXPLORATION_MESSAGE_EXPLORETASKGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PolygonStamped.h>
#include <geometry_msgs/PointStamped.h>

namespace frontier_exploration
{
template <class ContainerAllocator>
struct ExploreTaskGoal_
{
  typedef ExploreTaskGoal_<ContainerAllocator> Type;

  ExploreTaskGoal_()
    : explore_boundary()
    , explore_center()  {
    }
  ExploreTaskGoal_(const ContainerAllocator& _alloc)
    : explore_boundary(_alloc)
    , explore_center(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PolygonStamped_<ContainerAllocator>  _explore_boundary_type;
  _explore_boundary_type explore_boundary;

   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _explore_center_type;
  _explore_center_type explore_center;




  typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ExploreTaskGoal_

typedef ::frontier_exploration::ExploreTaskGoal_<std::allocator<void> > ExploreTaskGoal;

typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskGoal > ExploreTaskGoalPtr;
typedef boost::shared_ptr< ::frontier_exploration::ExploreTaskGoal const> ExploreTaskGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace frontier_exploration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'frontier_exploration': ['/home/plinux/RosPacks/masterTank/src/frontier_exploration/msg', '/home/plinux/RosPacks/masterTank/devel/share/frontier_exploration/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg'], 'move_base_msgs': ['/opt/ros/kinetic/share/move_base_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b5f41b52fbca52a68ff7363f86187dbf";
  }

  static const char* value(const ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb5f41b52fbca52a6ULL;
  static const uint64_t static_value2 = 0x8ff7363f86187dbfULL;
};

template<class ContainerAllocator>
struct DataType< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "frontier_exploration/ExploreTaskGoal";
  }

  static const char* value(const ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#Boundary for frontier exploration\n\
geometry_msgs/PolygonStamped explore_boundary\n\
#Center point for frontier exploration, inside explore_boundary\n\
geometry_msgs/PointStamped explore_center\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PolygonStamped\n\
# This represents a Polygon with reference coordinate frame and timestamp\n\
Header header\n\
Polygon polygon\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Polygon\n\
#A specification of a polygon where the first and last points are assumed to be connected\n\
Point32[] points\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.explore_boundary);
      stream.next(m.explore_center);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ExploreTaskGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::frontier_exploration::ExploreTaskGoal_<ContainerAllocator>& v)
  {
    s << indent << "explore_boundary: ";
    s << std::endl;
    Printer< ::geometry_msgs::PolygonStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.explore_boundary);
    s << indent << "explore_center: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.explore_center);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FRONTIER_EXPLORATION_MESSAGE_EXPLORETASKGOAL_H

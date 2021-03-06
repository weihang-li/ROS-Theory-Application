// Generated by gencpp from file robot_vision/Size.msg
// DO NOT EDIT!


#ifndef ROBOT_VISION_MESSAGE_SIZE_H
#define ROBOT_VISION_MESSAGE_SIZE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_vision
{
template <class ContainerAllocator>
struct Size_
{
  typedef Size_<ContainerAllocator> Type;

  Size_()
    : width(0)
    , high(0)
    , x(0)  {
    }
  Size_(const ContainerAllocator& _alloc)
    : width(0)
    , high(0)
    , x(0)  {
  (void)_alloc;
    }



   typedef int32_t _width_type;
  _width_type width;

   typedef int32_t _high_type;
  _high_type high;

   typedef int32_t _x_type;
  _x_type x;





  typedef boost::shared_ptr< ::robot_vision::Size_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_vision::Size_<ContainerAllocator> const> ConstPtr;

}; // struct Size_

typedef ::robot_vision::Size_<std::allocator<void> > Size;

typedef boost::shared_ptr< ::robot_vision::Size > SizePtr;
typedef boost::shared_ptr< ::robot_vision::Size const> SizeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_vision::Size_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_vision::Size_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_vision::Size_<ContainerAllocator1> & lhs, const ::robot_vision::Size_<ContainerAllocator2> & rhs)
{
  return lhs.width == rhs.width &&
    lhs.high == rhs.high &&
    lhs.x == rhs.x;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_vision::Size_<ContainerAllocator1> & lhs, const ::robot_vision::Size_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_vision

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_vision::Size_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_vision::Size_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_vision::Size_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_vision::Size_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_vision::Size_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_vision::Size_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_vision::Size_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b63aaa22191fa8223fe28347d657eaf6";
  }

  static const char* value(const ::robot_vision::Size_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb63aaa22191fa822ULL;
  static const uint64_t static_value2 = 0x3fe28347d657eaf6ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_vision::Size_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_vision/Size";
  }

  static const char* value(const ::robot_vision::Size_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_vision::Size_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 width\n"
"int32 high\n"
"int32 x\n"
;
  }

  static const char* value(const ::robot_vision::Size_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_vision::Size_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.width);
      stream.next(m.high);
      stream.next(m.x);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Size_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_vision::Size_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_vision::Size_<ContainerAllocator>& v)
  {
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "high: ";
    Printer<int32_t>::stream(s, indent + "  ", v.high);
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_VISION_MESSAGE_SIZE_H

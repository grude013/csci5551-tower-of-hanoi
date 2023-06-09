// Generated by gencpp from file baxter_core_msgs/DigitalIOState.msg
// DO NOT EDIT!


#ifndef BAXTER_CORE_MSGS_MESSAGE_DIGITALIOSTATE_H
#define BAXTER_CORE_MSGS_MESSAGE_DIGITALIOSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace baxter_core_msgs
{
template <class ContainerAllocator>
struct DigitalIOState_
{
  typedef DigitalIOState_<ContainerAllocator> Type;

  DigitalIOState_()
    : state(0)
    , isInputOnly(false)  {
    }
  DigitalIOState_(const ContainerAllocator& _alloc)
    : state(0)
    , isInputOnly(false)  {
  (void)_alloc;
    }



   typedef int8_t _state_type;
  _state_type state;

   typedef uint8_t _isInputOnly_type;
  _isInputOnly_type isInputOnly;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OFF)
  #undef OFF
#endif
#if defined(_WIN32) && defined(ON)
  #undef ON
#endif
#if defined(_WIN32) && defined(PRESSED)
  #undef PRESSED
#endif
#if defined(_WIN32) && defined(UNPRESSED)
  #undef UNPRESSED
#endif

  enum {
    OFF = 0,
    ON = 1,
    PRESSED = 1,
    UNPRESSED = 0,
  };


  typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> const> ConstPtr;

}; // struct DigitalIOState_

typedef ::baxter_core_msgs::DigitalIOState_<std::allocator<void> > DigitalIOState;

typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOState > DigitalIOStatePtr;
typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOState const> DigitalIOStateConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator1> & lhs, const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.isInputOnly == rhs.isInputOnly;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator1> & lhs, const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace baxter_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "29d0be3859dae81a66b28f167ecec98c";
  }

  static const char* value(const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x29d0be3859dae81aULL;
  static const uint64_t static_value2 = 0x66b28f167ecec98cULL;
};

template<class ContainerAllocator>
struct DataType< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baxter_core_msgs/DigitalIOState";
  }

  static const char* value(const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 state\n"
"bool isInputOnly\n"
"\n"
"int8 OFF = 0\n"
"int8 ON  = 1\n"
"int8 PRESSED = 1\n"
"int8 UNPRESSED = 0\n"
;
  }

  static const char* value(const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.isInputOnly);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigitalIOState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::baxter_core_msgs::DigitalIOState_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<int8_t>::stream(s, indent + "  ", v.state);
    s << indent << "isInputOnly: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isInputOnly);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BAXTER_CORE_MSGS_MESSAGE_DIGITALIOSTATE_H

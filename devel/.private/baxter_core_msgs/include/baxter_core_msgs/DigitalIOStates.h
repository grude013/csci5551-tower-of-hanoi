// Generated by gencpp from file baxter_core_msgs/DigitalIOStates.msg
// DO NOT EDIT!


#ifndef BAXTER_CORE_MSGS_MESSAGE_DIGITALIOSTATES_H
#define BAXTER_CORE_MSGS_MESSAGE_DIGITALIOSTATES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <baxter_core_msgs/DigitalIOState.h>

namespace baxter_core_msgs
{
template <class ContainerAllocator>
struct DigitalIOStates_
{
  typedef DigitalIOStates_<ContainerAllocator> Type;

  DigitalIOStates_()
    : names()
    , states()  {
    }
  DigitalIOStates_(const ContainerAllocator& _alloc)
    : names(_alloc)
    , states(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _names_type;
  _names_type names;

   typedef std::vector< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >> _states_type;
  _states_type states;





  typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> const> ConstPtr;

}; // struct DigitalIOStates_

typedef ::baxter_core_msgs::DigitalIOStates_<std::allocator<void> > DigitalIOStates;

typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOStates > DigitalIOStatesPtr;
typedef boost::shared_ptr< ::baxter_core_msgs::DigitalIOStates const> DigitalIOStatesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator1> & lhs, const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator2> & rhs)
{
  return lhs.names == rhs.names &&
    lhs.states == rhs.states;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator1> & lhs, const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace baxter_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d434210c6ec20947fec667d6c13d6062";
  }

  static const char* value(const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd434210c6ec20947ULL;
  static const uint64_t static_value2 = 0xfec667d6c13d6062ULL;
};

template<class ContainerAllocator>
struct DataType< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baxter_core_msgs/DigitalIOStates";
  }

  static const char* value(const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[]         names\n"
"DigitalIOState[] states\n"
"================================================================================\n"
"MSG: baxter_core_msgs/DigitalIOState\n"
"int8 state\n"
"bool isInputOnly\n"
"\n"
"int8 OFF = 0\n"
"int8 ON  = 1\n"
"int8 PRESSED = 1\n"
"int8 UNPRESSED = 0\n"
;
  }

  static const char* value(const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.names);
      stream.next(m.states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigitalIOStates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::baxter_core_msgs::DigitalIOStates_<ContainerAllocator>& v)
  {
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.names[i]);
    }
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::baxter_core_msgs::DigitalIOState_<ContainerAllocator> >::stream(s, indent + "    ", v.states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BAXTER_CORE_MSGS_MESSAGE_DIGITALIOSTATES_H

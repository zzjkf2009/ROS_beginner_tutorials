// Generated by gencpp from file beginner_tutorials/TalkerServiceRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_TALKERSERVICEREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_TALKERSERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct TalkerServiceRequest_
{
  typedef TalkerServiceRequest_<ContainerAllocator> Type;

  TalkerServiceRequest_()
    : request_string()  {
    }
  TalkerServiceRequest_(const ContainerAllocator& _alloc)
    : request_string(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _request_string_type;
  _request_string_type request_string;




  typedef boost::shared_ptr< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TalkerServiceRequest_

typedef ::beginner_tutorials::TalkerServiceRequest_<std::allocator<void> > TalkerServiceRequest;

typedef boost::shared_ptr< ::beginner_tutorials::TalkerServiceRequest > TalkerServiceRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::TalkerServiceRequest const> TalkerServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75fc38d9b9e80ab837712849e5f3e47e";
  }

  static const char* value(const ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75fc38d9b9e80ab8ULL;
  static const uint64_t static_value2 = 0x37712849e5f3e47eULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/TalkerServiceRequest";
  }

  static const char* value(const ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string request_string\n\
\n\
";
  }

  static const char* value(const ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.request_string);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct TalkerServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::TalkerServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "request_string: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.request_string);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_TALKERSERVICEREQUEST_H
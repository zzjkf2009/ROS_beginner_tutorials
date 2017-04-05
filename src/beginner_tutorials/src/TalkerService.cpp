/**
*@file TalkerService.cpp
*@Author Zejiang Zeng
*@brief This is a simple practice for ROS server node that will receive a string (service data type)
and sent a other string to client
*/

#include <ros/ros.h>
#include"beginner_tutorials/TalkerService.h"
#include "std_msgs/String.h"

bool TalkerService_interaction(beginner_tutorials::TalkerService::Request &req,beginner_tutorials::TalkerService::Response &resp) {
  ROS_INFO("Request  from General: %s",req.request_string.c_str());
  std::stringstream ss;
  ss << "Order Received, General! ";
  resp.response_string = ss.str();
  ROS_INFO("Response from soldier: %s ",resp.response_string.c_str());
}


int main (int argc, char **argv) {
ros::init(argc,argv,"TalkerServiceNode");
ros::NodeHandle nodehandle;
//Register our service with master
ros::ServiceServer server=nodehandle.advertiseService("TalkerService_interaction",&TalkerService_interaction);
ROS_INFO_STREAM_ONCE("TalkerService is up and running");
ros::spin();
return 0;
}

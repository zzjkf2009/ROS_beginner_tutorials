



#include <ros/ros.h>
#include"beginner_tutorials/TalkerService.h"
#include "std_msgs/String.h"

int main(int argc, char **argv) {
ros::init(argc,argv,"TalkerClientNode");
ros::NodeHandle nh;
//Create a client object for Talker Service
ros::ServiceClient talkerclient=nh.serviceClient<beginner_tutorials::TalkerService>("TalkerClient_interaction");

beginner_tutorials::TalkerService::Request req;
beginner_tutorials::TalkerService::Response resp;
bool sucess=talkerclient.call(req,resp);

//beginner_tutorials::TalkerService srv;
//std::stringstream ss;
//ss << "Fighting";
//srv.request.request_string="Fighting";
req.request_string="Fighting";
ROS_INFO_STREAM("For debuging:"<<req.request_string.c_str());
if(sucess) {
ROS_INFO_STREAM("I said:"<<req.request_string.c_str());
}
else {
ROS_ERROR_STREAM("Fail to call().");
return 1;
}
/*
if(talkerclient.call(srv)) {
ROS_INFO_STREAM("I said:"<<srv.request.request_string.c_str());
}
else {
ROS_ERROR_STREAM("Unable to call().");
return 1;
} */
return 0;
}

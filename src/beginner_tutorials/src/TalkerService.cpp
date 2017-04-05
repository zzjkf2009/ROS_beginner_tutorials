/**
 *@file TalkerService.cpp
 *@Author Zejiang Zeng
 *@Copyright 2017 Zejiang Zeng, All rights reserved
 *@brief This is a simple practice for ROS server node that will receive a
         string and an int (service data type)and sent a other string to client
 */

#include <ros/ros.h>
#include"beginner_tutorials/TalkerService.h"
#include "std_msgs/String.h"

bool TalkerService_interaction(beginner_tutorials::TalkerService::Request &req,
		beginner_tutorials::TalkerService::Response &resp) {
	ROS_INFO("Request  from General: %s", req.request_string.c_str());
	std::stringstream ss;
	ss << "Order Received, General! ";
	// Check the soldier number given by the client node
	ROS_DEBUG_STREAM("Soldier Number is  " << req.NumOfSoldier);
	// Three conditions associated with the Soldier number, each condition will
  //give different output
	if ((req.NumOfSoldier < 200) && (req.NumOfSoldier > 100)) {
		ROS_WARN_STREAM("Soldier are not enough, be careful");
	} else if (req.NumOfSoldier < 100) {
		ROS_FATAL_STREAM("Too little,go back");
	} else {
		resp.response_string = ss.str();
		ROS_INFO("Response from soldier: %s ", resp.response_string.c_str());
	}
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "TalkerServiceNode");
	ros::NodeHandle nodehandle;
//Register our service with master
	ros::ServiceServer server = nodehandle.advertiseService(
			"TalkerService_interaction", &TalkerService_interaction);
	ROS_INFO_STREAM_ONCE("TalkerService is up and running");
	ros::spin();
	return 0;
}

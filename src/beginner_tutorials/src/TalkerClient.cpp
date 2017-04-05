/**
 *@file TalkerClient.cpp
 *@Author Zejiang Zeng
 *@Copyright 2017 Zejiang Zeng, All rights reserved
 *@brief This is a practice client node which will sent a string and an int
          to its server, and its server will send a string back
 */
#include <ros/ros.h>
#include"beginner_tutorials/TalkerService.h"
#include "std_msgs/String.h"

int main(int argc, char **argv) {
	ros::init(argc, argv, "TalkerClientNode");
	ros::NodeHandle nh;
//Create a client object for Talker Service
	ros::ServiceClient talkerclient = nh.serviceClient
			< beginner_tutorials::TalkerService > ("TalkerService_interaction");
//Create a TalkerService object which contain request and response
	beginner_tutorials::TalkerService srv;
//Fill in the request data (strinf and int)
	srv.request.request_string = "Fighting";
  srv.request.NumOfSoldier=150;
//Actually call the service, and check for success and use the response
	if (talkerclient.call(srv)) {
		ROS_INFO_STREAM("I said:" << srv.request.request_string.c_str());
	} else {
		ROS_ERROR_STREAM("Unable to call().");
		return 1;
	}
	return 0;
}

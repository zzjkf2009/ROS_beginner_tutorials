/**
*@file TalkerBroadcaster.cpp
*@Author Zejiang Zeng
*@Copyright This file is part of beginner_totorials which is released by wiki
*           Please go to http://wiki.ros.org/ROS/Tutorials/ for full
*           license details.
*@brief This tutorial is modified from publisher tutorials to a boradcaster node
that demonstrates a simple corrdinate transform by using ros tf
*/
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main (int argc, char **argv) {
ros::init(argc,argv,"talkerbroadcaster");
ros::NodeHandle n;
static tf::TransformBroadcaster br;
tf::Transform transform;

ros::Rate rate(10.0);
while(ros::ok()) {
 transform.setOrigin(tf::Vector3(1.0,0.2,2.0));
 transform.setRotation(tf::Quaternion(0, 0.2, 0, 1) );
 br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", "talk"));
 rate.sleep();
}

return 0;

}

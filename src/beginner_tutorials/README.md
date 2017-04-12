# Overview

This is a practice project for learning TF, gtest/rostest and rosbag
## Assumption
Assume ROS indigo is installed and run the roscore

Put it to your catkin workspace
if not, don't forget to run 
```
source ./devel/setup.basg
```
## TF
### Set up 
Install it first
```
sudo apt-get install ros-indigo-ros-tutorials ros-indigo-geometry-tutorials ros-indigo-rviz ros-indigo-rosbash ros-indigo-rqt-tf-tree
```
the source file TalkerBroadcaster.cpp will broadcaste a static frame transform by run
```
rosrun beginner_tutorials talkerbroadcaster
rosrun tf tf_echo world talk
```
The transform between two frame "world" and "talk" will be printed as
```
At time 1491965868.713
- Translation: [1.000, 0.200, 2.000]
- Rotation: in Quaternion [0.000, 0.196, 0.000, 0.981]
            in RPY (radian) [0.000, 0.395, 0.000]
            in RPY (degree) [0.000, 22.620, 0.000]
```
To start the tool for visualizing
```
rosrun rqt_tf_tree rqt_tf_tree
```
To create a dirgram (pdf) of the frames being broadcast by tf
```
rosrun tf view_frames
```
## ROS unit test
See more details at http://wiki.ros.org/gtest

a rostest source file and launch file are created in the test folder

**Run the test**
```
catkin_make
catkin_make run_tests_beginner_tutorials
```
or
```
rostest beginner_tutorials test.launch
```
## ROSbag, record and display topics
A launch file is create to start all four nodes and reording all the topics. It is at launch directory,"beginner_tutorials.launch"
A argument is set to enable or disable the bag recording 
execute the launch and **do** reording
```
roslaunch beginner_tutorials beginner_tutorials.launch  
```
It will create a bag file which is named as "year-date-time.bag", like "2017-04-11-20-28-16.bag"
**Disable recording**
```
roslaunch beginner_tutorials beginner_tutorials.launch enablerecord:=0 
```
## Inspecting the bag file
The bag files should be put into folder "bagfile" and to check the info of them, do
```
rosbag info *.bag
```
## Playing back with listener node
do
```
rosrun beginner_tutorials listener
rosbag play *.bag
```
now listener node will print things on screen 

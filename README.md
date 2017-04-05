# Overview

This is a practice project for creating a service with server and client node, and a launch file
that will compile all the nodes at once.

## Assumption
Assume ROS indigo is installed

## The TalkerService and TalkerClient node
The service node is written in C++, and it response a string when a string and a integer are sent from the client node. A custom message type "TalkerService" is used for this example. It can be viewed in srv folder, in  "TalkerService.srv"

## Execution

Put it to your catkin workspace

execute the service
```
rosrun beginner_tutorials TalkerService
rosrun beginner_tutorials TalkerClient

```
To check the service
```
rosservice list
```
Or try using rosservice call in command-line
```
rosrun beginner_tutorials TalkerService
rosservice call TalkerService Fighting 300
```

## Run all nodes using roslaunch
A launch file is create to start all four nodes. It is at launch directory,"beginner_tutorials.launch"
A argument is set to change the print frequency of the talker node, which can be set from command-line here.
execute the launch
```
roslaunch beginner_tutorials beginner_tutorials.launch  PrintFreq:=1
```
The default frequency is 10(Hz), if no argument is inputed

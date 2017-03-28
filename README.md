# ROS_beginner_tutorials
This is a simple beginner tutorial package for ROS. It contains a simple publisher node and a subscriber node in C++. The publisher will publish string message to the screen and the subscriber will receive the message and print it out.
See more details please see at :http://wiki.ros.org/ROS/Tutorials.

If you don't know what ROS is, please check at:
https://en.wikipedia.org/wiki/Robot_Operating_System
([wiki link](https://en.wikipedia.org/wiki/Robot_Operating_System))
and
http://wiki.ros.org/
([ROS wiki](http://wiki.ros.org/))

---

## Prerequisites/Assumptions:
Install ROS indigo

---

## Build
To build the package
```
cd ROS_beginner_tutorials_ws
catkin_make
```
If every thing is correct, the result is supposed to be something like:
```
[ 50%] Built target beginner_tutorials_talker_node
[100%] Built target beginner_tutorials_listener_node
```

---

## Run
To run the node:
At ROS_beginner_tutorials_ws
```
source devel/setup.bash
rosrun beginner_tutorials beginner_tutorials_talker_node
```
Open a new terminal, run
```
source devel/setup.bash
rosrun beginner_tutorials beginner_tutorials_listener_node
```
**Note**: Run setup.bash for every terminal you opened if you want to run nodes from beginner_tutorials package.

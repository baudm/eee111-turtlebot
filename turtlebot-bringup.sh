#!/bin/bash

source /opt/ros/kinetic/setup.bash
source /home/pi/catkin_ws/devel/setup.bash

export TURTLEBOT3_MODEL=burger

IP="$(ip -4 a show wlan0 | grep inet | awk '{print $2}' | cut -d'/' -f1)"
export ROS_MASTER_URI="http://${IP}:11311"
export ROS_HOSTNAME="${IP}"

exec roslaunch turtlebot3_bringup turtlebot3_robot.launch

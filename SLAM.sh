#!/bin/sh
#This script safely launches ros nodes with buffer time to allow param server population

#x-terminal-emulator  -e roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=worlds/willowgarage.world &
#sleep 5
#x-terminal-emulator  -e roslaunch turtlebot_teleop keyboard_teleop.launch &
#sleep 2
#x-terminal-emulator  -e rosrun gmapping slam_gmapping &
#sleep 3
#x-terminal-emulator  -e rosrun rviz rviz -d slamconfig.rviz &
#sleep 3
#x-terminal-emulator  -e rosrun map_server map_saver -f myMap &

xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=worlds/willowgarage.world " &
sleep 8
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; roslaunch turtlebot_teleop keyboard_teleop.launch " &
sleep 5
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; rosrun gmapping slam_gmapping  " &
sleep 5
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; rosrun rviz rviz -d $(pwd)/slamconfig.rviz " &
#sleep 3
#x-term -e "cd $(pwd)/../..; source devel/setup.bash ; rosrun map_server map_saver -f myMap " &

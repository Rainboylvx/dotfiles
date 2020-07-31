#!/bin/bash

#
# 切换显示 
# Author:Rainboy
#

# get info from xrandr
xStatus=`xrandr`
connectedOutputs=$(echo "$xStatus" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
activeOutput=$(echo "$xStatus" | grep -e " connected primary" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/") 
echo $connectedOutputs
echo $activeOutput
if [ "$activeOutput" == "eDP-1" ]
then
    echo "输出到DP1,关闭eDP1"
    xrandr --output "DP-2" --auto --primary 
    xrandr --output "eDP-1" --off
else
    echo "输出到eDP1,关闭DP1"
    xrandr --output "DP-2" --off
    xrandr --output "eDP-1" --auto --primary
fi
/home/rainboy/mycode/dotfiles/polybar/launch.sh

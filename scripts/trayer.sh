#!/bin/bash
trayerpid=$(pgrep -x trayer)
if [ -z "$trayerpid" ];then
    nohup trayer --edge top --widthtype pixel --height 50 --transparent 80 --tint 10 >/dev/null 2>&1 &
else
    killall trayer
fi

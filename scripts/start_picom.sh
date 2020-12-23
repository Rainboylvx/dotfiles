#!/bin/bash
#ps -ef |grep picom
while true
do
    if pgrep "^picom" ;then
        echo "running"
    else
        picom --experimental-backends  --backend  "glx" --blur-method "dual_kawase" --blur-strength 5 -b
    fi
    sleep 1m
done

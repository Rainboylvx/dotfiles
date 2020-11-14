#!/bin/bash
for pid in $(pidof -x `basename $0`); do
   [ $pid != $$ ] && { exit 1; }
done
while true; do
	/bin/bash $DWM_SCRIPT_PATH/wp-change.sh
	sleep 10m
done

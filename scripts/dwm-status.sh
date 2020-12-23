#!/bin/bash
#exists=$(ps -ef |grep dwm-status.sh | sed '$d' | count)
##echo "$exists" > ~/dwm-status.log
##if [ -n "$exists" ];then
    ##exit 1
##fi
for pid in $(pidof -x `basename $0`); do
   [ $pid != $$ ] && { exit 1; }
done
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
while true
do
	bash $DIR/dwm-status-refresh.sh
	sleep 1
done

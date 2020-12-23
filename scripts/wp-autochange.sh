#!/bin/bash
for pid in $(pidof -x `basename $0`); do
   [ $pid != $$ ] && { exit 1; }
done
while true; do
	/bin/bash $DOTFILES_SCRIPT_PATH/scripts/wp-change.sh
	sleep 5m
done

#!/bin/bash
sleep 1
nm-applet &
dunst &
picom -b
$DWM_SCRIPT_PATH/wp-autochange.sh &
/home/rainboy/bin/trojan/trojan -c /home/rainboy/bin/trojan/config.json 2>&1 > /dev/null &
killall mpd
while pgrep -u $UID -x mpd >/dev/null; do sleep 1; done
/usr/bin/mpd $DOTFILES_SCRIPT_PATH/mpd/mpd.conf
xmodmap ~/.Xmodmap
sleep 5
uTools &

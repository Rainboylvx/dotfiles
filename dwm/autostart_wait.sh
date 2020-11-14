#!/bin/bash

sleep 10
/usr/bin/xmodmap $DOTFILES_SCRIPT_PATH/config/Xmodmap &
fcitx &
dunst &
/home/rainboy/bin/trojan/trojan -c /home/rainboy/bin/trojan/config.json 2>&1 > /dev/null &
/usr/bin/mpd $DOTFILES_SCRIPT_PATH/mpd/mpd.config &

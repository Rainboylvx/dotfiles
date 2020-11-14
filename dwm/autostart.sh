#!/bin/bash
$DWM_SCRIPT_PATH/dwm-status.sh &
$DWM_SCRIPT_PATH/wp-autochange.sh &
picom --experimental-backends -b --config $DOTFILES_SCRIPT_PATH/picom/picom.conf
#feh --bg-scale $HOME/mycode/dotfiles/background/wallhaven-103180.jpg
nm-applet &
#xfce4-power-manager &
/bin/bash $DWM_SCRIPT_PATH/autostart_wait.sh &

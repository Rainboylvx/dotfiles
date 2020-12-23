#!/bin/bash
#$DWM_SCRIPT_PATH/dwm-status.sh &
#$DWM_SCRIPT_PATH/wp-autochange.sh &
#picom --experimental-backends  --backend  "glx" --blur-method "dual_kawase" --blur-strength 5 -b
nm-applet &
/bin/bash $DWM_SCRIPT_PATH/autostart_wait.sh &

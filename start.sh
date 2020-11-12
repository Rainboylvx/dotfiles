#/home/rainboy/bin/trojan/trojan -c /home/rainboy/bin/trojan/config.json 2>&1 > /dev/null &
#pgrep -x udiskie > /dev/null
#if [ $? != 0 ]; then
    ##echo "mei you"
    #udiskie -ans 2>&1 > /dev/null &
#fi
curPath=$(readlink -f "$(dirname "$0")")
/usr/bin/xmodmap curPath/config/Xmodmap

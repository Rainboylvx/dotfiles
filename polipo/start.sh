current=`pwd`
export http_proxy=http://localhost:8123
polipo -c $current/config > /dev/null &

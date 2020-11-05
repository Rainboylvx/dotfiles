#!/bin/env bash

# 编译命令
filename=$1
if [ x$1 == x ]
then
    filename="1.cpp"
fi
echo $filename" ==> "${filename%.*}
#g++ -mcmodel=medium -g -o ${filename%.*} $filename -I /home/rainboy/__git__/random/include/effolkronium
g++ -DLOCAL -DDEBUG -include cpp_tools.h -g -o ${filename%.*} $filename

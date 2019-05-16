#!/bin/zsh
_path=$pwd
cd ~/mycode/book/noipbook_static/book
#拉取所有子模块
git pull origin master
cd ..
#git submodule foreach git pull
push.sh
cd $_path

NOW_PAD=`pwd`
# 安装tmux
ln -s $NOW_PAD/tmux/tmux.conf $HOME/.tmux.conf



## 软件安装
alias pac="sudo pacman -S --noconfirm"
pac cgdb
pac tmux
pac nodejs npm yarn
pac git
pac cmake
pac openssh
pac xfce4-terminal
pac net-tools

git config --global core.quotepath false



## yarn 
yarn config set registry https://registry.npm.taobao.org
yarn global add http-server
yarn global add typescript typescript-formatter

## 配置

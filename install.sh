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
pac fcitx fcitx-rime fcitx-configtool
pac neovim python-neovim

## git 设定
git config --global core.quotepath false


## yarn 
yarn config set registry https://registry.npm.taobao.org
yarn global add http-server
yarn global add typescript typescript-formatter
yarn global add browser-sync

## 配置

## 安装字体
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf
sudo mv "DejaVu Sans Mono Nerd Font Complete Mono.ttf" /usr/share/fonts
cd /usr/share/fonts/
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
cd $NOW_PAD



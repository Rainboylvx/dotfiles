NOW_PAD=`pwd`
# 安装tmux
ln -s $NOW_PAD/tmux/tmux.conf $HOME/.tmux.conf
ln -s $NOW_PAD/.pip $HOME/.pip



## /etc/pacman.conf 里添加我的 archlinuxcn
# archlinuxcn-keyring
# error key
#  TODO


sudo pacman -Syy
## 软件安装
alias pac="sudo pacman -S --noconfirm --needed "
pac cgdb
pac tmux
pac nodejs npm yarn
pac git fzf
pac cmake
pac openssh
pac xfce4-terminal
pac net-tools
pac neovim python-neovim
pac yay google-chrome ccls

## git 设定
git config --global core.quotepath false

## 安装tmux 的插件 tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
## Press prefix + I (capital i, as in Install) to fetch the plugin.

## yarn 
yarn config set registry https://registry.npm.taobao.org
yarn global add http-server
yarn global add typescript typescript-formatter
yarn global add browser-sync

## 配置

## 安装字体
pac ttf-font-awesome wqy-microhei wqy-zenhei nerd-fonts-fira-code



## 安装RainboyVim
pac neovim python-neovim

### 安装vim-plug 插件
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.sevencdn.com/junegunn/vim-plug/master/plug.vim

### 安装.vimrc
curl -fLo ~/.vimrc \
https://gitee.com/Rainboy/RainboyVim/raw/master/vimrc

### 安装 coc-settings.json
curl -fLo ~/.vim/coc-settings.json --create-dirs \
https://gitee.com/Rainboy/RainboyVim/raw/master/coc-settings.json

### 安装 coc.nvim的插件
curl -fLo ~/.config/coc/extensions/package.json --create-dirs \
https://gitee.com/Rainboy/RainboyVim/raw/master/coc-package.json

vim -c PlugInstall -c "qa"

cd ~/.config/coc/extensions
yarn
cd $NOW_PAD

### neovim 相关
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.local/share/nvim/site/autoload/

ln -s $HOME/.vim/plugged/RainboyVim/vimrc $HOME/.config/nvim/init.vim
ln -s $HOME/.vim/coc-settings.json $HOME/.config/nvim/coc-settings.json
ln -s $HOME/.vim/autoload/plug.vim  $HOME/.local/share/nvim/site/autoload/plug.vim


# 安装输入法
pac fcitx fcitx-rime fcitx-configtool rime-wubi
mkdir -p $HOME/.config/fcitx/rime
rm $HOME/.config/fcitx/rime/default.yaml
ln -s $NOW_PAD/rime/default.yaml $HOME/.config/fcitx/rime/default.yaml
ln -s $NOW_PAD/rime/symbols.yaml $HOME/.config/fcitx/rime/symbols.yaml

# 安装zsh
git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh
git clone --depth 1 https://github.com/skywind3000/z.lua ~/.oh-my-zsh/custom/plugins/z.lua
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -s $NOW_PAD/zsh/zshrc $HOME/.zshrc

# 安装其他软件

./install-app.sh

## 窗口主题和图标选取

pac materia-gtk-theme

ln -s $NOW_PAD/picom/picom.conf $HOME/.config/picom.conf

## 安装SSH networkmanerger
# TODO



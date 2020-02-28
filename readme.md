# 说明

这里的配置文件是我使用`manjaro+ i3`模式下的配置文件

## 1.安装manjaro i3

从: https://manjaro.org/download/i3/ 下载系统镜像，然后安装


## 2.修改源

```
sudo pacman-mirrors -i -c China -m rank
```

/etc/pacman.conf
```
## 中国科学技术大学 (ipv4, ipv6, http, https)
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch


sudo pacman -Syy
sudo pacman -S archlinxcn-keyring


## nodejs

## 3.安装google-chrome


```sh
# edit ~/.profile
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
#export BROWSER=/usr/bin/palemoon
export BROWSER=/usr/bin/google-chrome-stable
```


## 安装 rime 输入法

```sh
sudo pacman -S fcitx fcitx-im fcitx-rime fcitx-configtool

# edit ~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# 创建小鹤音形
rm ~/.config/fcitx/rime
cp -r rime ~/.config/fcitx

# 重新部署
```



.xinitrc


polybar


i3 配置

git clone https://github.com/snobb/xbright
cd xbright
make & sudo make install


## 字体

sudo pacman -S wqy-microhei

sudo wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf -P /usr/share/fonts

cd /usr/share/fonts
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv


## zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## 安装vim


## 背景

nitrogen

## polybar

sudo pacman -s pulseaudio


## 软件

 - xfce4-terminal
 - fasd，配置
 - openssh


```
sudo pacman -S openssh
sudo systemctl enable sshd
sudo systemctl start sshd
```

- nodejs npm yarn
yarn config set registry https://registry.npm.taobao.org
- net-tools
- tmux
- redis
- git
```
git config --global user.email rainboylvx@qq.com
git config --global user.name rainboy
git config --global core.editor "vim"
# 解决git status不能显示中文
git config --global core.quotepath false
```

 - cmake
 - http-server 
 - typescript


## rime的安装
```
sudo pacman -S fcitx fcitx-rime fcitx-configtool
```
Linux下fcitx-rime接挂小鹤音形 (解决无法正常使用的问题)
https://www.flypy.com/bbs/forum.php?mod=viewthread&tid=516&extra=

## 代码 对拍

**安装**

 - [cyaron](https://github.com/luogu-dev/cyaron)

 **命令**

  - `cp_noi_code_compare_template`
  - `code_cmp.js`

## Arch Linux中禁用UTC解决双系统时间问题
https://www.cnblogs.com/zhuxiaoxi/p/7714535.html



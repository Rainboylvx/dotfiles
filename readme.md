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
[archlinxcn]


sudo pacman -Syy
sudo pacman -S archlinxcn-keyring


## nodejs

## 3.安装google-chrome

fcitx 
fcitx-im
fcitx-rime

.xinitrc


polybar


i3 配置

git clone https://github.com/snobb/xbright
cd xbright
make & sudo make install


## 字体

sudo pacman -S wqy-microhei

sudo wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf -P /usr/share/fonts
sudo fc-cache


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
```

 - cmake
 - http-server 
 - typescript


## rime的安装

 - 先安装[星空键道6](https://gitee.com/xkinput/Rime_JD)
 - 然后将`rime/symbols.yaml`安装到`~/.config/fcitx/rime`
 - 修改`xkjd6.schema.yaml`的`punct: "^\\]([0-9]0?|[a-z]+)$"`

# youtube-dl 使用aria2c 多线程加速
alias yda='youtube-dl  --external-downloader aria2c --external-downloader-args "-x 16  -k 10M" '

# mongodb 的操作

alias db="mongod --dbpath=\"/home/rainboy/db\""
alias db_hide="mongod --dbpath=\"/home/rainboy/db\" --fork --syslog"
alias db_kill="killall mongod"


## git 相关

alias gp="git push origin master"
alias gm="git commit -m "
alias gs="git status"

gitpush(){
    git push origin "$1"
    git push mirror "$1"
}

alias gpp="gitpush origin master"


## 数字生成相关

# data gen 
alias dg="python ../data.py"

# trash-cli
alias rm="trash-put"              # 删除
alias rm-empty="trash-empty"      # 清空回收站
alias rm-list="trash-list"        # 列出回收站
alias rm-restore="trash-restore"

# 
alias ple="sudo"

# node
alias n="node"

# 常用缩写
alias v="nvim"
#alias vim="nvim"
alias nv="nvim"
alias mk='mk() { mkdir $1 && cd $1; };mk'
#alias luogoCode=''

# dot
alias graphPreview="dot -Txlib"

# noi
alias cp_noi_code_compare_template="cp -r $DOTFILES_PATH/noi_code_compare_template/* ."

alias proxy="export ALL_PROXY=socks5://127.0.0.1:1080"
alias unproxy="unset ALL_PROXY"
alias ipinfo="curl https://api.ip.sb/geoip | jq .country"
#unset http_proxy # 当前终端取消代理

# rbook
alias rbookSingle="/home/rainboy/mycode/rbookr/rbook/bin/single"

# mocp
alias mocp="padsp mocp"

# luogu 题目下载
alias luogu="luogu.js $(basename $(pwd))"

# python
alias py=python3

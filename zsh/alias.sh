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

## 数字生成相关

# data gen 
alias dg="python ../data.py"

# trash-cli
alias tp="trash-put"
alias te="trash-empty"
alias tl="trash-list"

# 
alias ple="sudo"

# node
alias n="node"

# 常用缩写
alias v="nvim"
alias vim="nvim"
alias nv="nvim"
alias mk='mk() { mkdir $1 && cd $1; };mk'

# dot
alias graphPreview="dot -Txlib"

# noi
alias cp_noi_code_compare_template="cp -r $DOTFILES_PATH/noi_code_compare_template/* ."

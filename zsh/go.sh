
myshellpwd=$(cd `dirname $0`; pwd)
export DOTFILES_PATH=$(cd $myshellpwd/..;pwd)
export PATH=$PATH:$HOME/.yarn/bin
source $myshellpwd/alias.sh
source $myshellpwd/env.sh
source $myshellpwd/function.sh


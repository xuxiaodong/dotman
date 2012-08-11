#
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# modified:  2012 Jul 19
#

export ZSH=$HOME/code/oh-my-zsh
export ZSH_THEME="codefun"
export DISABLE_AUTO_TITLE="true"
export DISABLE_AUTO_UPDATE="true"

plugins=(command-coloring gem git github perl ruby)

source $ZSH/oh-my-zsh.sh

# rbenv
eval "$(rbenv init -)"

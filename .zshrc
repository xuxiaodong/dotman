#
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# modified:  2012 Jul 11
#

export ZSH=$HOME/code/oh-my-zsh
export ZSH_THEME="codefun"
export DISABLE_AUTO_TITLE="true"
export DISABLE_AUTO_UPDATE="true"

plugins=(command-coloring gem git github perl ruby rvm)

source $ZSH/oh-my-zsh.sh

# Load RVM into a shell session *as a function*
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

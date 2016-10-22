#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2016 Oct 20
#

# prompt
[ -z "$PS1" ] && return

liBlack="\[\033[0;30m\]"
boBlack="\[\033[1;30m\]"
liRed="\[\033[0;31m\]"
boRed="\[\033[1;31m\]"
liGreen="\[\033[0;32m\]"
boGreen="\[\033[1;32m\]"
liYellow="\[\033[0;33m\]"
boYellow="\[\033[1;33m\]"
liBlue="\[\033[0;34m\]"
boBlue="\[\033[1;34m\]"
liMagenta="\[\033[0;35m\]"
boMagenta="\[\033[1;35m\]"
liCyan="\[\033[0;36m\]"
boCyan="\[\033[1;36m\]"
liWhite="\[\033[0;37m\]"
boWhite="\[\033[1;37m\]"

PS1=" $liGreen\w
 $liYellow───╼ $liWhite"

# alias
if [ "$TERM" != "dumb" ]; then
    alias ls='ls -F --color=auto'
fi

alias l='ls -lsh'
alias ll='ls -lash'
alias sd='shutdown -h now'
alias v='vim'

# completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

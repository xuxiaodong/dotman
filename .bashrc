#
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# modified:  2012 Jun 23
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

PS1="\n$boGreen\u$liWhite at $boBlue\h$liWhite in $boRed\w $liYellow{\[\`let exitstatus=\$? ; if [[ \${exitstatus} != 0 ]] ; then echo \"\${exitstatus}\" ; else echo "0" ; fi\`\]} \n$liRed∞ $liWhite"

# alias
if [ "$TERM" != "dumb" ]; then
    alias ls='ls -F --color=auto'
fi

alias ll='ls -lsh'

# completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

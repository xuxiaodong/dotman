#
# author:    Xu Xiaodong <xxdlhy@gmail.com> 
# modified:  2015 May 09
#

#-- source --#

. $HOME/.zshrc

#-- auto start x --#

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
    logout
fi

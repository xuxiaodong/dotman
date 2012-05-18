#
# author:    Xu Xiaodong <xxdlhy@gmail.com> 
# modified:  2011 Apr 17
#

#-- source --#

. $HOME/.zshrc

#-- auto start x --#

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
    logout
fi

#
# author:    Xu Xiaodong <xxdlhy@gmail.com> 
# modified:  2012 Jun 30
#

#-- source --#

. $HOME/.zshrc

#-- auto start x --#

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
    logout
fi

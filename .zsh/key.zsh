#
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# modified:  2011 Apr 13
#

#-- mode --#

set -o emacs

#-- bind --#

bindkey "\e[3~" delete-char
bindkey '\C-w' kill-region
bindkey -s '\C-xp' 'mplayer '

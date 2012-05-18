#!/bin/sh
#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2012 May 18
#

#-- powersave --#
xset +dpms
xset dpms 0 0 300

#-- ime --#
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
fcitx &

#-- app --#
unclutter -idle 5 &       # hide mouse cursor
syndaemon -t -k -i 2 -d & # disable trackpad while typing
urxvtd -q -f -o           # urxvt daemon
(sleep 2 && bar) &        # status bar
eval $(cat ~/.fehbg)      # set wallpaper
urxvtc -e tmux att &      # start tmux

#-- wm --#
exec dwm

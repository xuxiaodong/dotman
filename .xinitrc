#!/bin/sh
#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2012 Jul 07
#

#-- powersave --#
xset +dpms
xset dpms 0 0 300

#-- ime --#
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
fcitx &

#-- app --#
xmodmap ~/.xmodmaprc &     # swap Caps_Lock and Control_L
compton -cGb               # add fancy shadows
autocutsel &               # sync copy/paste buffers
unclutter -idle 5 &        # hide mouse cursor
syndaemon -t -k -i 2 -d &  # disable trackpad while typing
urxvtd -q -f -o            # urxvt daemon
(sleep 2 && bar) &         # status bar
eval $(cat ~/.fehbg)       # set wallpaper
urxvtc -e sh -c "tmuxen" & # start tmux

#-- wm --#
exec dwm

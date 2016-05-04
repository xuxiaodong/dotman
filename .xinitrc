#!/bin/sh
#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2016 Feb 28
#

#-- font --#
xset +fp /usr/share/fonts/ohsnap
xset fp rehash

#-- powersave --#
xset +dpms
xset dpms 0 0 300

#-- ime --#
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
fcitx &

#-- app --#
xmodmap ~/.xmodmaprc &               # swap Caps_Lock and Control_L
compton -cGb                         # add fancy shadows
unclutter -idle 5 &                  # hide mouse cursor
syndaemon -t -k -i 2 -d &            # disable trackpad while typing
urxvtd -q -f -o                      # urxvt daemon
hsetroot -fill ~/picture/black.jpg & # set wallpaper
btsync --config ~/.btsyncrc          # start btsync
urxvtc -e sh -c "tmuxen" &           # start tmux

#-- wm --#
exec 2bwm

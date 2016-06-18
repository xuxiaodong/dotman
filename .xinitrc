#!/bin/sh
#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2016 Jun 18
#

#-- font --#
xset +fp /usr/share/fonts/local
xset fp rehash

#-- powersave --#
xset +dpms
xset dpms 0 0 300

#-- ime --#
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx &

#-- app --#
xmodmap ~/.xmodmaprc &                      # swap Caps_Lock and Control_L
compton -cGb                                # add fancy shadows
unclutter -idle 5 &                         # hide mouse cursor
syndaemon -t -k -i 2 -d &                   # disable trackpad while typing
urxvtd -q -f -o                             # urxvt daemon
hsetroot -fill ~/picture/spacesurf.png &    # set wallpaper
urxvtc -geometry 182x47 -e sh -c "tmuxen" & # start tmux
yabar &                                     # start bar
sxhkd &                                     # start hotkey daemon

#-- wm --#
exec 2bwm

#!/bin/sh
#
# author   : Xu Xiaodong <xxdlhy@gmail.com>
# modified : 2016 Oct 19
#

#-- font --#
xset +fp /usr/share/fonts/local
xset fp rehash

#-- powersave --#
xset +dpms
xset dpms 0 0 300

#-- qt --#
export QT_STYLE_OVERRIDE=gtk2

#-- browser --#
export BROWSER=dwb

#-- ime --#
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx &

#-- app --#
xmodmap ~/.xmodmaprc &                            # swap Caps_Lock and Control_L
hsetroot -tile ~/usr/img/lwTi3CJ.jpg  &           # set wallpaper
xsetroot -cursor_name left_ptr &                  # default cursor
sxhkd &                                           # start hotkey daemon
yabar &                                           # start bar
compton -cGb                                      # add fancy shadows
unclutter -idle 5 &                               # hide mouse cursor
syndaemon -t -k -i 2 -d &                         # disable trackpad while typing
autocutsel -fork &                                # track cutbuffer
urxvtd -q -f -o                                   # urxvt daemon
urxvtc -geometry 129x71+20+50 -e sh -c "tmuxen" & # start tmux

#-- wm --#
exec windowchef

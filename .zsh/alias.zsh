#
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# modified:  2012 Mar 19
#

#-- base --#

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias ls='ls -F --color=auto'
alias lh='ls -lsh'
alias lo="ls -a | grep '^\.'"
alias df='df -h'
alias du='du -h'

alias less=$PAGER
alias grep='grep --color=auto'
alias smtp='/usr/sbin/ssmtp -C.ssmtp/ssmtp.conf -oA.ssmtp/revaliases'

#-- perl --#

alias pd='perldoc -t'
alias pf='perldoc -t -f'
alias pv='perldoc -t -v'
alias pw="perl -le 'print map { chr rand(94) + 33 } 1..5'"

#-- mplayer --#

alias cam='mplayer tv:// -tv driver=v4l2:width=640:height=480:outfmt=rgb24:device=/dev/video0'
alias rca='mencoder tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video0 -nosound -ovc lavc -o demo.avi'

#-- vbox --#

alias vu='VBoxManage startvm Ubuntu --type sdl'
alias vw='VBoxManage startvm WinXP --type sdl'

#-- octopress --#
alias pn='new() { bundle exec rake new_post\["$1"\] }; new'
alias pc='commit() { git add .; git commit -m "$1"; git push origin source }; commit'
alias pg='bundle exec rake generate; bundle exec rake deploy'

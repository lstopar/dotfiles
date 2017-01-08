#!/bin/bash

function get_desktop_env {
    if [ "$XDG_CURRENT_DESKTOP" = "" ]; then
        DSK=$(echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/')
    else
        DSK=$XDG_CURRENT_DESKTOP
    fi

    DSK=`echo $DSK | awk '{print tolower($0)}'`  # to lower case
    echo "$DSK"
}

# open tmux with 256 colors
alias tmux="tmux -2" 
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# use vim instead of VI
alias vi='vim'

# LS
# make ll human readable and show directories first
alias ls='ls --color=auto'
# list non-hidden files
alias l='ls -lh --sort=extension --group-directories-first'
# list all files
alias ll='l -a --ignore={.,..}'
# list only hidden files
alias lh='l -a --ignore={[!.]*,.,..}'
# sort ll by file size
alias lls='ll -S'
# sort ll by modification time
alias llt='ll -t'

# GREP
# give color to grep and redirect it to egrep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='egrep --colour=auto'

# if gnome tools are available
if [ `get_desktop_env` = 'x-cinnamon' ]; then
    alias open='gnome-open'
fi

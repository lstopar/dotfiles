#!/bin/bash

# open tmux with 256 colors
alias tmux="tmux -2" 
# use vim instead of VI
alias vi='vim'
# make ll human readable and show directories first
alias ls='ls --color=auto'
alias ll='ls -alLFh --group-directories-first'
# sort ll by file size
alias lls='ll -S'
# sort ll by modification time
alias llt='ll -t'

# give color to grep and redirect it to egrep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='egrep --colour=auto'

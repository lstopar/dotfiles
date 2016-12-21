#!/bin/bash

# open tmux with 256 colors
alias tmux="tmux -2" 
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

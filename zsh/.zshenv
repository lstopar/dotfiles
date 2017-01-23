#!/usr/bin/zsh

export NVM_DIR="/home/lstopar/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# disable shared history
# unsetopt share_history
setopt nosharehistory

#!/usr/bin/zsh

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# disable shared history
# unsetopt share_history
setopt nosharehistory

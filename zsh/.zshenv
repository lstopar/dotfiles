#!/usr/bin/zsh

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source all the files in directory ~/.env allowing projects to set their envorinment variables
if [ -d ~/.env ]; then
    for fname in ~/.env/*; do
        source $fname
    done
fi

# disable shared history
# unsetopt share_history
setopt nosharehistory

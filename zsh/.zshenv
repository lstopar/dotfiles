#!/usr/bin/zsh

# source all the files in directory ~/.env allowing projects to set their envorinment variables
if [ -d ~/.env ] && [ ! -z "$(ls -A ~/.env)" ]; then
    for fname in ~/.env/*; do
        if [ -f "$fname" ]; then
            source $fname
        fi
    done
fi

# ZSH ALIASES
# create an alias for n-history
alias h="n-history"


# disable shared history
# unsetopt share_history
setopt nosharehistory

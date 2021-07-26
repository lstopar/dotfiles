#!/bin/bash

# disable ^s and ^q (which stop and start the terminal)
[[ $- == *i*  ]] && stty -ixon
# set 256 color terminal
if [[ $TERM == xterm  ]]; then
    export TERM=xterm-256color
fi

# MacOS specific stuff
if [[ `uname -s` == "Darwin" ]]; then
    # echo "setting Mac specific options"
    export PATH="$HOME/bin:$PATH"
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
    export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
    export PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
    export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
    export PATH="/usr/local/opt/gnu-which/libexec/gnubin:$PATH"
    export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

    export LDFLAGS="-L/usr/local/opt/libffi/lib"
fi

# extend path with $PWD
export PATH=.:$PATH

# configure NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

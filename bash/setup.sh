#!/bin/bash

if [ -f ~/.bash_aliases ] || [ -L ~/.bash_aliases ]; then
    echo 'removing old aliases file ...'
    rm ~/.bash_aliases
fi

ln -s `pwd`/.bash_aliases ~/.bash_aliases

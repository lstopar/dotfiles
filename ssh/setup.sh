#!/bin/bash

if [ -e "$HOME/.vimrc" ] || [ -L "$HOME/.vimrc" ]; then 
    echo 'removing old ~/.ssh/config'
    rm ~/.ssh/config
fi

echo 'linking configuration file'
ln -s `pwd`/config ~/.ssh/config

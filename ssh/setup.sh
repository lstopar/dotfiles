#!/bin/bash

if [ -e "$HOME/.ssh/config" ] || [ -L "$HOME/.ssh/config" ]; then 
    echo 'removing old ~/.ssh/config'
    rm ~/.ssh/config
fi

os_file='config-linux'
if [ `uname -s` == "Darwin" ]; then
    os_file='config-mac'
fi

echo 'linking configuration file'
ln -s `pwd`/$os_file ~/.ssh/config

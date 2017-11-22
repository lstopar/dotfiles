#!/bin/bash

if [ -e "$HOME/.ssh/config" ] || [ -L "$HOME/.ssh/config" ]; then 
    echo 'removing old ~/.ssh/config'
    rm ~/.ssh/config
fi
if [ -e "$HOME/.ssh/os-specific" ] || [ -L "$HOME/.ssh/os-specific" ]; then 
    echo 'removing old ~/.ssh/os-specific'
    rm ~/.ssh/config
fi

os_file='linux-specific'
if [ `uname -s` == "Darwin\n" ]; then
    os_file='mac-specific'
fi

echo 'linking configuration file'
ln -s `pwd`/config ~/.ssh/config
ln -s `pwd`/$os_file ~/.ssh/os-specific

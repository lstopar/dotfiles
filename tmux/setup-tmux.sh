#!/bin/bash

CONF_DIR=`pwd`

if [ -L ~/.tmux.conf ] || [ -e ~/.tmux.conf ]; then
    echo 'Removing old config file ...'
    rm ~/.tmux.conf
fi

echo 'Creating new configuration file ...'
cp $CONF_DIR/.tmux.conf ~/.tmux.conf

if [ "$1" == '--clipboard' ]; then
    echo 'Setting up clipboard ...'
    cat $CONF_DIR/.tmux-clipboard.conf >> ~/.tmux.conf
fi

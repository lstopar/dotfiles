#!/bin/bash

echo 'setting up bash scripts ...'

if [ -L ~/bin ]; then
    echo 'removing old bin link ...'
    rm ~/bin
elif [ -d ~/bin ]; then
    echo 'backing up bin directory ...'
    mkdir -p ~/.backups
    mv ~/bin ~/.backups/bin
fi

ln -s `pwd`/bin ~/bin

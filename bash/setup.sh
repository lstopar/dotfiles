#!/bin/bash

echo 'setting up bash ...'

if [ -L ~/.bash_aliases ]; then
    echo 'removing old aliases file ...'
    rm ~/.bash_aliases
elif [ -f ~/.bash_aliases ]; then
    echo 'backing up old aliases file ...'
    mkdir -p ~/.backups
    mv ~/.bash_aliases ~/.backups/.bash_aliases-backup
fi

if [ -L ~/.bashrc ]; then
    echo 'removing old aliases file ...'
    rm ~/.bashrc
elif [ -f ~/.bashrc ]; then
    echo 'backing up old aliases file ...'
    mkdir -p ~/.backups
    mv ~/.bashrc ~/.backups/.bashrc-backup
fi

ln -s `pwd`/.bash_aliases ~/.bash_aliases
ln -s `pwd`/.bashrc ~/.bashrc

# setup subdirectories
pushd . > /dev/null
cd scripts
. setup.sh
popd > /dev/null

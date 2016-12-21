#!/bin/bash

echo 'setting up bash ...'

if [ -f ~/.bash_aliases ] || [ -L ~/.bash_aliases ]; then
    echo 'removing old aliases file ...'
    rm ~/.bash_aliases
fi

if [ -f ~/.bashrc ] || [ -L ~/.bashrc ]; then
    echo 'removing old aliases file ...'
    rm ~/.bashrc
fi

ln -s `pwd`/.bash_aliases ~/.bash_aliases
ln -s `pwd`/.bashrc ~/.bashrc

# setup subdirectories
pushd . > /dev/null
cd scripts
. setup.sh
popd > /dev/null

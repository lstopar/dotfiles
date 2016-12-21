#!/bin/bash

echo 'setting up bash scripts ...'

if [ -d ~/bin ] && [ ! -L ~/bin ]; then
    echo '~/bin is a directory, should delete manually, SKIPPING!!'
    exit 0
fi

if [ -L ~/bin ]; then
    echo 'removing old bin link ...'
    rm ~/bin
fi

ln -s `pwd`/bin ~/bin

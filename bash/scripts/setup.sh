#!/bin/bash

echo 'setting up bash scripts ...'

if [ -L ~/bin ]; then
    echo 'removing old bin link ...'
    rm ~/bin
fi

if [ ! -d ~/bin ]; then
    echo 'creating bin directory ...'
    mkdir ~/bin
fi

for f_name in bin/*; do
    f_base=`basename $f_name`
    # remove the old link if exists
    if [ -L ~/bin/$f_base ]; then
        echo 'removing link '$f_base' ...'
        rm ~/bin/$f_base
    fi
    echo 'linking '$f_base' ...'
    ln -s `pwd`/bin/$f_base ~/bin/$f_base
done

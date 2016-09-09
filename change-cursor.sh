#!/bin/bash

echo 'Cursor: '$1

if [ $1 == 'block' ]; then
    echo 'changing cursor to block ...'
    gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block
else
    echo 'Changing cursor to ibeam ...'
    gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam
fi

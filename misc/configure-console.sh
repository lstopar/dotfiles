#!/bin/bash

TERM_FONT_COLOR=#ABB2BF
TERM_BACKGROUND_COLOR=#262626

PROFILE_NAME=Default

gconftool-2 --set "/apps/gnome-terminal/profiles/$PROFILE_NAME/foreground_color" --type string "$TERM_FONT_COLOR"
gconftool-2 --set "/apps/gnome-terminal/profiles/$PROFILE_NAME/background_color" --type string "$TERM_BACKGROUND_COLOR"

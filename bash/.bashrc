#!/bin/bash

# disable ^s and ^q (which stop and start the terminal)
[[ $- == *i*  ]] && stty -ixon
# set 256 color terminal
if [[ $TERM == xterm  ]]; then
    export TERM=xterm-256color
fi

# MacOS specific stuff
if [[ `uname -s` == "Darwin" ]]; then
    # echo "setting Mac specific options"
    export PATH="$HOME/bin:$PATH"
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
    export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
fi

# extend path with $PWD
export PATH=.:$PATH

# set color codes
CODE_RED='204'
CODE_DARK_RED='196'
CODE_GREEN='114'
CODE_YELLOW='180'
CODE_DARK_YELLOW='173'
CODE_BLUE='39'
CODE_BLUE_ALT='75'
CODE_PURPLE='170'
CODE_PURPLE_ALT='176'
CODE_CYAN='38'
CODE_CYAN_ALT='73'
CODE_WHITE='145'
CODE_BLACK='235'
CODE_COMMENT_GRAY='59'
CODE_GUTTER_FG_GRAY='238'
CODE_CURSOR_GRAY='236'
CODE_VISUAL_GRAY='237'
CODE_SPECIAL_GRAY='238'
CODE_VERT_SPLIT='59'

# set colors
COLOR_RED='38;5;'$CODE_RED
COLOR_DARK_RED='38;5;'$CODE_DARK_RED
COLOR_GREEN='38;5;'$CODE_GREEN
COLOR_YELLOW='38;5;'$CODE_YELLOW
COLOR_DARK_YELLOW='38;5;'$CODE_DARK_YELLOW
COLOR_BLUE='38;5;'$CODE_BLUE
COLOR_BLUE_ALT='38;5;'$CODE_BLUE_ALT
COLOR_PURPLE='38;5;'$CODE_PURPLE
COLOR_PURPLE_ALT='38;5;'$CODE_PURPLE_ALT
COLOR_CYAN='38;5;'$CODE_CYAN
COLOR_CYAN_ALT='38;5;'$CODE_CYAN_ALT
COLOR_WHITE='38;5;'$CODE_WHITE
COLOR_BLACK='38;5;'$CODE_BLACK
COLOR_COMMENT_GRAY='38;5;'$CODE_COMMENT_GRAY
COLOR_GUTTER_FG_GRAY='38;5;'$CODE_GUTTER_FG_GRAY
COLOR_CURSOR_GRAY='38;5;'$CODE_CURSOR_GRAY
COLOR_VISUAL_GRAY='38;5;'$CODE_VISUAL_GRAY
COLOR_SPECIAL_GRAY='38;5;'$CODE_SPECIAL_GRAY
COLOR_VERT_SPLIT='38;5;'$CODE_VERT_SPLIT

EFFECT_BOLD=1

# no	NORMAL, NORM	Global default, although everything should be something
# fi	FILE	Normal file
# di	DIR	Directory
# ln	SYMLINK, LINK, LNK	Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
# pi	FIFO, PIPE	Named pipe
# do	DOOR	Door
# bd	BLOCK, BLK	Block device
# cd	CHAR, CHR	Character device
# or	ORPHAN	Symbolic link pointing to a non-existent file
# so	SOCK	Socket
# su	SETUID	File that is setuid (u+s)
# sg	SETGID	File that is setgid (g+s)
# tw	STICKY_OTHER_WRITABLE	Directory that is sticky and other-writable (+t,o+w)
# ow	OTHER_WRITABLE	Directory that is other-writable (o+w) and not sticky
# st	STICKY	Directory with the sticky bit set (+t) and not other-writable
# ex	EXEC	Executable file (i.e. has ‘x’ set in permissions)
# mi	MISSING	Non-existent file pointed to by a symbolic link (visible when you type ls -l)
# lc	LEFTCODE, LEFT	Opening terminal code
# rc	RIGHTCODE, RIGHT	Closing terminal code
# ec	ENDCODE, END	Non-filename text
# *.extension	 	Every file using this # extension e.g. *.jpg

#=======================================
# LS COLORS
#=======================================

# directories
COLOR_DIR=$COLOR_BLUE';'$EFFECT_BOLD
COLOR_OTHER_WRITABLE=$COLOR_GREEN';'$EFFECT_BOLD
# links
COLOR_LINK=$COLOR_CYAN
COLOR_ORPHAN=$COLOR_RED
COLOR_MISSING=$COLOR_DARK_RED
# permissions
COLOR_EXECUTABLE=$COLOR_GREEN
# file types
COLOR_CHAR_DEVICE=$COLOR_PURPLE
COLOR_SOCKET=$COLOR_PURPLE
COLOR_BLOCK_DEVICE=$COLOR_YELLOW

export LS_COLORS='di='$COLOR_DIR':ln='$COLOR_LINK':or='$COLOR_ORPHAN':mi='$COLOR_MISSING':ex='$COLOR_EXECUTABLE':ow='$COLOR_OTHER_WRITABLE':cd='$COLOR_CHAR_DEVICE':bd='$COLOR_BLOCK_DEVICE':so='$COLOR_SOCKET

#=======================================
# GREP COLORS
#=======================================

COLOR_FILE=$COLOR_PURPLE
COLOR_LINE=$COLOR_GREEN
COLOR_BYTE_OFFSET=$COLOR_BLUE
COLOR_MATCH=$COLOR_RED';'$EFFECT_BOLD

export GREP_COLORS='mt='$COLOR_MATCH':fn='$COLOR_FILE':ln='$COLOR_LINE':bn='$COLOR_TYPE_OFFSET

#=======================================
# PS1
#=======================================

CALLER=`ps -p $$ | awk '$1 != "PID" {print $(NF)}'`
if [[ "$CALLER" == "zsh" ]]; then
    A=3
    # if [[ ${EUID} == 0 ]]; then
    #     PROMPT_COLOR=$CODE_RED
    # else
    #     PROMPT_COLOR=$CODE_BLUE
    # fi
    # # LEGEND
    # # %n - username
    # # %d - pwd
    # # %~ - same as %d, but replaces home with ~
    # # %? - status of last command
    # # %j - number of jobs
    # # %N - name of script, sourced file or shell being executed (if none then $0)
    # # %L - value of SHLVL
    # # left prompt
    # PROMPT='${ret_status} %{%F{'$PROMPT_COLOR'}%c%{$reset_color%} $(git_prompt_info)'
    # # PROMPT='%F{'$PROMPT_COLOR'}%n@%m %F{'$CODE_WHITE'}%1~ %F{'$PROMPT_COLOR'}$ %f'
    # # right prompt
    # RPROMPT=$(vi_mode_prompt_info)
    # # RPROMPT='%F{'$PROMPT_COLOR'}[?%?, $(get_RAM)G, $(get_load) ($(get_nr_CPUs))]'
else
    # bash
    if [[ ${EUID} == 0 ]]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\e['$COLOR_RED'm\]\u@\h \[\e['$COLOR_WHITE'm\]\W \[\e['$COLOR_RED'm\]$\[\e[00m\] '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\e['$COLOR_BLUE'm\]\u@\h \[\e['$COLOR_WHITE'm\]\W \[\e['$COLOR_BLUE'm\]$\[\e[00m\] '
    fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

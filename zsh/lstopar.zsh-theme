#!/bin/bash

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

# LEGEND
# %n - username
# %m - hostname
# %d - pwd
# %~ - same as %d, but replaces home with ~
# %? - status of last command
# %j - number of jobs
# %N - name of script, sourced file or shell being executed (if none then $0)
# %L - value of SHLVL
# local ret_status="%(?:%{%B%F{"$CODE_GREEN"}%}➜ :%{%B%F{"$CODE_RED"}%}➜ )"
local ret_status="%(?:%{%F{"$CODE_BLUE"}%}%n@%m :%{%F{"$CODE_RED"}%}%n@%m )"

PROMPT='${ret_status}%{%F{'$CODE_WHITE'}%}%c%{$reset_color%}$(git_prompt_info) %{%F{'$CODE_BLUE'}%}%#%{$reset_color%} '
# PROMPT="${ret_status}%{%F{"$CODE_WHITE"}%}%c%{$reset_color%}$(git_prompt_info) %{%F{"$CODE_BLUE"}%}%# %{$reset_color%}"

# ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{"$CODE_BLUE"}%}git:(%{%F{"$CODE_RED"}%}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{"$CODE_BLUE"}%}[%{%F{"$CODE_WHITE"}%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*%{%F{"$CODE_BLUE"}%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{%F{"$CODE_BLUE"}%}]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Override highlighter colors
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=$CODE_RED
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=$CODE_RED,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=$CODE_PURPLE,
ZSH_HIGHLIGHT_STYLES[builtin]=fg=$CODE_PURPLE
ZSH_HIGHLIGHT_STYLES[function]=fg=$CODE_BLUE
ZSH_HIGHLIGHT_STYLES[command]=fg=$CODE_WHITE
ZSH_HIGHLIGHT_STYLES[precommand]=fg=$CODE_WHITE,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=$CODE_RED
ZSH_HIGHLIGHT_STYLES[path]=fg=$CODE_WHITE
ZSH_HIGHLIGHT_STYLES[globbing]=fg=$CODE_PURPLE
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=$CODE_WHITE,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=$CODE_BLUE
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=$CODE_BLUE
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=$CODE_BLUE
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=$CODE_GREEN
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=$CODE_GREEN
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=$CODE_RED
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=$CODE_RED
ZSH_HIGHLIGHT_STYLES[assign]=none

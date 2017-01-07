# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000

setopt autocd extendedglob notify
# allow function calls in PROMPT
setopt PROMPT_SUBST
unsetopt beep
bindkey -v

# enable colors
# autoload -U colors && colors
# autoload -U promptinit && promptinit

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/lstopar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# source bash configuration
source ~/.bashrc
source ~/.bash_aliases

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

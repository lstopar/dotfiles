bindkey -a -s "diw" "bde"
bindkey -a -s "daw" "bdw"
# handle single quote
bindkey -a -s "di'" "F'ldt'"
bindkey -a -s "da'" "F'df'"
bindkey -a -s "ci'" "F'lct'"
bindkey -a -s "ca'" "F'cf'"
# handle double quote
bindkey -a -s 'di"' 'F"ldt"'
bindkey -a -s 'da"' 'F"df"'
bindkey -a -s 'ci"' 'F"lct"'
bindkey -a -s 'ca"' 'F"cf"'
# browse history
bindkey '^P' up-history
bindkey '^N' down-history

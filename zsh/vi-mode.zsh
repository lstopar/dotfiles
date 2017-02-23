# change/delete word
bindkey -a -s "diw" "lbde"
bindkey -a -s "ciw" "lbce"
bindkey -a -s "daw" "lbdw"
bindkey -a -s "caw" "lbcw"
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
# go to beginning of line
bindkey -a -s '_' '0'
# browse history
bindkey '^P' up-history
bindkey '^N' down-history

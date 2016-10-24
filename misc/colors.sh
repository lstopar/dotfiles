COLOR_RED='38;5;204'
COLOR_DARK_RED='38;5;196'
COLOR_GREEN='38;5;114'
COLOR_YELLOW='38;5;180'
COLOR_DARK_YELLOW='38;5;173'
COLOR_BLUE='38;5;39'
COLOR_BLUE_ALT='38;5;75'
COLOR_PURPLE='38;5;170'
COLOR_PURPLE_ALT='38;5;176'
COLOR_CYAN='38;5;38'
COLOR_CYAN_ALT='38;5;73'
COLOR_WHITE='38;5;145'
COLOR_BLACK='38;5;235'
COLOR_COMMENT_GRAY='38;5;59'
COLOR_GUTTER_FG_GRAY='38;5;238'
COLOR_CURSOR_GRAY='38;5;236'
COLOR_VISUAL_GRAY='38;5;237'
COLOR_SPECIAL_GRAY='38;5;238'
COLOR_VERT_SPLIT='38;5;59'

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


if [[ ${EUID} == 0 ]] ; then
    PS1='${debian_chroot:+($debian_chroot)}\[\e['$COLOR_RED'm\]\u@\h \[\e['$COLOR_WHITE'm\]\W \[\e['$COLOR_RED'm\]$\[\e[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\[\e['$COLOR_BLUE'm\]\u@\h \[\e['$COLOR_WHITE'm\]\W \[\e['$COLOR_BLUE'm\]$\[\e[00m\] '
fi

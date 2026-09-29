#!/bin/sh
# Hide or show terminal cursor for tmux copy-mode
# Usage: hide-cursor.sh <in_mode> <tty>
if [ "$1" = "1" ]; then
    printf '\033[?25l' > "$2"
else
    printf '\033[?25h' > "$2"
fi

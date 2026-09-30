#!/bin/sh
# Hide or show terminal cursor for tmux copy-mode
# $1: pane_in_mode (1 = entering copy-mode, 0 = exiting)
# $2: client_tty (/dev/pts/X)
if [ "$1" = "1" ]; then
    [ -n "$2" ] && [ -w "$2" ] && printf '\033[?25l' > "$2" 2>/dev/null
    tmux set -p cursor-colour "#070722" 2>/dev/null
else
    [ -n "$2" ] && [ -w "$2" ] && printf '\033[?25h' > "$2" 2>/dev/null
    tmux set -p -u cursor-colour 2>/dev/null
fi

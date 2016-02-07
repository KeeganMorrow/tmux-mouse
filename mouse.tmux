#/usr/bin/env bash

tmux_mouse_2_1_later(){
    tmux set -g mouse on
}

tmux_mouse_pre_2_1(){
    tmux set -g mode-mouse on
    tmux set-option -g mouse-select-pane on
    tmux set-option -g mouse-select-window on
    tmux set-option -g mouse-resize-pane on
}

versionlt() {
    if [ "$1" = "$2" ]; then
        return 0
    fi
    oldest=`echo -e "$1\n$2" | sort -V | head -n1`
    if [ "$1" = "$oldest" ]; then
        return 1
    else
        return 0
    fi
}

verstring=$(tmux -V | awk '{print $2;}')
versionlt "$verstring" "2.1"

if [[ ! $? -eq 0 ]] ; then
    tmux_mouse_pre_2_1
else
    tmux_mouse_2_1_later
fi



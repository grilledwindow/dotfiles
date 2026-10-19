#!/bin/sh
if [ $(dunstctl count displayed) -eq 0 ]; then
    level=$($HOME/.config/dunst/cycle_pause_level.sh);
    $HOME/.config/dunst/sync_pause_level.sh;
    polybar-msg action dunst hook 0;
else
    dunstctl close-all;
fi


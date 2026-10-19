#!/bin/sh
level="$(cat ~/.config/dunst/pause_level)"

# 3 - Critical only, pause everything else
# 2 - Normal + Critical
# 1 - Everything
pause_level=1
if [ "$level" -eq 3 ]; then
    pause_level=60;
elif [ "$level" -eq 2 ]; then
    pause_level=30;
fi

dunstctl set-pause-level "$pause_level";


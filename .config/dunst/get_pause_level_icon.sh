#!/bin/sh
level="$(cat ~/.config/dunst/pause_level)"

# 3 - Critical only, pause everything else
# 2 - Normal + Critical
# 1 - Everything
if [ "$level" -eq 3 ]; then
    # 󰒲
    echo "󰤄";
elif [ "$level" -eq 2 ]; then
    echo "";
else
    echo "";
fi


#!/bin/sh
save="$HOME/.config/dunst/pause_level"
level=$(( $(cat $save) - 1 ))

if [ "$level" -lt 1 ]; then
    level=3
fi

echo "$level" | tee "$save";


#!/bin/sh
wid=$(xprop -spy -root _NET_ACTIVE_WINDOW)
echo "$wid"

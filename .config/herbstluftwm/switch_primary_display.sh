#!/bin/bash
display=$(xrandr | grep ' connected' | grep -v 'primary' | awk '{print $1}')
xrandr --output $display --primary

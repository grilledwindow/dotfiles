#!/bin/bash
cd $(cat ~/.cwd) && exec xterm

# pstree=$(pstree -p $focus_pid)
# pids=$(pstree -p $focus_pid | grep -Eo '\([0-9]+\)' | tr -d '()')
# pid=$(echo $pids | awk '{print $2}')

# focus_pid=$(herbstclient attr clients.focus.pid)
# pid=$(
#     pstree -p "$focus_pid" |
#     awk -F'[()]' 'NR==1 {print $4}'
# )
# cwd=$(readlink /proc/$pid/cwd)
# echo $cwd > ~/.cwd


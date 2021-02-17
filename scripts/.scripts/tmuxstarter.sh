#!/bin/sh
tmux new-session -d -n music 'ncmpcpp'
tmux neww -n news 'newsboat'
tmux selectw -t 0
tmux -2 attach-session -d

#!/usr/bin/bash

FOLDER=${1:-~/Code}

tmux new -d -nserver -c $FOLDER
tmux neww -ncode -c $FOLDER
tmux neww -ntest -c $FOLDER
tmux a ';' selectw -t:1

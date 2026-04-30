#!/bin/bash

if [ -z "$1" ]; then
  dir=$(pwd)
else
  dir=$1
fi

session_name=$(basename $dir)

# Check if the session already exists
tmux has-session -t $session_name 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -ds $session_name

    tmux rename-window -t $session_name:0 $session_name
    tmux send-keys -t $session_name:0.0 "cd $dir" C-m
fi

if [ -n "$TMUX" ]; then
  echo "session $session_name is available"
else
  tmux attach -t $session_name
fi

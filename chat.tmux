#!/bin/bash

# Irssi
tmux renamew irssi
tmux split-window -h -p 40
tmux split-window -v
tmux select-pane -t 1
tmux split-window -h -l 30
tmux select-pane -t 1
tmux send-keys 'irssi' 'Enter'
tmux select-pane -t 1
tmux send-keys 'cat ~/.irssi/nicklistfifo' 'Enter'
tmux select-pane -t 1
tmux send-keys '/nicklist fifo' 'Enter'

# Mail
tmux neww
tmux renamew Mail
tmux split -h
tmux send-keys 'mutt' 'Enter'

# Default Window
tmux next

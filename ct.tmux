#!/bin/bash

# api
tmux renamew api
tmux send-keys 'j api' 'Enter'
tmux send-keys 'clear' 'Enter'
tmux split -h
tmux send-keys 'j api' 'Enter'
tmux send-keys 'clear' 'Enter'
tmux split -v
tmux send-keys 'j api' 'Enter'
tmux send-keys 'clear' 'Enter'

# pub
tmux neww
tmux renamew public
tmux send-keys 'j pub' 'Enter'
tmux send-keys 'clear' 'Enter'
tmux split -h
tmux send-keys 'j pub' 'Enter'
tmux send-keys 'clear' 'Enter'
tmux split -v
tmux send-keys 'j pub' 'Enter'
tmux send-keys 'clear' 'Enter'

# admin
tmux neww
tmux renamew admin
tmux send-keys 'j admin' 'Enter'
tmux send-keys 'clear' 'Enter'
tmux split -h
tmux send-keys 'j admin' 'Enter'
tmux send-keys 'clear' 'Enter'
tmux split -v
tmux send-keys 'j admin' 'Enter'
tmux send-keys 'clear' 'Enter'

# server
tmux neww
tmux renamew server
tmux send-keys 'cd ~/Projects/ct' 'Enter'
tmux send-keys 'vagrant up srv1' 'Enter'
tmux send-keys 'vagrant ssh srv1' 'Enter'
tmux split -h
tmux send-keys 'cd ~/Projects/ct' 'Enter'
tmux send-keys 'vagrant ssh srv1' 'Enter'
tmux send-keys 'tail -f /var/log/www/api.log' 'Enter'
tmux split -v
tmux send-keys 'cd ~/Projects/ct' 'Enter'
tmux send-keys 'vagrant ssh srv1' 'Enter'
tmux send-keys 'tail -f /var/log/www/www.log' 'Enter'

# Database
tmux neww
tmux renamew Database
tmux split -h
tmux split -v

# Default Window
tmux next

#!/bin/bash

# Terminate already running bar instances
killall -q polybar

DIR="$HOME/dotfiles/.config/polybar/"
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
clipster -d &

# Launch Polybar, using default config location ~/.config/polybar/config
polybar -c "$DIR"/config.ini &

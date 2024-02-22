#/bin/bash

# Terminate already running bar instances
killall -q polybar

DIR="$HOME/.config/polybar/"
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
xset dpms 0 0 0 && xset -dpms  && xset s off && xset s noblank
clipster -d &
polybar -q thinker -c "$DIR"/config.ini &

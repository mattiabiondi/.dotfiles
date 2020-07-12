#!/usr/bin/env sh

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if [ "$(bspc query -M | wc -l)" -eq 2 ]; then
  polybar -r docked &
else
  polybar -r mobile &
fi

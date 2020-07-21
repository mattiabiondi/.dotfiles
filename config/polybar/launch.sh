#!/usr/bin/env sh

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if [ "$(xrdb -query | awk '/dpi/ {print $2}')" -eq 144 ]; then
  polybar -r docked &
else
  polybar -r mobile &
fi

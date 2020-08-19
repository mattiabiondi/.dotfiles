#!/bin/bash
EXTERNAL_OUTPUT="DP3"
INTERNAL_OUTPUT="eDP1"

# if we don't have a file, start at zero
if xrandr | grep "$EXTERNAL_OUTPUT disconnected"; then
    notify-send $EXTERNAL_OUTPUT' disconnected' --icon=computer
else
    notify-send 'connected' --icon=computer
fi

# otherwise read the value from the file
# else
#   monitor_mode=`cat /tmp/monitor_mode.dat`
# fi
#
# if [ $monitor_mode = "EXTEND" ]; then
#         monitor_mode="EXTERNAL"
#         xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --auto
# elif [ $monitor_mode = "EXTERNAL" ]; then
#         monitor_mode="INTERNAL"
#         xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --off
# elif [ $monitor_mode = "INTERNAL" ]; then
#         monitor_mode="CLONES"
#         xrandr --output $INTERNAL_OUTPUT --auto
#         xrandr --output $EXTERNAL_OUTPUT --auto --above $INTERNAL_OUTPUT
#         xrandr --output $EXTERNAL_OUTPUT --same-as $INTERNAL_OUTPUT
# else
#         monitor_mode="EXTEND"
#         xrandr --output $INTERNAL_OUTPUT --auto
#         xrandr --output $EXTERNAL_OUTPUT --auto --above $INTERNAL_OUTPUT
# fi
#
# echo "${monitor_mode}" > /tmp/monitor_mode.dat
#
# notify-send 'Monitor mode: '$monitor_mode 'Press F8 to change it' --icon=computer

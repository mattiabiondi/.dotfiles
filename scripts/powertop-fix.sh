#!/bin/sh

sleep 1;

MOUSE="/sys/bus/usb/devices/1-5.3.3/power/control"
KEYBOARD="/sys/bus/usb/devices/1-5.3.2/power/control"

if [ -f "$MOUSE" ]; then
	echo 'on' > $MOUSE;
fi

if [ -f "$KEYBOARD" ]; then
  echo 'on' > $KEYBOARD;
fi

#!/bin/bash

if pgrep -x redshift > /dev/null
then
  killall -q redshift
  notify-send 'Redshift stopped'
  while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done
else
	redshift &
  notify-send 'Redshift started'
fi

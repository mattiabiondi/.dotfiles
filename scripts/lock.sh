#!/bin/sh

notify-send "DUNST_COMMAND_PAUSE"

if [ "$(bspc query -M | wc -l)" -eq 2 ]; then
  indpos="2475:1355"
  timepos="25:1335"
  datepos="25:1405"
else
  indpos="1835:995"
  timepos="25:975"
  datepos="25:1045"
fi

i3lock --nofork --ignore-empty-password		\
    --linecolor=00000000        		\
    --keyhlcolor=eceff4ff       		\
    --bshlcolor=bf616aff			\
    --separatorcolor=00000000   		\
    --radius=50					\
    --ring-width=15				\
    --indpos=$indpos				\
    \
    --insidevercolor=00000000			\
    --insidewrongcolor=00000000 		\
    --insidecolor=00000000			\
    \
    --ringcolor=88c0d0ff        		\
    --ringvercolor=a3be8cff     		\
    --ringwrongcolor=bf616aff   		\
    \
    --clock					\
    --timecolor=eceff4ff			\
    --timestr="%H:%M:%S"			\
    --time-font='JetBrains Mono'		\
    --timesize=100				\
    --time-align=1				\
    --timepos=$timepos				\
    \
    --datecolor=d8dee9ff			\
    --datestr="%A, %d %B"			\
    --date-font='JetBrains Mono'		\
    --datesize=50				\
    --datepos=$datepos				\
    --date-align=1				\
    \
    --veriftext=""				\
    --wrongtext=""				\
    \
    --indicator					\
    --color=21262e

notify-send "DUNST_COMMAND_RESUME"

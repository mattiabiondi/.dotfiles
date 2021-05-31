#!/bin/sh

dunstctl set-paused true

if [ "$(xrdb -query | awk '/dpi/ {print $2}')" -eq 144 ]; then
  indpos="3755:1355"
  timepos="1305:1335"
  datepos="1305:1405"
else
  indpos="1835:995"
  timepos="25:975"
  datepos="25:1045"
fi

i3lock --nofork --ignore-empty-password		\
    --line-color=00000000        		\
    --keyhl-color=eceff4ff       		\
    --bshl-color=bf616aff			\
    --separator-color=00000000   		\
    --radius=50					\
    --ring-width=15				\
    --ind-pos=$indpos				\
    \
    --insidever-color=00000000			\
    --insidewrong-color=00000000 		\
    --inside-color=00000000			\
    \
    --ring-color=88c0d0ff        		\
    --ringver-color=a3be8cff     		\
    --ringwrong-color=bf616aff   		\
    \
    --clock					\
    --time-color=eceff4ff			\
    --time-str="%H:%M:%S"			\
    --time-font='JetBrains Mono'		\
    --time-size=100				\
    --time-align=1				\
    --time-pos=$timepos				\
    \
    --date-color=d8dee9ff			\
    --date-str="%A, %d %B"			\
    --date-font='JetBrains Mono'		\
    --date-size=50				\
    --date-pos=$datepos				\
    --date-align=1				\
    \
    --verif-text=""				\
    --wrong-text=""				\
    \
    --indicator					\
    --color=21262e

dunstctl set-paused false

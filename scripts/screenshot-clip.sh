#!/bin/sh

filename=$(date '+%Y-%m-%d-%H-%M-%S')
import -window root /tmp/$(echo $filename).png
convert /tmp/$(echo $filename).png -bordercolor '#88c0d0' -border 15x15 /tmp/screenshot-notification.png
xclip -selection clipboard -t image/png /tmp/$(echo $filename).png
notify-send -i /tmp/screenshot-notification.png "ImageMagick" "Screenshot copied to clipboard"
rm -f /tmp/screenshot-notification.png /tmp/$(echo $filename).png

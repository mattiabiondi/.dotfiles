#!/bin/sh

filename=$(date '+%Y-%m-%d-%H-%M-%S')
import -window root ~/pictures/screenshots/$(echo $filename).png
convert ~/pictures/screenshots/$(echo $filename).png -bordercolor '#88c0d0' -border 15x15 /tmp/screenshot-notification.png
notify-send -i /tmp/screenshot-notification.png "ImageMagick" "Screenshot of desktop saved"
rm -f /tmp/screenshot-notification.png

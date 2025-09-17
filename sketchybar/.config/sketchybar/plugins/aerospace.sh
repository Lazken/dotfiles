#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
    sketchybar --set $NAME drawing=on
else
    sketchybar --set $NAME background.drawing=off
    if [[ ! $(aerospace list-windows --workspace $1) ]]; then
      sketchybar --set $NAME drawing=off
    fi
fi


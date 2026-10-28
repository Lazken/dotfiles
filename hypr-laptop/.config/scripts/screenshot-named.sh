#!/usr/bin/env bash

SCREENSHOT_DIR="$HOME/Pictures"
mkdir -p "$SCREENSHOT_DIR"

# Take screenshot into a temporary file
TEMP_FILE=$(mktemp --suffix=.png)
echo "taking screenshot $(date)" >> /tmp/screenshot-debug.txt

hyprshot -m region -o "$(dirname "$TEMP_FILE")" -f "$(basename "$TEMP_FILE")"

# Ask for filename using rofi
sleep 0.1
echo "$(date) launching prompt" >> /tmp/screenshot-debug.txt
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
FILENAME=$(/usr/bin/rofi -dmenu -p "Screenshot filename")
RC=$?
echo "$(date) prompt exit=$RC FILENAME='$FILENAME'" >> /tmp/screenshot-debug.txt

# Cancel if no filename entered
if [[ -z "$FILENAME" ]]; then
    rm -f "$TEMP_FILE"
    exit 0
fi

# Remove .png if user included it
FILENAME="${FILENAME%.png}"

# Prevent paths and unsafe filename characters
FILENAME=$(printf '%s' "$FILENAME" | sed 's#[/\\]#-#g; s/[^a-zA-Z0-9._ -]/_/g')

# Avoid overwriting an existing screenshot
DEST="$SCREENSHOT_DIR/$FILENAME.png"

if [[ -e "$DEST" ]]; then
    notify-send "Screenshot" "File already exists: $FILENAME.png"
    rm -f "$TEMP_FILE"
    exit 1
fi

mv "$TEMP_FILE" "$DEST"

notify-send "Screenshot saved" "$FILENAME.png"

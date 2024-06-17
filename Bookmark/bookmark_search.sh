#!/bin/bash

BOOKMARK_FILE=~/.config/Bookmark/bookmarks.txt

CHOSEN=$(cat "$BOOKMARK_FILE" | rofi -dmenu -i -theme dmenu)

if [ -n "$CHOSEN" ]; then
    CLEAN_CHOSEN=$(echo "$CHOSEN" | cut -d '#' -f 1)
    echo -n "$CLEAN_CHOSEN" | xclip -selection clipboard
    echo "You chose: $CLEAN_CHOSEN (copied to clipboard)"
else
    echo "No choice made or rofi command failed"
fi
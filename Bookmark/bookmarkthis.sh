#!/bin/bash

bookmark="$(xclip -o)"
file="$HOME/.config/Bookmark/bookmarks.txt"

echo "$bookmark" >> "$file"
notify-send "Bookmark added"


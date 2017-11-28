#!/usr/bin/env bash

image="$HOME/screenshots/$(date +%F-%T).png"
maim -s --format png $image

choice=$(echo -e "Imgur\nClipboard" | rofi -dmenu -i -p 'Output: ' -hide-scrollbar -width -10 -lines 2)
if [[ $choice == "Imgur" ]]; then
    $HOME/.config/i3/scripts/imgur.sh $image
fi
if [[ $choice == "Clipboard" ]]; then
    cat $image | xclip -selection clipboard -t image/png -i 
fi
exit 0

#/bin/bash
DELAY=${1:-0}
FILENAME=~/`uuidgen`.png
sleep $DELAY
scrot -s "$FILENAME"
xclip -selection clipboard -t image/png -i "$FILENAME"
rm "$FILENAME"

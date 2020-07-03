#!/bin/bash
# Lock screen script
# Requires: scrot, imagemagick and i3lock

# Takes a screenshot
scrot /tmp/screen.png
# Scales it (pixel effect)
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
# Seets it as i3lock background
i3lock -i /tmp/screen.png
# Removes temporary image
rm /tmp/screen.png


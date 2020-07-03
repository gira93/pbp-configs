#!/bin/bash

# Set keyboard repetition
xset r rate 300 40 &

# Set better trackpad options
synclient MinSpeed=0.25 FingerLow=30 PalmDetect=1 VertScrollDelta=64 HorizScrollDelta=64 TapButton1=1 TapButton2=2 &

# Set keyboard mapping
setxkbmap -layout us -variant intl &

# Run hotkeys daemon
sxhkd &

# Compositor
picom -f &

# Background
feh --bg-fill ~/Immagini/back.jpg &

# Top bar
./bar.sh &


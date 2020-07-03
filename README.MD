# Pinebook pro config files
Theese are my configs for a mostly functional PBP linux install, it should be distro-agnostic but it's been tested on Manjaro Arm.

Configuration files are for a basic DWM install (with autostart patch)

## Requirements
- dwm (with autostart patch)
- feh
- scrot
- mpv
- light
- sxhkdrc
- pamixer
- synclient
- picom
- imagemagick
- i3lock

## Components
> Note: every folder starting with "dot" is meant to be placed in $HOME as a real dot-folder; eg: dotconfig --> .config

### dotconfig
- Mpv config for Youtube in 720p
- Sxhkd for brightness and audio keyboard controls

### dotdwm
- autostart.sh script required for dwm autostart patch
- bar.sh for top bar
- lock.sh gives you a nice lock screen

### dwm_example
Contains a dwm *config* file for **pywal** colors and additional shortcuts:
- Meta + Shift + W --> Firefox
- Meta + Shift + L --> calls lock.sh

## Notes
Every script is commented so it shouldn't be too difficult to understand what it does.

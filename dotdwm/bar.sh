#!/bin/bash
# Script to display system infos on top bar in DWM (X root name)
# Remember that this is an infinite loop script, you need to kill it manually after closing DWM

# Starts an infinite loop
while true; do
  # Free memory
  memory=$(free -m | grep Mem | awk '{print "MEM: "$3"mb/"$2"mb"}')
  # Cpu usage
  cpu=$(top -bn1 | grep %Cpu | awk '{print "CPU: "$2+$4"%"}')
  # Disk usage
  disk=$(df -h /dev/mmcblk2p2 | tail -n 1 | awk '{print "DISK: "$3"/"$2}')

  # Battery Status
  battery_percentage=$(cat /sys/class/power_supply/cw2015-battery/capacity | awk '{print "BAT: "$1"%"}')
  battery_status=$(cat /sys/class/power_supply/cw2015-battery/status)
  battery_remain=$(cat /sys/class/power_supply/cw2015-battery/time_to_empty_now | awk '{printf("%.1f\n", $1/60);}')

  # If battery is not in charge it shows remaining usage time, else just a CHGR text
  if [ "$battery_status" == "Discharging"  ]; then
    battery="${battery_percentage} ${battery_remain}h"
  else
    battery="${battery_percentage} CHGR"
  fi
  
  # Current audio volume
  audio=$(pamixer --get-volume-human | awk '{print "SND: "$1}')

  # Date in locale format
  date=$(date +%c)

  # Set everything as root name
  xsetroot -name " $memory | $cpu | $disk | $battery | $audio  | $date "

  # Refresh every 5 seconds
  sleep 5s
done


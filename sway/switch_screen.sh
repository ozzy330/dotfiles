#!/bin/bash
lid_state=$(cat /proc/acpi/button/lid/LID/state | awk '{print $2}')
if [ "$lid_state" = "closed" ]; then
    swaymsg output eDP-1 disable
    swaymsg output HDMI-A-1 enable position 0,0
else
    swaymsg output eDP-1 enable
fi

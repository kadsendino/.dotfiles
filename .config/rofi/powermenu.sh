#!/bin/bash

# Power options
shutdown=" Shutdown"
reboot=" Reboot"
lock=" Lock"
logout="󰍃 Logout"
cancel=" Cancel"

# Show menu
chosen=$(printf "%s\n" "$lock" "$logout" "$reboot" "$shutdown" "$cancel" | rofi -dmenu -i -p "Power Menu" -theme-str '* { font: "Sauce Code Pro Nerd Font 18"; }')
# Execute command based on choice
case "$chosen" in
"$shutdown") sudo shutdown -h now ;;
"$reboot") sudo reboot ;;
"$lock") i3lock ;;
"$logout") bspc quit ;;
*) exit 0 ;;
esac

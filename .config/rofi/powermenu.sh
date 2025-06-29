#!/bin/bash

# Power options
shutdown="⏻ Shutdown"
reboot=" Reboot"
lock=" Lock"
logout="󰍃 Logout"
suspend="⏾ Suspend"
cancel=" Cancel"

# Show menu
chosen=$(printf "%s\n" "$lock" "$suspend" "$logout" "$reboot" "$shutdown" "$cancel" | rofi -dmenu -i -p "Power Menu" -theme-str '* { font: "JetBrainsMono Nerd Font 12"; }')

# Execute command based on choice
case "$chosen" in
"$shutdown") doas poweroff ;;
"$reboot") doas reboot ;;
"$lock") i3lock || betterlockscreen -l || loginctl lock-session ;;
"$logout") bspc quit ;;
"$suspend") doas zzz ;; # 'zzz' is from 'zzz-utils' or 's2ram'
*) exit 0 ;;
esac

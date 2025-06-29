#!/bin/bash

interface="wlan0"

# Versuche ESSID mit iwconfig auszulesen
essid=$(iwconfig $interface 2>/dev/null | grep -oP 'ESSID:"\K[^"]+')

if [ -n "$essid" ] && [ "$essid" != "off/any" ]; then
  echo "󰖩 $essid"
else
  echo " Disconnected"
fi

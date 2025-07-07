#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [[ "$status" == "Charging" ]]; then
  echo " $capacity%"
elif [[ "$status" == "Discharging" && $capacity -le 89 ]]; then
  echo " $capacity%"
else
  echo " $capacity%"
fi

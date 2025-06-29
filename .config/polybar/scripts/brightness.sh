#!/bin/bash

# Path to brightness values
BRIGHTNESS_PATH="/sys/class/backlight"

# Get the backlight directory (usually one folder inside /sys/class/backlight)
backlight_dir=$(ls $BRIGHTNESS_PATH | head -n1)

# Read current and max brightness
current=$(cat $BRIGHTNESS_PATH/$backlight_dir/brightness)
max=$(cat $BRIGHTNESS_PATH/$backlight_dir/max_brightness)

# Calculate percentage
percent=$((100 * current / max))

echo "󰃞 $percent%"

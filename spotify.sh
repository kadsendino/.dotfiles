#!/bin/bash

last_art=""

draw() {
  local art_url="$1"

  # Download image to a temporary file first
  tmpfile=$(mktemp /tmp/artwork.XXXXXX.png)
  curl -s "$art_url" -o "$tmpfile"

  # Get song title and artist
  local title=$(playerctl metadata title 2>/dev/null)
  local artist=$(playerctl metadata artist 2>/dev/null)

  # Combine title and artist
  local combined_text="$title - $artist"

  # Clear only after image is downloaded
  clear

  # Display image with kitty icat
  kitty +kitten icat --stdin=yes <"$tmpfile"

  # Print title and artist on one line, centered
  local cols=$(tput cols)
  local text_length=$((${#title} + ${#artist} + 5)) # 3 for " - ", 2 for color codes
  local padding=$(((cols - text_length) / 2))

  printf "%${padding}s%s\n" "" "$(echo -e "\e[1;33m$title\e[0m - \e[0;36m$artist\e[0m")"
  echo -ne '\e[?25l'

  # Remove temporary file
  rm "$tmpfile"
}

while true; do
  current_art=$(playerctl metadata mpris:artUrl 2>/dev/null)

  # Only update if the artwork changed
  if [[ "$current_art" != "$last_art" && -n "$current_art" ]]; then
    draw "$current_art"
    last_art="$current_art"
  fi

  sleep 1
done

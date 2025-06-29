#!/usr/bin/env bash

# Kill bestehende Instanzen
killall -q polybar

# Warte, bis alle Instanzen beendet sind
while pgrep -x polybar >/dev/null; do sleep 1; done

# Starte polybar
polybar main &

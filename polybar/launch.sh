#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
polybar statusbar --config=~/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
shadow-exclude = [ "name = 'Polybar tray window'"];

echo "Polybar launched."

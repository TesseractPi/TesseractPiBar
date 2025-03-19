#!/bin/bash

# Get the current keymap using hyprctl
keymap=$(hyprctl devices -j | jq -r '.keyboards[0].keymap')

# Output the keymap in JSON format for Waybar
echo "{\"text\": \"$keymap\", \"tooltip\": \"Current Keymap: $keymap\"}"

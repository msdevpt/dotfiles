#!/bin/sh

# WALLPAPER_DIRECTORY=~/Pictures/Wallpapers/
WALLPAPER_DIRECTORY=~/.config/backgrounds/

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-2, $WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused

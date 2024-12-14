#!/bin/bash

# Set the path to the wallpapers directory
wallpapersDir="$HOME/.config/hypr/backgrounds"

# Get a list of all image files in the wallpapers directory
wallpapers=("$wallpapersDir"/*)

sleep 5s

# Start an infinite loop
while true; do
    # Check if the wallpapers array is empty
    lastIndex=$wallpaperIndex
    while [[ $wallpaperIndex -eq $lastIndex ]]
    do
        wallpaperIndex=$(( $RANDOM % ${#wallpapers[*]} ))
    done
    # if [ ${#wallpapers[@]} -eq 0 ]; then
    #     # If the array is empty, refill it with the image files
    #     wallpapers=("$wallpapersDir"/*)
    # fi

    # Select a random wallpaper from the array
    selectedWallpaper=${wallpapers[$wallpaperIndex]}

    # Update the wallpaper using the swww img command
    swww img --resize crop --filter Nearest --transition-type wave --transition-fps 120 "$selectedWallpaper"

    # Delay for 2 hours before selecting the next wallpaper
    sleep 1800

done

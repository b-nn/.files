#!/bin/bash

# Get a random image file from the background image folder.
IMAGE_FILE=$(find $HOME/.config/hypr/backgrounds/ -type f | shuf -n 1)

# Get the path to the sddm backgrounds folder.
SDDM_BACKGROUNDS_FOLDER="$HOME/.config/hypr/backgrounds/"

# Create a symbolic link to the random image file in the sddm backgrounds folder (overwrite with the force flag).
cp "$IMAGE_FILE" "$SDDM_BACKGROUNDS_FOLDER/randomlySelectedWallpaper.png"

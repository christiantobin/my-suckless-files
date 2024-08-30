#!/bin/bash

# Directory containing images
IMG_DIR=~/Downloads

# Select an image file using dmenu
SELECTED_IMG=$(ls $IMG_DIR/*.jpg $IMG_DIR/*.png | dmenu -i -l 10 -p "Select wallpaper:")

# Check if a file was selected
if [ -n "$SELECTED_IMG" ]; then
	# Set the selected image as the wallpaper using feh
	feh --xinerama-index 0 --bg-fill "$SELECTED_IMG"
else
	echo "No wallpaper selected."
fi

#!/bin/bash

# Installer script: Copies all folders from the current directory (dots repo) to ~/.config
# Run this from the root of your dots project directory
# Warning: This will overwrite existing folders in ~/.config with the same name

set -e  # Exit on error

TARGET_DIR="$HOME/.config"

if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
fi

for folder in */; do
    if [ -d "$folder" ]; then
        folder_name="${folder%/}"  # Remove trailing slash
        echo "Installing $folder_name to $TARGET_DIR/$folder_name"
        cp -r "$folder" "$TARGET_DIR/"
    fi
done

echo "Installation complete."

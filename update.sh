#!/bin/bash

# Updater script: Copies back folders from ~/.config to the current directory (dots repo)
# Only updates folders that exist in the dots repo
# Run this from the root of your dots project directory
# Warning: This will overwrite files in the repo with versions from ~/.config

set -e  # Exit on error

SOURCE_DIR="$HOME/.config"

for folder in */; do
    if [ -d "$folder" ]; then
        folder_name="${folder%/}"  # Remove trailing slash
        if [ -d "$SOURCE_DIR/$folder_name" ]; then
            echo "Updating $folder_name from $SOURCE_DIR/$folder_name"
            cp -r "$SOURCE_DIR/$folder_name" .
        else
            echo "Skipping $folder_name: Not found in $SOURCE_DIR"
        fi
    fi
done

echo "Update complete."

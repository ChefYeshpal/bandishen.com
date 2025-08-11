#!/bin/bash

# Set the parent folder path (replace with your actual folder path)
PARENT_FOLDER="$HOME/2.Area/Code/bandishen.com/"

# Loop through each subfolder inside the parent folder
for SUBFOLDER in "$PARENT_FOLDER"/*/ ; do
  # Remove trailing slash and get subfolder name only
  SUBFOLDER_NAME=$(basename "$SUBFOLDER")
  
  # Define the markdown file path
  FILE_PATH="$SUBFOLDER/about_${SUBFOLDER_NAME}.md"
  
  # Create the markdown file with optional content
  echo "# About $SUBFOLDER_NAME" > "$FILE_PATH"
  
  echo "Created file: $FILE_PATH"
done


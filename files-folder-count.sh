#!/bin/bash

<< COMMAND
    TASK:
    Write a Bash script that takes a directory path as a command-line argument and counts the number of files in that directory.
COMMAND



read -p "Enter directory path: " dir_path

# Check if directory exists
if [[ ! -d "$dir_path" ]]; then
    echo "Error: Directory '$dir_path' does not exist!" >&2
    exit 1
fi

# Count files and folders
files_count=$(find "$dir_path" -maxdepth 1 -type f | wc -l)
folders_count=$(find "$dir_path" -maxdepth 1 -type d | wc -l)

# Subtract 1 to exclude the directory itself
folders_count=$((folders_count - 1))

echo "Directory: $dir_path"
echo "Number of files: $files_count"
echo "Number of folders: $folders_count"
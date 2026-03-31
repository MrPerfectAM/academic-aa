#!/bin/bash

# Author: Aastik (24BCG10111)

# Disk and Permission Auditor

# Define Directories to Audit
DIRECTORIES=("/etc" "/var/log" "/usr/bin/git" "/home/$USER/.git")

# Loop Through Directories and Report Size, Ownership, and Permissions
printf "%10s %10s %10s %s
" "Size" "Permissions" "Owner" "Directory"
for dir in "${DIRECTORIES[@]}"; do
  if [ -d "$dir" ]; then
    SIZE=$(du -h $dir | cut -f 1)
    PERMISSIONS=$(stat -c "%a" $dir)
    OWNER=$(stat -c "%U" $dir)
    printf "%10s %10s %10s %s
" "$SIZE" "$PERMISSIONS" "$OWNER" "$dir"
  fi
done
#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Mayank Joshi

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do

if [ -d "$DIR" ]; then

# Permissions + owner + group
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
# Directory size
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

echo "$DIR => Permissions: $PERMS | Size: $SIZE"
else
echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking For VLC Config Directory..." 
echo "--------------------------------"

VLC_CONFIG="$HOME/.config/vlc"

if [ -d "$VLC_CONFIG" ]; then
    ls -ld $VLC_CONFIG
else
    echo "VLC config directory not found."
fi

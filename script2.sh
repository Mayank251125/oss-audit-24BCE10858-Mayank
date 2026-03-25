#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Mayank Joshi

PACKAGE="vlc"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check if package is installed
if dpkg -l | grep -w $PACKAGE > /dev/null; then
    echo "$PACKAGE is installed."

    # Show package details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for philosophy
case $PACKAGE in
    vlc)
        echo "VLC: A free media player built by students to make media accessible to everyone."
        ;;
    firefox)
        echo "Firefox: A browser fighting for an open and private web."
        ;;
    git)
        echo "Git: A version control system built to empower developers."
        ;;
    apache2)
        echo "Apache: The web server that helped build the modern internet."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

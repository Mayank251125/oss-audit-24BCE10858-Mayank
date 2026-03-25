#!/bin/bash

# Script 1: System Identity Report
# Author: Mayank | Course: Open Source Software 

# --- Variables ---
STUDENT_NAME="Mayank Joshi" 
SOFTWARE_CHOICE="VLC Media Player"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# Get distribution name
DISTRO=$(lsb_release -d | cut -f2)

# --- Display ---
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"

echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE_TIME"

echo ""
echo "License: This system is based on open-source software under the GNU General Public License (GPL)."

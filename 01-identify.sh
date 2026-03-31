#!/bin/bash

# Author: Aastik (24BCG10111)

# System Identity Report

# Get Linux Distribution
DISTRO=$(lsb_release -ds)

# Get Kernel Version
KERNEL=$(uname -r)

# Get Current User
USER=$(whoami)

# Get Home Directory
HOME_DIR=$(echo $HOME)

# Get System Uptime
UPTIME=$(uptime -s | cut -d ' ' -f 1-4)

# Get Current Date/Time
DATE_TIME=$(date +"%a %b %d %Y %H:%M:%S %Z")

# Print System Identity Report
printf "================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
"
printf "Linux Distribution: %s
" "$DISTRO"
printf "Kernel Version:     %s
" "$KERNEL"
printf "Current User:       %s
" "$USER"
printf "Home Directory:     %s
" "$HOME_DIR"
printf "System Uptime:      %s
" "$UPTIME"
printf "Current Date/Time:  %s
" "$DATE_TIME"
printf "--------------------------------------------------------------------------------
"
printf "Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
"
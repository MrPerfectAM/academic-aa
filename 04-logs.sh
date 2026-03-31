#!/bin/bash

# Author: Aastik (24BCG10111)

# Log File Analyzer

# Check if Target Log File and Keyword are Provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <log_file> <keyword>"
  exit 1
fi

# Suggest Realistic Log Path for Git
# /var/log/syslog or /var/log/git.log

# Count Occurrences of Keyword and Print Last 5 Matches
COUNT=$(grep -c "$2" "$1")
echo "Count of '$2' in $1: $COUNT"
tail -n 5 "$1" | grep "$2"
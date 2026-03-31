#!/bin/bash

# Author: Aastik (24BCG10111)

# Open Source Manifesto Generator

# Ask Interactive Questions
read -p "What is your name? " NAME
read -p "What is your favorite open-source software? " SOFTWARE
read -p "Why do you support open-source software? " REASON

# Construct Manifesto Paragraph
MANIFESTO="Dear $NAME,\n\n"
MANIFESTO+="Your support for $SOFTWARE embodies the spirit of open-source collaboration.\n"
MANIFESTO+="$REASON\n\n"
MANIFESTO+="May open-source software continue to empower and unite the global community!"

# Append to .txt File Named After User
FILE="$NAME.txt"
echo "$MANIFESTO" > "$FILE"
echo "Manifesto saved to $FILE"
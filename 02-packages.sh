#!/bin/bash

# Author: Aastik (24BCG10111)

# FOSS Package Inspector

# Detect Package Manager
if [ -x "$(command -v apt)" ]; then
  PACKAGE_MANAGER="apt"
elif [ -x "$(command -v yum)" ]; then
  PACKAGE_MANAGER="yum"
else
  echo "Unsupported package manager"
  exit 1
fi

# Define Git Package Name Based on Package Manager
if [ "$PACKAGE_MANAGER" = "apt" ]; then
  GIT_PACKAGE="git"
elif [ "$PACKAGE_MANAGER" = "yum" ]; then
  GIT_PACKAGE="git-core"
fi

# Check Git Installation Status and Version
if command -v $GIT_PACKAGE &> /dev/null; then
  GIT_VERSION=$(git --version | cut -d ' ' -f 3)
  echo "Status: $GIT_PACKAGE is INSTALLED on this $(lsb_release -si) system."
  echo "Version: $GIT_VERSION"
else
  echo "Status: $GIT_PACKAGE is NOT INSTALLED on this $(lsb_release -si) system."
fi

# FOSS Philosophy Notes
case $GIT_PACKAGE in
  git)
    echo "--------------------------------------------------------------------------------"
    echo "FOSS Philosophy Notes:"
    echo " - Git: A free and open source distributed version control system."
    echo " - Linux: A free and open source operating system."
    echo " - Bash: A free and open source Unix shell and command-line interpreter."
    echo " - Open Source: A development methodology that emphasizes the availability of source code."
    echo "================================================================================"
    ;;
  *)
    echo "Unsupported package"
    exit 1
    ;;
esac
#!/bin/bash

if [ ! -f /etc/os-release ]; then
  echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
  echo "Installation stopped."
  exit 1
fi

. /etc/os-release

<<<<<<< HEAD
# Check if running on Ubuntu 24.04 or higher
if [ "$ID" != "ubuntu" ] || [ $(echo "$VERSION_ID >= 24.04" | bc) != 1 ]; then
  echo "$(tput setaf 1)Error: OS requirement not met"
  echo "You are currently running: $ID $VERSION_ID"
  echo "OS required: Ubuntu 24.04 or higher"
  echo "Installation stopped."
  exit 1
fi

# Check if running on x86
ARCH=$(uname -m)
if [ "$ARCH" != "x86_64" ] && [ "$ARCH" != "i686" ]; then
  echo "$(tput setaf 1)Error: Unsupported architecture detected"
  echo "Current architecture: $ARCH"
  echo "This installation is only supported on x86 architectures (x86_64 or i686)."
  echo "Installation stopped."
  exit 1
=======
# Check if running on Manjaro Linux
if [ "$ID" != "manjaro" ]; then
    echo "$(tput setaf 1)Error: OS requirement not met"
    echo "You are currently running: $ID"
    echo "OS required: Manjaro GNOME 24 or higher"
    echo "Installation stopped."
    exit 1
>>>>>>> a9356a4 (Initial rough translation of every Ubuntu specific command into Arch/Manjaro equivalent. Not tested yet. This commit should be enough to show why we prefer the ease of use of Arch's Pacman/Yay instead of Apt)
fi

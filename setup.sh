#!/bin/bash

# -----------------------------------------------------------------------------
#   Author: Jothi Prasath
#   Github: https://github.com/jothi-prasath/termux-dev-setup
# -----------------------------------------------------------------------------

# Updating and upgrading packages
pkg update
pkg upgrade -y

# Cleaning up packages
pkg autoclean
pkg clean

# Packages list
packages_list=(
  curl wget zip grep bc htop nano openssh rsync net-tools \
  python python2 clang nodejs rust golang ruby \
  sqlite perl openjdk-17 termux-exec termux-api \
  )

# Converting array into a space-separated string
packages="${packages_list[*]}"

# Installing the packages
pkg install $packages -y

# Setting up ssh deamon
if [ -f ~/.bashrc ]; then
    # Search for the sshd entry in .bashrc
    if grep -q "sshd" ~/.bashrc; then
        echo "sshd entry found in .bashrc"
    else
        echo "sshd" >> .bashrc
    fi
else
    echo "sshd" >> .bashrc
fi
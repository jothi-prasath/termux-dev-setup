#!/bin/bash

# -----------------------------------------------------------------------------
#   Author: Jothi Prasath
#   GitHub: https://github.com/jothi-prasath/termux-dev-setup
# -----------------------------------------------------------------------------

# Update and upgrade packages
pkg update -y
pkg upgrade -y

# Clean up packages
pkg autoclean
pkg clean

# Packages list add or remove your needed packages
packages_list=(
  curl wget zip grep bc htop nano openssh rsync net-tools
  python python2 clang nodejs rust golang ruby
  sqlite perl openjdk-17 termux-exec termux-api
)

# Install the packages
pkg install "${packages_list[@]}" -y

# Setting up sshd daemon
bashrc_path="$HOME/.bashrc"
sshd_entry="sshd"

if ! grep -q "$sshd_entry" "$bashrc_path"; then
    echo "$sshd_entry" >> "$bashrc_path"
    echo "Added sshd entry to .bashrc"
else
    echo "sshd entry already exists in .bashrc"
fi

# Removing termux welcome message 
rm $PREFIX/etc/motd

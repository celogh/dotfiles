#!/usr/bin/env bash

if [ -f /etc/debian_version ]; then
  sudo apt update
  sudo apt install -y ansible
elif [ -f /etc/arch-release ]; then
  sudo pacman -S ansible
fi
echo "Ansible installation complete"

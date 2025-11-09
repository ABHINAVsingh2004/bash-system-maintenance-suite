#!/bin/bash
# System Update and Cleanup Script

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning unnecessary packages..."
sudo apt autoremove -y && sudo apt autoclean

if [ $? -eq 0 ]; then
    echo "System update and cleanup successful!"
else
    echo "Update or cleanup failed!" >&2
fi

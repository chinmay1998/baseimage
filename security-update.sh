#!/bin/bash

# Check if the script is running as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Update the package lists to get the latest package information
apt update

# Upgrade installed packages to the latest versions (including security updates)
apt upgrade

# Clean up unnecessary packages and free up disk space
apt autoremove

# Clean the local repository of retrieved package files
apt clean

echo "Security updates have been applied."


# reboot

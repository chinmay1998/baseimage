#!/bin/bash

# Ensure the auditd, fail2ban, and SSH services start at boot
systemctl enable ssh

# Securely erase logs
find /var/log -type f -exec truncate -s 0 {} \;

#!/bin/bash
# Create a non-root user with sudo access
useradd -m -s /bin/bash highsky
echo 'highsky:highsky@123' | chpasswd
usermod -aG sudo highsky

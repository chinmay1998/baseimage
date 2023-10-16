#!/bin/bash

# Install security-related packages
apt -y install fail2ban ufw auditd lynis




# Configure the Uncomplicated Firewall (UFW)
ufw allow ssh
ufw enable



# Configure and enable fail2ban
systemctl enable fail2ban
systemctl start fail2ban


# Configure and enable auditing
systemctl enable auditd
systemctl start auditd



# Run vulnerability scans with Lynis
lynis audit system


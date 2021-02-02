#!/bin/bash

# Create a log file
LOGFILE="/root/stackscript.log"

# Update the server
apt update >> $LOGFILE 2>&1
apt upgrade -y >> $LOGFILE 2>&1
apt dist-upgrade -y >> $LOGFILE 2>&1
apt autoremove -y >> $LOGFILE 2>&1
apt autoclean -y >> $LOGFILE 2>&1

# Install desktop environment
apt install cinnamon -y >> $LOGFILE 2>&1

# Install a browser
apt install firefox -y >> $LOGFILE 2>&1

# Install xrdp
apt install xrdp -y >> $LOGFILE 2>&1
adduser xrdp ssl-cert >> $LOGFILE 2>&1
systemctl restart xrdp >> $LOGFILE 2>&1

# Open firewall -- the bad way
ufw allow 3389 >> $LOGFILE 2>&1

# Create a user
useradd david >> $LOGFILE 2>&1
mkdir/home/david >> $LOGFILE 2>&1
chown david /home/david >> $LOGFILE 2>&1
# Additional software -- later
# snap install powershell --classic

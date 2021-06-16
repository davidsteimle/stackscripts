#!/bin/bash

# Create a log file
LOGFILE="/root/stackscript.log"

# Update the server
apt update >> $LOGFILE 2>&1
apt upgrade -y >> $LOGFILE 2>&1
apt dist-upgrade -y >> $LOGFILE 2>&1
apt autoremove -y >> $LOGFILE 2>&1
apt autoclean -y >> $LOGFILE 2>&1

# Install MicroK8s
# See https://microk8s.io/
snap install microk8s --classic -y >> $LOGFILE 2>&1

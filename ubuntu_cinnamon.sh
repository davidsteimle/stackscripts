#!/bin/bash

# Update the server
apt update
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt autoclean -y

# Install desktop environment
apt install cinnamon -y

# Install a browser
apt install firefox -y

# Install xrdp
apt install xrdp -y
adduser xrdp ssl-cert
systemctl restart xrdp

# Open firewall -- the bad way
ufw allow 3389

# Create a user
useradd david 
mkdir/home/david 
chown david /home/david 
# Additional software -- later
# snap install powershell --classic

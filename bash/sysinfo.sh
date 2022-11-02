#!/bin/bash
# This is a script for displaying system information.
Host_Name=$(hostname)

# Fully-Qualified Domain Name.
FQDN=$(hostname --fqdn)

#Host information and operating system information
Host_Information=$(hostnamectl)

#Displaying IP address
IP_address=$(hostname -I)

# Showing Free space avaliable
Free_Space=$(df -h /dev/sda3 | tail -1 | awk '{print $4}')

cat <<EOF
 Report for $Host_Name
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
 FQDN: $FQDN
 Host Information and Operating System: $Host_Information
 IP Address: $IP_address
 Root Filesystem Free Status: $Free_Space
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF

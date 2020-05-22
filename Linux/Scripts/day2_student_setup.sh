#!/usr/bin/env bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

# Check for or create sysadmin research directory
[ ! -d /home/sysadmin/research ] && mkdir /home/sysadmin/research

# Copy files from instructor archive user to sysadmin research directory
cp -r /home/instructor/Documents/research/ /home/sysadmin/research

# Correct ownership and permissions on the sysadmin research directory
chown -R sysadmin:sysadmin /home/sysadmin/research/
chmod -R 0644 /home/sysadmin/research/

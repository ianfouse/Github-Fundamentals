#!/usr/bin/env bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

# Start needed processes
systemctl start vsftpd xinetd dovecot apache2

# Set SUID bit for the `find` command
chmod u+s $(which find)

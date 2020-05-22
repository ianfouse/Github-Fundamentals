#!/usr/bin/env bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

#Remove Student files
rm /user.hashes
rm /tmp/str.sh

#Add teacher demo files
cp ~/Documents/day_one_resources/rev_shell.sh /tmp
cp ~/Documents/day_one_resources/listen.sh /tmp
cp ~/Documents/day_one_resources/a9xk.sh /tmp

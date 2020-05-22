#!/usr/bin/env bash

# Check for root access
if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

# Check for or create instructor research directory
[ ! -d /home/instructor/research ] && mkdir /home/instructor/research

# Copy needed files from instructor archive
cp -r /home/instructor/Documents/research/ /home/instructor/research
cp -r /home/instructor/Documents/research/ /home/sysadmin/research

# Correct permissions and ownership on instructor research directory
chown -R instructor:instructor /home/instructor/research/
chmod -R 0644 /home/instructor/research/

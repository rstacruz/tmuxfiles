#!/usr/bin/env bash
if [ -f /etc/arch-release ]; then
    # pass
else
    date=$(date +"%I:%M %p")
    echo $date
fi

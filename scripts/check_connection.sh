#!/bin/bash

# Create the log directory if it doesn't exist

while true; do
    if ! ping -c 1 8.8.8.8 > /dev/null 2>&1; then
        echo "ERROR $(date '+%Y-%m-%d %H:%M:%S') ping to 8.8.8.8 failed!" >> ../logs/failedconnection.log
    fi
    sleep 10
done

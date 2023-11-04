#!/bin/bash

# Define the file to monitor and the log file
file_to_monitor="/path/to/your/file.txt"
log_file="file_change_log.txt"

# Ensure the log file exists
touch "$log_file"

# Start monitoring the file for changes
inotifywait -m -e modify,attrib,close_write,move,delete --format "%w%f" "$file_to_monitor" |
while read -r file_changed
do
    # Get the IP address of the user who changed the file
    ip_address=$(who | awk '{print $5}' | sort -u | head -n 1)

    # Log the change and IP address
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "File changed: $file_changed by $ip_address at $timestamp" >> "$log_file"
done

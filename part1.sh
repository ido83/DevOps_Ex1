#!/bin/bash
LOG_DIR="/var/log/webapp"
LOG_FILE="$LOG_DIR/access.log"

# Create the log directory if it doesn't exist
if [ ! -d "$LOG_DIR" ]; then
    sudo mkdir -p $LOG_DIR
    sudo chown webapp:webapp $LOG_DIR
    sudo chmod 755 $LOG_DIR
fi

# Create the access log file and set permissions
sudo touch $LOG_FILE
sudo chown $USER:$USER $LOG_FILE
sudo chmod 644 $LOG_FILE

# Display timestamps from the log file using awk
awk '{print $1 " " $2}' $LOG_FILE


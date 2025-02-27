#!/bin/bash

# 🔹 Log Archiver Script 🔹
# Author: Zoey
# Purpose: Archive logs by compressing them into a tar.gz file and storing them in a new directory.

# Ensure a log directory is provided
if [ -z "$1" ]; then
    echo "🔹 Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="$HOME/log_archives"  # Change this if you want a different storage location
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"
LOG_FILE="$ARCHIVE_DIR/archive_log.txt"

# Create the archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Compress logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_FILE" -C "$LOG_DIR" .

# Check if compression was successful
if [ $? -eq 0 ]; then
    echo "[$(date)] 🔹 Archived logs from $LOG_DIR to $ARCHIVE_DIR/$ARCHIVE_FILE" >> "$LOG_FILE"
    echo "🔹 Logs archived successfully: $ARCHIVE_FILE"
else
    echo "[$(date)] 🔹 Failed to archive logs from $LOG_DIR" >> "$LOG_FILE"
    echo "❌ Error: Failed to archive logs"
    exit 1
fi

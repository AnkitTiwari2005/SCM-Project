#!/bin/bash

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backup"
LOG_FILE="$HOME/backup.log"

mkdir -p "$BACKUP_DIR"

echo "Backup process started at $(date)" >> "$LOG_FILE"

if cp -r "$SOURCE_DIR/"* "$BACKUP_DIR" 2>> "$LOG_FILE"; then
    echo "Backup successful: $(date)" >> "$LOG_FILE"
else
    echo "Backup failed: $(date)" >> "$LOG_FILE"
    echo "Critical error found in logs!" >> email_log.txt  # Replaces 'mail'
fi

echo "Backup process completed at $(date)" >> "$LOG_FILE"

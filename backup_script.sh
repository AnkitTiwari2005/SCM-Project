#!/bin/bash
# backup_script.sh - Automates file backup
# Version: 1.0

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backup"
LOG_FILE="$HOME/backup.log"

mkdir -p "$BACKUP_DIR"

cp -r "$SOURCE_DIR"/* "$BACKUP_DIR" 2>> "$LOG_FILE"

if [ $? -eq 0 ]; then
    echo "Backup successful: $(date)" >> "$LOG_FILE"
else
    echo "Backup failed: $(date)" >> "$LOG_FILE"
fi

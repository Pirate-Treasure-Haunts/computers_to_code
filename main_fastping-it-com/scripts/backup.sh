#!/bin/bash

# --- Config ---
BACKUP_DIR="./backups"
DB_FILE="./data/fastping.db"
DATE_TAG=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/fastping_backup_$DATE_TAG.db"

# Ensure backup folder exists
mkdir -p "$BACKUP_DIR"

# Check DB exists
if [ ! -f "$DB_FILE" ]; then
    echo "[ERROR] Database file not found at $DB_FILE"
    exit 1
fi

# Run backup
cp "$DB_FILE" "$BACKUP_FILE"

# Confirm success
if [ -f "$BACKUP_FILE" ]; then
    echo "[INFO] Backup successful: $BACKUP_FILE"
else
    echo "[ERROR] Backup failed!"
    exit 1
fi

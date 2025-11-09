#!/bin/bash
# Automated Backup Script

BACKUP_SRC="/home/$USER/Documents"
BACKUP_DEST="/home/$USER/backup_$(date +%F_%H-%M-%S).tar.gz"

echo "Starting backup of $BACKUP_SRC..."
tar -czf "$BACKUP_DEST" "$BACKUP_SRC" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
    echo "Backup stored at: $BACKUP_DEST"
else
    echo "Backup failed!" >&2
fi

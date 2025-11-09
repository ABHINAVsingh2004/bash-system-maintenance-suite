#!/bin/bash
# Log Monitoring Script

LOG_FILE="/var/log/syslog"
KEYWORD="error"
ALERT_FILE="/home/$USER/log_alerts.txt"

echo "Monitoring $LOG_FILE for keyword: $KEYWORD..."

grep -i "$KEYWORD" "$LOG_FILE" > "$ALERT_FILE"

if [ -s "$ALERT_FILE" ]; then
    echo "⚠️ Alerts found! Check $ALERT_FILE for details."
else
    echo "No alerts found."
fi

#/bin/bash
# script to archive log files older than 30 days
LOG_DIR="/var/log/myapp/"
ARCHIVE_DIR= "/var/log/myapp/archive/"
find $LOG_DIR -name "*.log -mtime +30 -exec mv {} $ARCHIVE_DIR
gzip $ARCHIVE_DIR/*.log
echo "Log files older than 30 days archived and compressed."
#/bin/bash
# threshold is set at 90
# df command is used to get disk usage information for the root filesystem (/)
# tail -n 1 extracts the last line of the df output
#awk '{print $5}' extracts the fifth column, which contains the usage percentage
# the if condition compares the usage percentage to the threshold and gives a warning


# set threshold of the disk usage
THRESHOLD=90
#get the disk percentage
disk_usage=$(df -h / | tail -n 1 | awk '{print $5}' sed 's/%//')

if [ "$disk_usage" -ge  "$THRESHOLD" ]; then
    echo "disk space is running low"
else
    echo "disk spacr is within acceptable limits. Disk usage: $$disk_usage%"

fi
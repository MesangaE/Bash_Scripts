#/bin/bash
#logging to keep track of script execution and errors
log_file= "/var/log/my_script.log"
#redirect stdout and stderr to a log file
exec > "$log_file" 2>&1
echo "script started at $(date)
#your script logic here
echo "script finished at $(date)


#/bin/bash
# using the set -e to exit on error
set -e
#add your script logic and if an error occurs it will exit here
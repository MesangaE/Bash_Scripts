#!/bin/bash
#script to search for keywords in logfiles for troubleshooting
search_term= "error"
log_file="application.log"
if grep -q "$search_term" "$log_file"; then
    echo "Found $search_term in $log_file"

else 
   echo "No $search_term in $log_file"

fi
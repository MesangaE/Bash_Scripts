#!/bin/bash
#top -bn1: Runs the top command in batch mode with just one iteration.
#grep "Cpu(s)": Filters the output to lines containing "Cpu(s)".
#sed "s/.*, *\([0-9.]*\)%* id. */\1/": Uses sed to extract the CPU idle percentage.
#awk '{print 100 - $1}': Subtracts the idle percentage from 100 to get the CPU usage percentage.

THRESHOLD=80

cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id. */\1/" | awk '{print 100 - $1}')

if (( $(echo "$cpu_usage > $THRESHOLD" | bc -l) )); then
    echo "CPU usage is above $THRESHOLD%. Current usage: $cpu_usage%" | mail -s "CPU Alert" eveikome@gmail.com
fi



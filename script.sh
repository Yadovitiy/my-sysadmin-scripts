#! /bin/bash

N=60

while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" 
        free -h
        df -h
        uptime
        
    } >> monitor.log
    sleep $N
done

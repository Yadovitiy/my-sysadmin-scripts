#! /bin/bash

N=60

while true; do
    # Здесь будет сбор метрик
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> monitor.log	
    sleep $N

done

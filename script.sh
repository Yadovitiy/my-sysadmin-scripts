#! /bin/bash

N=60
LOGFILE="monitor.log"


# Проверка наличия утилит
for cmd in free df uptime date; do
    if ! command -v "$cmd" &>/dev/null; then
        echo "Ошибка: утилита $cmd не найдена" >&2
        exit 1
    fi
done

# Проверка, что можем писать в лог
if ! touch "$LOGFILE" 2>/dev/null; then
    echo "Ошибка: нет доступа на запись в $LOGFILE" >&2
    exit 1
fi

# Основной функционал скрипта
while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" 
        free -h
        df -h
        uptime
        
    } >> "$LOGFILE"
    sleep $N
done

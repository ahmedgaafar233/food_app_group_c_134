#!/bin/bash
# scrcpy with anti-disconnect settings for Huawei STK-L21

# Keep screen awake while USB connected
adb -s 78KNW20313003587 shell settings put global stay_on_while_plugged_in 3

while true; do
    echo "[$(date)] Starting scrcpy..."
    scrcpy \
        -s 78KNW20313003587 \
        --max-size 1080 \
        --bit-rate 4M \
        --max-fps 30 \
        --stay-awake \
        --window-title "STK-L21" 2>&1
    
    EXIT_CODE=$?
    echo "[$(date)] scrcpy exited (code $EXIT_CODE). Reconnecting in 2 seconds..."
    sleep 2
    adb -s 78KNW20313003587 reconnect 2>/dev/null
    sleep 1
done

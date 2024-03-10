#!/bin/bash
FU=$(df | grep "sda3" | awk '{print $5}' | tr -d %)
TO="abdullahkoraal@gmail.com"
if [[ $FU -ge 70 ]]
then 
    echo "Warning, Disk Space is Low: $FU %" | mail -s "DISK SPACE ALERT!" $TO
else
    echo "All Good. Your Current Disk Space Usage is: $FU %" | mail -s "DISK SPACE ALERT!" $TO
fi

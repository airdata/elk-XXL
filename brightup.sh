#!/bin/bash
curr=`cat /sys/class/backlight/intel_backlight/actual_brightness`
if [ $curr -lt 4477 ]; then
   curr=$((curr+406));
   echo $curr  > /sys/class/backlight/intel_backlight/brightness;
fi

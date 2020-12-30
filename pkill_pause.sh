#!/bin/bash
#find process name and turn it into a variable:
echo "what's the name of the process"
read process_name
#ps -e | grep $process_name | grep -A 0 '+' | cut -c15-20 
PID=$(ps -e | grep "$process_name" | awk '{print $1}')
echo "this is your PID: $PID"

#stop process:
kill -STOP $PID
echo 'process stopped, see output:'
ps -e | grep "$process_name"

#wait for user to press return to release hold on process:
echo "press enter to un-pause process"
read empty_var
kill -CONT $PID

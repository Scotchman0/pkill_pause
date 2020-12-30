# pkill_pause
short bash script to find, pause and un-pause a process ID using ps -e and kill commands stop/cont
1. download or clone this repository, or copy out the script, then make executable:
  a. $ sudo chmod +x ./pkill_pause.sh
  
2. run the script in terminal

3. when prompted, insert the name of the process you're searching for (uses grep, so the more full the name the better)

4. The code will search for the string, find the PID if available, and issue a SIGSTOP command to the PID to pause the program temporarily

5. press enter key to resume the process (issues a SIGCONT command to the PID).

That's it.

Why would you need this? I have no idea - but it served as an interesting brain tease problem and might come in handy so I'm publishing it. 

Free to use/copy, whatever.

~Scotchman0

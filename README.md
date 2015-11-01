# WC-PWN
Get decrypted (clear-text) password from remote PC's in active directory.

---
#####How to use:
1. Open wcpwn.bat
2. Type the name of the remote computer and press enter
3. Enter if remote coputer is 32 or 64 bit (enter 64 when in doubt, you can always try again if you've selected the wrong one)
3. Wait
4. Open <REMOTE-PC-NAME>-<RANDOM>.txt and read all password
5. Profit?

####Aternate way to use:
Command: wcpwn COMPUTERNAME [64/32]<br>
For instance the computer MyPC which has a 64 bit OS:<br>
wcpwn MyPC 64<br>
You can also use wcpwn MyPC and it will then promt you to enter the ARC type, I might work on something to detect this automaticly!

# picoCTF 2023 - chrono (General Skills)

## Description 

How to automate tasks to run at intervals on linux servers?

Use ssh to connect to this server:

Server: saturn.picoctf.net

Port: 60198

Username: picoplayer 

Password: tPmsUpiHeZ

## Solution 

After using ssh to connect to the server, there is nothing in the folder I am in. 
Thus, I searched how to automate task in linux which prompted me with cron. 
I found that system wide tasks are listed in `/etc/crontab`. 
Thus, I navigated to that and we can see the flag in the file. 

## Flag 

`picoCTF{Sch3DUL7NG_T45K3_L1NUX_0bb95b71}`
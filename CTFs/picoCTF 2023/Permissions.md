# picoCTF 2023 - Permissions (General Skills)

## Description

Can you read files in the root file?

The system admin has provisioned an account for you on the main server:

`ssh -p 63667 picoplayer@saturn.picoctf.net`

Password: x+T6aPgE4-

Can you login and read the root file?

## Solution

As hinted, I `cd`ed to the root directory.
I can see a folder called challenge which isn't a folder in normal linux root.
There is a file inside which contains the flag.

```bash
picoplayer@challenge:/$ cd /
picoplayer@challenge:/$ cd challenge
picoplayer@challenge:/challenge$ ls
metadata.json
picoplayer@challenge:/challenge$ cat metadata.json
{"flag": "picoCTF{uS1ng_v1m_3dit0r_f6ad392b}", "username": "picoplayer", "password": "x+T6aPgE4-"}picoplayer@challenge:/challenge$ Connection to saturn.picoctf.net closed by remote host.
```

## Flag

`picoCTF{uS1ng_v1m_3dit0r_f6ad392b}`

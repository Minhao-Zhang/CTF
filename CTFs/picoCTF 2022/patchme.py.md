# picoCTF 2022 - patchme.py (Reverse Engineering)

## Description

Can you get the flag?

Run this [Python program](https://artifacts.picoctf.net/c/387/patchme.flag.py) in the same directory as this [encrypted flag](https://artifacts.picoctf.net/c/387/flag.txt.enc).

## Solution

As I ran the python program, it prompted me for a password.
I opened up the python file, and these are the code for checking the password.

```python
    if( user_pw == "ak98" + \
                   "-=90" + \
                   "adfjhgj321" + \
                   "sleuth9000"):
```

Then, we can read the password `ak98-=90adfjhgj321sleuth9000` from the code.

## Flag

`picoCTF{p47ch1ng_l1f3_h4ck_f01eabfa}`

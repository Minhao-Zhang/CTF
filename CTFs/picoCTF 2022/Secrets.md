# picoCTF 2022 - Secrets (Web Exploitation)

## Description

We have several pages hidden. Can you find the one with the flag?

The website is running [here](http://saturn.picoctf.net:50167/).

## Solution

After opening the website, there is not much to see.

Inspecting the raw html file, I found a reference to `secret/assets/index.css` hinting that there are couple folders below that.
After trying access many different folders, I found that `http://saturn.picoctf.net:50167/secret/` does have a page.

In that page, I found a reference to `hidden/file.css`.
Then, I accessed `http://saturn.picoctf.net:50167/secret/hidden/`.

In that page, I found a reference to `superhidden/login.css`.
Then, I accessed `http://saturn.picoctf.net:50167/secret/hidden/superhidden/`.

At last, we can see the flag in an invisible h3.

## Flag

`picoCTF{succ3ss_@h3n1c@10n_51b260fe}`

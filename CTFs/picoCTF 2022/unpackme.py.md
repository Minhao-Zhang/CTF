# picoCTF 2022 - unpackme.py (Reverse Engineering)

## Description 

Can you get the flag?

Reverse engineer this [Python program](https://artifacts.picoctf.net/c/465/unpackme.flag.py).

## Solution 

I tried to just run the program and see what happens, but it prompted me for a password which I don't know. 
I then opened up the file and confused by lack of the if logic statement. 
I noticed that at the end, there is a `exec` function which takes in a string. 
I printed out the string and I found the flag. 

```python

import base64
from cryptography.fernet import Fernet



payload = b'gAAAAABiMD06eCisTWoohiYL5jHGdCte5LAviTFguZQSIyRLAWICJpmdrgxhdTB923h6eksddKpKH41I5-HGzI6xGF_7eb_1u0S2Phw2NvYGTF1KzE1-AU66FfIW6QXWnCpPHOS9CatNBuFXuyjEAx86Rld2E7GjvuKEOJJXx_GZE2JgAxnDmvcewoksfjVCCAwNqzixpUPKkIET2xmO4EsDqK4CUG8_JxP0HwSEzW4PH-hVpZrkyse4EodFPsjs7NVJF0hL1_8bP1TCiEEnFn7hCoTRRvlpYQ=='

key_str = 'correctstaplecorrectstaplecorrec'
key_base64 = base64.b64encode(key_str.encode())
f = Fernet(key_base64)
plain = f.decrypt(payload)
print(plain.decode() )
exec(plain.decode())
```

## Flag 
`picoCTF{175_chr157m45_cd82f94c}`
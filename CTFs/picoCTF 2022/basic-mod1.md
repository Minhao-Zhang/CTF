# picoCTF 2022 - basic-mod1 (Cryptography)

## Description

We found this weird message being passed around on the servers, we think we have a working decryption scheme.

Download the message [here](https://artifacts.picoctf.net/c/395/message.txt).

Take each number mod 37 and map it to the following character set: 0-25 is the alphabet (uppercase), 26-35 are the decimal digits, and 36 is an underscore.

Wrap your decrypted message in the picoCTF flag format (i.e. `picoCTF{decrypted_message}`)

## Solution

Follow the instructions in the description, we could produce the following code.

```python
nums = "91 322 57 124 40 406 272 147 239 285 353 272 77 110 296 262 299 323 255 337 150 102"
nums = nums.split(" ")
nums = [int(i, 10) for i in nums]
for i in nums:
    t = i % 37
    if t <= 25:
        print(chr(ord('A') + t), end="")
    elif t == 36:
        print("_", end="")
    else:
        print(t-26, end="")

print()
```

## Flag

`picoCTF{R0UND_N_R0UND_ADD17EC2}`

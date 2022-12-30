# picoCTF 2022 - basic-mod2 (Cryptography)

## Description

A new modular challenge!

Download the message [here](https://artifacts.picoctf.net/c/500/message.txt).

Take each number mod 41 and find the modular inverse for the result. Then map to the following character set: 1-26 are the alphabet, 27-36 are the decimal digits, and 37 is an underscore.

Wrap your decrypted message in the picoCTF flag format (i.e. `picoCTF{decrypted_message}`)

## Solution

Follow the instructions in the description, we could produce the following code.

```python
nums = "104 85 69 354 344 50 149 65 187 420 77 127 385 318 133 72 206 236 206 83 342 206 370"
nums = nums.split()
nums = [int(i) for i in nums]

for i in nums:
    t = i % 41
    j = 1
    while (j * t) % 41 != 1:
        j += 1
    
    if (j < 27):
        print(chr(ord('A') + j - 1), end="")
    elif (j == 37):
        print("_", end="")
    else:
        print(j - 27, end="")
print()
```

## Flag

`picoCTF{1NV3R53LY_H4RD_DADAACAA}`

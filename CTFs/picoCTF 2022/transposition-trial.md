# picoCTF 2022 - transposition-trial (Cryptography)

## Description

Our data got corrupted on the way here. Luckily, nothing got replaced, but every block of 3 got scrambled around! The first word seems to be three letters long, maybe you can use that to recover the rest of the message.

Download the corrupted message [here](https://artifacts.picoctf.net/c/457/message.txt).

## Solution

As hinted in the description, every 3 letter is scrambled.
There is another hint of the first word is a 3 letter word.
It's easy to guess that the first word is `The`.

Then, I wrote the following python script to parse the entire message.

```python

msg = "heTfl g as iicpCTo{7F4NRP051N5_16_35P3X51N3_V091B0AE}2"

dec = ""
for i in range(len(msg) // 3):
    dec += msg[3 * i + 2]
    dec += msg[3 * i : 3 * i + 2]

print(dec)
```

## Flag

`picoCTF{7R4N5P051N6_15_3XP3N51V3_109AB02E}`

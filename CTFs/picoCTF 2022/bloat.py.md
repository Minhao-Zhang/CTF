# picoCTF 2022 - bloat.py (Reverse Engineering)

## Description

Can you get the flag?

Run this [Python program](https://artifacts.picoctf.net/c/429/bloat.flag.py) in the same directory as this [encrypted flag](https://artifacts.picoctf.net/c/429/flag.txt.enc).

## Solution

After we opened the file, there are a lot of scrambled python code.
I used a formatter to format it into more readable format and I can see a lot of print statement with values indexed from the array in the beginning.
I just printed out all of them and substituted each of them back into their place.

Here is the result.

```python
import sys

a = (
    "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    + "[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~ "
)


def arg133(arg432):
    if arg432 == "happychance":
        return True
    else:
        print("That password is incorrect")
        sys.exit(0)
        return False


def arg111(arg444):
    return arg122(
        arg444.decode(),
        "rapscallion",
    )


def arg232():
    return input("Please enter correct password for flag: ")


def arg132():
    return open("flag.txt.enc", "rb").read()


def arg112():
    print("Welcome back... your flag, user: ")


def arg122(arg432, arg423):
    arg433 = arg423
    i = 0
    while len(arg433) < len(arg432):
        arg433 = arg433 + arg423[i]
        i = (i + 1) % len(arg423)
    return "".join(
        [chr(ord(arg422) ^ ord(arg442)) for (arg422, arg442) in zip(arg432, arg433)]
    )

arg444 = arg132()
arg432 = arg232()
arg133(arg432)
arg112()
arg423 = arg111(arg444)
print(arg423)
sys.exit(0)

```

From here, we can read out the password is `happychance` and we just run the program with that input.

## Flag

`picoCTF{d30bfu5c4710n_f7w_161a4f09}`

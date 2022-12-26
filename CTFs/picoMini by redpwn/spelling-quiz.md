# picoMini by redpwn - spelling-quiz (Cryptography)

## Description

I found the flag, but my brother wrote a program to encrypt all his text files. He has a spelling quiz study guide too, but I don't know if that helps.

[public.zip](https://artifacts.picoctf.net/picoMini+by+redpwn/Cryptography/spelling-quiz/public.zip)

## Solution

A glance of the `encrypt.py` will tell us this is a substitution cipher where the key is completely random. However, we could do a frequency analysis using the `study-guide.txt`. Using the following python code,

```python
counts = {}

with open("study-guide.txt") as file:
    data = file.read()
    data = "".join(data.split())
    for c in data:
        counts[c] = counts.get(c, 1) + 1
    print(dict(sorted(counts.items(), key=lambda item: item[1], reverse=True)))
```

we can find the character frequency as follows.

```python
{'r': 311364, 'w': 270081, 'x': 239285, 't': 216937, 'i': 214773, 'a': 206356, 'c': 205402, 'v': 198198, 'l': 162352, 'n': 131466, 'o': 107083, 'b': 96530, 'm': 90629, 's': 87010, 'f': 76514, 'd': 66436, 'q': 57700, 'u': 49433, 'y': 30494, 'p': 27459, 'g': 17174, 'e': 14941, 'k': 11863, 'z': 8355, 'j': 4795, 'h': 3252}
```
We know that ```e``` is the most frequent english character, we could determine that ```r=e```. Then, we could use a online substitution cipher solver like [quipqiup](https://www.quipqiup.com/) with some of the known frequency like ```r=e```. 

## Flag 
```picoCTF{perhaps_the_dog_jumped_over_was_just_tired}```
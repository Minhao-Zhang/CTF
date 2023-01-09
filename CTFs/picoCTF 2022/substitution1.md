# picoCTF 2022 - substitution1 (Cryptography)

## Description

A second message has come in the mail, and it seems almost identical to the first one. Maybe the same thing will work again.

Download the message [here](https://artifacts.picoctf.net/c/415/message.txt).

## Solution

As hinted, this is a simple substitution cipher.

```
WYHg (gzray hra wimybas yzs hvij) ias i yums rh wrombysa gswbakyu wromsykykrl. Wrlysgyilyg ias masgslysn dkyz i gsy rh wzivvsljsg dzkwz ysgy yzska wasiykxkyu, yswzlkwiv (iln jrrjvklj) gckvvg, iln marqvso-grvxklj iqkvkyu. Wzivvsljsg bgbivvu wrxsa i lboqsa rh wiysjraksg, iln dzsl grvxsn, siwz uksvng i gyaklj (wivvsn i hvij) dzkwz kg gbqokyysn yr il rlvkls gwraklj gsaxkws. WYHg ias i jasiy diu yr vsial i dkns iaaiu rh wrombysa gswbakyu gckvvg kl i gihs, vsjiv slxkarlosly, iln ias zrgysn iln mviusn qu oilu gswbakyu jarbmg iarbln yzs dravn hra hbl iln maiwykws. Hra yzkg marqvso, yzs hvij kg: mkwrWYH{HA3FB3LWU_4774WC5_4A3_W001_7II384QW}
```

We can see the encrypted flag at the end.
As we know that the prefix for the flag has to be `picoCTF`, we can make out that `mkwrWYH=picoCTF`.
After that, we know the first word is `CTFg` which does not make sense.
The only character that would be reasonable here would be `s`.
Thus, we know `g=s`.

Then, I believe I have figured out enough characters and I used an online substitution cipher solver like [quipqiup](https://www.quipqiup.com/) with the clues to be `mkwryhg=picotfs`.

Here is the only decoded result.

```
CTFs (short for capture the flag) are a type of computer security competition. Contestants are presented with a set of challenges which test their creativity, technical (and googling) skills, and problem-solving ability. Challenges usually cover a number of categories, and when solved, each yields a string (called a flag) which is submitted to an online scoring service. CTFs are a great way to learn a wide array of computer security skills in a safe, legal environment, and are hosted and played by many security groups around the world for fun and practice. For this problem, the flag is: picoCTF{FR3QU3NCY_4774CK5_4R3_C001_7AA384BC}
```

## Flag

`picoCTF{FR3QU3NCY_4774CK5_4R3_C001_7AA384BC}`

# picoCTF 2022 - substitution0 (Cryptography)

## Description

A message has come in but it seems to be all scrambled. Luckily it seems to have the key at the beginning. Can you crack this substitution cipher?

Download the message [here](https://artifacts.picoctf.net/c/380/message.txt).

## Solution

As hinted, the first line of the file suggests that this is a simple substitution cipher.
I wrote the following python code to decode it.

```python
s = "QWITJSYHXCNDFERMUKGOPVALBZ"
enc = "Hjkjpmre Djykqet qkrgj, axoh q ykqvj qet goqojdb qxk, qet wkrpyho fj ohj wjjodj\nskrf q ydqgg iqgj xe ahxih xo aqg jeidrgjt. Xo aqg q wjqpoxspd giqkqwqjpg, qet, qo\nohqo oxfj, penerae or eqopkqdxgog—rs irpkgj q ykjqo mkxzj xe q gixjeoxsxi mrxeo\nrs vxja. Ohjkj ajkj oar krpet wdqin gmrog ejqk rej jlokjfxob rs ohj wqin, qet q\ndrey rej ejqk ohj rohjk. Ohj giqdjg ajkj jlijjtxeydb hqkt qet ydrggb, axoh qdd ohj\nqmmjqkqeij rs wpkexghjt yrdt. Ohj ajxyho rs ohj xegjio aqg vjkb kjfqknqwdj, qet,\noqnxey qdd ohxeyg xeor iregxtjkqoxre, X irpdt hqktdb wdqfj Cpmxojk srk hxg rmxexre\nkjgmjioxey xo.\n\nOhj sdqy xg: mxirIOS{5PW5717P710E_3V0DP710E_03055505}"

book = {}
for i in range(26):
    book[s[i]] = chr(ord('A') + i)
    book[s[i].lower()] = chr(ord('a') + i)

dec = ""
for c in enc:
    if c in book.keys():
        dec += book[c]
    else:
        dec += c
print(dec)
```

## Flag

`picoCTF{5UB5717U710N_3V0LU710N_03055505}`

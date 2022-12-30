# picoCTF 2022 - credstuff (Cryptography)

## Description 
We found a leak of a blackmarket website's login credentials. Can you find the password of the user `cultiris` and successfully decrypt it?

Download the leak [here](https://artifacts.picoctf.net/c/534/leak.tar).

The first user in `usernames.txt` corresponds to the first password in `passwords.txt`. The second user corresponds to the second password, and so on.

## Solution 
Upon inspection on line 378, we see that `cvpbPGS{P7e1S_54I35_71Z3}`. 
We can see that `c -> p, v -> i` and so on. 
This look like s ROT13 cipher to me. 
Then, I just used an online solver to solve this. 

## Flag 
`picoCTF{C7r1F_54V35_71M3}`
# picoCTF 2022 - SQL Direct (SQL)

## Description

Connect to this PostgreSQL server and find the flag!

`psql -h saturn.picoctf.net -p 52939 -U postgres pico`

Password is `postgres`

## Solution

After connecting,

```SQL
SELECT * FROM FLAGS;
```

## Flag

`picoCTF{L3arN_S0m3_5qL_t0d4Y_73b0678f}`

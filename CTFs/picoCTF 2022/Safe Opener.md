# picoCTF 2022 - Safe Opener (Forensics)

## Description

Can you open this safe?

I forgot the key to my safe but this [program](https://artifacts.picoctf.net/c/463/SafeOpener.java) is supposed to help me with retrieving the lost key. Can you help me unlock my safe?

Put the password you recover into the picoCTF flag format like:

`picoCTF{password}`

## Solution

As I ran the java program, it prompted me for a password.
I opened up the java file, and these are the code for checking the password.

```java
Base64.Encoder encoder = Base64.getEncoder();

// ...

key = keyboard.readLine();
encodedkey = encoder.encodeToString(key.getBytes());

// ...

String encodedkey = "cGwzYXMzX2wzdF9tM18xbnQwX3RoM19zYWYz";

// ...

if (password.equals(encodedkey)) {
    System.out.println("Sesame open");
    return true;
}
```

We see that we first convert the input to base64, then compare it to the encoded key.

```bash
echo cGwzYXMzX2wzdF9tM18xbnQwX3RoM19zYWYz | hex -d
```

## Flag

`picoCTF{pl3as3_l3t_m3_1nt0_th3_saf3}`

# picoCTF 2023 - Safe Opener 2 (Reverse Engineering)

## Description 

What can you do with this file?

I forgot the key to my safe but this [file](https://artifacts.picoctf.net/c/319/SafeOpener.class) is supposed to help me with retrieving the lost key. Can you help me unlock my safe?

## Solution 

As this is a java class file, we can try to use a de-compiler like IntelliJ IDEA. 

We can see the flag in one of the methods. 

```java
public static boolean openSafe(String password) {
    String encodedkey = "picoCTF{SAf3_0p3n3rr_y0u_solv3d_it_58536c47}";
    if (password.equals(encodedkey)) {
        System.out.println("Sesame open");
        return true;
    } else {
        System.out.println("Password is incorrect\n");
        return false;
    }
}
```

## Flag 

`picoCTF{SAf3_0p3n3rr_y0u_solv3d_it_58536c47}`
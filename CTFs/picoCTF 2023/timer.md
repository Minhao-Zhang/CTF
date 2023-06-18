# picoCTF 2023 - timer (Reverse Engineering)

## Description

You will find the flag after analysing this apk

Download [here](https://artifacts.picoctf.net/c/421/timer.apk).

## Solution

As hinted, using jadx, we can de-compile the apk file.

Then, we can do a global search of `picoCTF{` and we found the file

```java
package com.example.timer;

/* loaded from: classes3.dex */
public final class BuildConfig {
    public static final String APPLICATION_ID = "com.example.timer";
    public static final String BUILD_TYPE = "debug";
    public static final boolean DEBUG = Boolean.parseBoolean("true");
    public static final int VERSION_CODE = 1;
    public static final String VERSION_NAME = "picoCTF{t1m3r_r3v3rs3d_succ355fully_17496}";
}
```

## Flag

`picoCTF{t1m3r_r3v3rs3d_succ355fully_17496}`

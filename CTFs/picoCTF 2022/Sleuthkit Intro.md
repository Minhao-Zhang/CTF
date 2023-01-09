# picoCTF 2022 - Sleuthkit Intro (Forensics)

## Description

Download the disk image and use `mmls` on it to find the size of the Linux partition.
Connect to the remote checker service to check your answer and get the flag.

Note: if you are using the webshell, download and extract the disk image into `/tmp` not your home directory.

- [Download disk image](https://artifacts.picoctf.net/c/114/disk.img.gz)
- Access checker program: `nc saturn.picoctf.net 52279`

## Solution

```bash
$ gzip -d disk.img.gz
$ mmls disk.img
```

## Flag 

`picoCTF{mm15_f7w!}`
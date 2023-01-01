# picoCTF 2022 - GDB Test Drive (Reverse Engineering)

## Description 

Can you get the flag?

Download this [binary](https://artifacts.picoctf.net/c/116/gdbme).

Here's the test drive instructions:
- `$ chmod +x gdbme`
- `$ gdb gdbme`
- `(gdb) layout asm`
- `(gdb) break *(main+99)`
- `(gdb) run`
- `(gdb) jump *(main+104)`

## Solution 

Follow the instruction 

## Flag

`picoCTF{d3bugg3r_dr1v3_72bd8355}`
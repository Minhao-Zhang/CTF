# picoCTF2023 - PcapPoisoning (Forensics)

## Description

How about some hide and seek heh?

Download this [file](https://artifacts.picoctf.net/c/405/trace.pcap) and find the flag.

## Solution

Using a software like WireShark, we can try to follow the TCP stream.
When we use filter `tcp.stream eq 1` and go to the second successfully transmitted packet, we can see the flag.

## Flag

`picoCTF{P64P_4N4L7S1S_SU55355FUL_d3d6b5b6}`

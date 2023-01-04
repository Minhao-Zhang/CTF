# picoCTF 2022 - Packets Primer (Forensics)

## Description

Download the packet capture file and use packet analysis software to find the flag.

- [Download packet capture](https://artifacts.picoctf.net/c/200/network-dump.flag.pcap)

## Solution

Since this is a packet capture, we can use a software like Wireshark to open it up.
Once we opened that up, there are some clear TCP Streams.
I picked the first and followed the stream which gave me teh flag.

## Flag

`picoCTF{p4ck37_5h4rk_b9d53765}`

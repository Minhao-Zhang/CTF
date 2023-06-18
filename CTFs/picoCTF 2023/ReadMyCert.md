# picoCTF 2023 - ReadMyCert (Cryptography)

## Description

How about we take you on an adventure on exploring certificate signing requests.

Take a look at this CSR file [here](https://artifacts.picoctf.net/c/384/readmycert.csr).

## Solution

Following the VSR file, we can easily find a decode command on wikipedia.

```
openssl asn1parse -i -in readmycert.csr
```

Here you can see the flag.

```
    0:d=0  hl=4 l= 679 cons: SEQUENCE
    4:d=1  hl=4 l= 399 cons:  SEQUENCE
    8:d=2  hl=2 l=   1 prim:   INTEGER           :00
   11:d=2  hl=2 l=  60 cons:   SEQUENCE
   13:d=3  hl=2 l=  38 cons:    SET
   15:d=4  hl=2 l=  36 cons:     SEQUENCE
   17:d=5  hl=2 l=   3 prim:      OBJECT            :commonName
   22:d=5  hl=2 l=  29 prim:      UTF8STRING        :picoCTF{read_mycert_d8a2c48f}
   53:d=3  hl=2 l=  18 cons:    SET
   55:d=4  hl=2 l=  16 cons:     SEQUENCE
   57:d=5  hl=2 l=   3 prim:      OBJECT            :name
   62:d=5  hl=2 l=   9 prim:      UTF8STRING        :ctfPlayer
   73:d=2  hl=4 l= 290 cons:   SEQUENCE
   77:d=3  hl=2 l=  13 cons:    SEQUENCE
   79:d=4  hl=2 l=   9 prim:     OBJECT            :rsaEncryption
   90:d=4  hl=2 l=   0 prim:     NULL
   92:d=3  hl=4 l= 271 prim:    BIT STRING
  367:d=2  hl=2 l=  38 cons:   cont [ 0 ]
  369:d=3  hl=2 l=  36 cons:    SEQUENCE
  371:d=4  hl=2 l=   9 prim:     OBJECT            :Extension Request
  382:d=4  hl=2 l=  23 cons:     SET
  384:d=5  hl=2 l=  21 cons:      SEQUENCE
  386:d=6  hl=2 l=  19 cons:       SEQUENCE
  388:d=7  hl=2 l=   3 prim:        OBJECT            :X509v3 Extended Key Usage
  393:d=7  hl=2 l=  12 prim:        OCTET STRING      [HEX DUMP]:300A06082B06010505070302
  407:d=1  hl=2 l=  13 cons:  SEQUENCE
  409:d=2  hl=2 l=   9 prim:   OBJECT            :sha256WithRSAEncryption
  420:d=2  hl=2 l=   0 prim:   NULL
  422:d=1  hl=4 l= 257 prim:  BIT STRING
```

## Flag

`picoCTF{read_mycert_d8a2c48f}`

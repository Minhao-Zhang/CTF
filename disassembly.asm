
bbbbloat:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <strdup@plt+0x2e98>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <__cxa_finalize@plt-0xaa>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 5a 2f 00 00    	push   QWORD PTR [rip+0x2f5a]        # 3f80 <strdup@plt+0x2e30>
    1026:	f2 ff 25 5b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f5b]        # 3f88 <strdup@plt+0x2e38>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <__cxa_finalize@plt-0xa0>
    10bf:	90                   	nop

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 2d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f2d]        # 3ff8 <strdup@plt+0x2ea8>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010d0 <free@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3f90 <strdup@plt+0x2e40>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <putchar@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 ad 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ead]        # 3f98 <strdup@plt+0x2e48>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <puts@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 a5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ea5]        # 3fa0 <strdup@plt+0x2e50>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <strlen@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 9d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e9d]        # 3fa8 <strdup@plt+0x2e58>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <__stack_chk_fail@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 95 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e95]        # 3fb0 <strdup@plt+0x2e60>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001120 <printf@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 8d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e8d]        # 3fb8 <strdup@plt+0x2e68>
    112b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001130 <fputs@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 85 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e85]        # 3fc0 <strdup@plt+0x2e70>
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001140 <__isoc99_scanf@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 7d 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e7d]        # 3fc8 <strdup@plt+0x2e78>
    114b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001150 <strdup@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 75 2e 00 00 	bnd jmp QWORD PTR [rip+0x2e75]        # 3fd0 <strdup@plt+0x2e80>
    115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001160 <.text>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	31 ed                	xor    ebp,ebp
    1166:	49 89 d1             	mov    r9,rdx
    1169:	5e                   	pop    rsi
    116a:	48 89 e2             	mov    rdx,rsp
    116d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1171:	50                   	push   rax
    1172:	54                   	push   rsp
    1173:	4c 8d 05 a6 04 00 00 	lea    r8,[rip+0x4a6]        # 1620 <strdup@plt+0x4d0>
    117a:	48 8d 0d 2f 04 00 00 	lea    rcx,[rip+0x42f]        # 15b0 <strdup@plt+0x460>
    1181:	48 8d 3d 7f 01 00 00 	lea    rdi,[rip+0x17f]        # 1307 <strdup@plt+0x1b7>
    1188:	ff 15 52 2e 00 00    	call   QWORD PTR [rip+0x2e52]        # 3fe0 <strdup@plt+0x2e90>
    118e:	f4                   	hlt    
    118f:	90                   	nop
    1190:	48 8d 3d 79 2e 00 00 	lea    rdi,[rip+0x2e79]        # 4010 <stdout@@GLIBC_2.2.5>
    1197:	48 8d 05 72 2e 00 00 	lea    rax,[rip+0x2e72]        # 4010 <stdout@@GLIBC_2.2.5>
    119e:	48 39 f8             	cmp    rax,rdi
    11a1:	74 15                	je     11b8 <strdup@plt+0x68>
    11a3:	48 8b 05 2e 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e2e]        # 3fd8 <strdup@plt+0x2e88>
    11aa:	48 85 c0             	test   rax,rax
    11ad:	74 09                	je     11b8 <strdup@plt+0x68>
    11af:	ff e0                	jmp    rax
    11b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11c0:	48 8d 3d 49 2e 00 00 	lea    rdi,[rip+0x2e49]        # 4010 <stdout@@GLIBC_2.2.5>
    11c7:	48 8d 35 42 2e 00 00 	lea    rsi,[rip+0x2e42]        # 4010 <stdout@@GLIBC_2.2.5>
    11ce:	48 29 fe             	sub    rsi,rdi
    11d1:	48 89 f0             	mov    rax,rsi
    11d4:	48 c1 ee 3f          	shr    rsi,0x3f
    11d8:	48 c1 f8 03          	sar    rax,0x3
    11dc:	48 01 c6             	add    rsi,rax
    11df:	48 d1 fe             	sar    rsi,1
    11e2:	74 14                	je     11f8 <strdup@plt+0xa8>
    11e4:	48 8b 05 05 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e05]        # 3ff0 <strdup@plt+0x2ea0>
    11eb:	48 85 c0             	test   rax,rax
    11ee:	74 08                	je     11f8 <strdup@plt+0xa8>
    11f0:	ff e0                	jmp    rax
    11f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1200:	f3 0f 1e fa          	endbr64 
    1204:	80 3d 0d 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e0d],0x0        # 4018 <stdout@@GLIBC_2.2.5+0x8>
    120b:	75 2b                	jne    1238 <strdup@plt+0xe8>
    120d:	55                   	push   rbp
    120e:	48 83 3d e2 2d 00 00 	cmp    QWORD PTR [rip+0x2de2],0x0        # 3ff8 <strdup@plt+0x2ea8>
    1215:	00 
    1216:	48 89 e5             	mov    rbp,rsp
    1219:	74 0c                	je     1227 <strdup@plt+0xd7>
    121b:	48 8b 3d e6 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2de6]        # 4008 <strdup@plt+0x2eb8>
    1222:	e8 99 fe ff ff       	call   10c0 <__cxa_finalize@plt>
    1227:	e8 64 ff ff ff       	call   1190 <strdup@plt+0x40>
    122c:	c6 05 e5 2d 00 00 01 	mov    BYTE PTR [rip+0x2de5],0x1        # 4018 <stdout@@GLIBC_2.2.5+0x8>
    1233:	5d                   	pop    rbp
    1234:	c3                   	ret    
    1235:	0f 1f 00             	nop    DWORD PTR [rax]
    1238:	c3                   	ret    
    1239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1240:	f3 0f 1e fa          	endbr64 
    1244:	e9 77 ff ff ff       	jmp    11c0 <strdup@plt+0x70>
    1249:	f3 0f 1e fa          	endbr64 
    124d:	55                   	push   rbp
    124e:	48 89 e5             	mov    rbp,rsp
    1251:	48 83 ec 30          	sub    rsp,0x30
    1255:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
    1259:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
    125d:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    1261:	48 89 c7             	mov    rdi,rax
    1264:	e8 e7 fe ff ff       	call   1150 <strdup@plt>
    1269:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    126d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1271:	48 89 c7             	mov    rdi,rax
    1274:	e8 87 fe ff ff       	call   1100 <strlen@plt>
    1279:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    127d:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
    1284:	00 
    1285:	eb 70                	jmp    12f7 <strdup@plt+0x1a7>
    1287:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    128b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    128f:	48 01 d0             	add    rax,rdx
    1292:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    1295:	3c 20                	cmp    al,0x20
    1297:	7e 58                	jle    12f1 <strdup@plt+0x1a1>
    1299:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    129d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12a1:	48 01 d0             	add    rax,rdx
    12a4:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    12a7:	3c 7f                	cmp    al,0x7f
    12a9:	74 46                	je     12f1 <strdup@plt+0x1a1>
    12ab:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    12af:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12b3:	48 01 d0             	add    rax,rdx
    12b6:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    12b9:	0f be c0             	movsx  eax,al
    12bc:	83 c0 2f             	add    eax,0x2f
    12bf:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
    12c2:	83 7d e4 7e          	cmp    DWORD PTR [rbp-0x1c],0x7e
    12c6:	7e 17                	jle    12df <strdup@plt+0x18f>
    12c8:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
    12cb:	8d 48 a2             	lea    ecx,[rax-0x5e]
    12ce:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    12d2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12d6:	48 01 d0             	add    rax,rdx
    12d9:	89 ca                	mov    edx,ecx
    12db:	88 10                	mov    BYTE PTR [rax],dl
    12dd:	eb 13                	jmp    12f2 <strdup@plt+0x1a2>
    12df:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    12e3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12e7:	48 01 d0             	add    rax,rdx
    12ea:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
    12ed:	88 10                	mov    BYTE PTR [rax],dl
    12ef:	eb 01                	jmp    12f2 <strdup@plt+0x1a2>
    12f1:	90                   	nop
    12f2:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
    12f7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    12fb:	48 3b 45 f8          	cmp    rax,QWORD PTR [rbp-0x8]
    12ff:	72 86                	jb     1287 <strdup@plt+0x137>
    1301:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1305:	c9                   	leave  
    1306:	c3                   	ret    
    1307:	f3 0f 1e fa          	endbr64 
    130b:	55                   	push   rbp
    130c:	48 89 e5             	mov    rbp,rsp
    130f:	48 83 ec 50          	sub    rsp,0x50
    1313:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
    1316:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
    131a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1321:	00 00 
    1323:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1327:	31 c0                	xor    eax,eax
    1329:	48 b8 41 3a 34 40 72 	movabs rax,0x4c75257240343a41
    1330:	25 75 4c 
    1333:	48 ba 34 46 66 30 66 	movabs rdx,0x3062396630664634
    133a:	39 62 30 
    133d:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1341:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    1345:	48 b8 33 3d 5f 63 66 	movabs rax,0x68653066635f3d33
    134c:	30 65 68 
    134f:	48 ba 64 5f 62 65 36 	movabs rdx,0x4e623665625f64
    1356:	62 4e 00 
    1359:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    135d:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
    1361:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    1368:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    136f:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    1376:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    1379:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    137c:	48 63 d0             	movsxd rdx,eax
    137f:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    1386:	48 c1 ea 20          	shr    rdx,0x20
    138a:	c1 f8 1f             	sar    eax,0x1f
    138d:	89 d1                	mov    ecx,edx
    138f:	29 c1                	sub    ecx,eax
    1391:	89 c8                	mov    eax,ecx
    1393:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1396:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    139d:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    13a4:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    13ab:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    13ae:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    13b1:	48 63 d0             	movsxd rdx,eax
    13b4:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    13bb:	48 c1 ea 20          	shr    rdx,0x20
    13bf:	c1 f8 1f             	sar    eax,0x1f
    13c2:	89 d1                	mov    ecx,edx
    13c4:	29 c1                	sub    ecx,eax
    13c6:	89 c8                	mov    eax,ecx
    13c8:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    13cb:	48 8d 3d 32 0c 00 00 	lea    rdi,[rip+0xc32]        # 2004 <strdup@plt+0xeb4>
    13d2:	b8 00 00 00 00       	mov    eax,0x0
    13d7:	e8 44 fd ff ff       	call   1120 <printf@plt>
    13dc:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    13e3:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    13ea:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    13f1:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    13f4:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    13f7:	48 63 d0             	movsxd rdx,eax
    13fa:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    1401:	48 c1 ea 20          	shr    rdx,0x20
    1405:	c1 f8 1f             	sar    eax,0x1f
    1408:	89 d6                	mov    esi,edx
    140a:	29 c6                	sub    esi,eax
    140c:	89 f0                	mov    eax,esi
    140e:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1411:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    1418:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    141f:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    1426:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    1429:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    142c:	48 63 d0             	movsxd rdx,eax
    142f:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    1436:	48 c1 ea 20          	shr    rdx,0x20
    143a:	c1 f8 1f             	sar    eax,0x1f
    143d:	89 d1                	mov    ecx,edx
    143f:	29 c1                	sub    ecx,eax
    1441:	89 c8                	mov    eax,ecx
    1443:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1446:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    144a:	48 89 c6             	mov    rsi,rax
    144d:	48 8d 3d cc 0b 00 00 	lea    rdi,[rip+0xbcc]        # 2020 <strdup@plt+0xed0>
    1454:	b8 00 00 00 00       	mov    eax,0x0
    1459:	e8 e2 fc ff ff       	call   1140 <__isoc99_scanf@plt>
    145e:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    1465:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    146c:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    1473:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    1476:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    1479:	48 63 d0             	movsxd rdx,eax
    147c:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    1483:	48 c1 ea 20          	shr    rdx,0x20
    1487:	c1 f8 1f             	sar    eax,0x1f
    148a:	89 d6                	mov    esi,edx
    148c:	29 c6                	sub    esi,eax
    148e:	89 f0                	mov    eax,esi
    1490:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1493:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    149a:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    14a1:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    14a8:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    14ab:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    14ae:	48 63 d0             	movsxd rdx,eax
    14b1:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    14b8:	48 c1 ea 20          	shr    rdx,0x20
    14bc:	c1 f8 1f             	sar    eax,0x1f
    14bf:	89 d7                	mov    edi,edx
    14c1:	29 c7                	sub    edi,eax
    14c3:	89 f8                	mov    eax,edi
    14c5:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    14c8:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
    14cb:	3d 87 61 08 00       	cmp    eax,0x86187
    14d0:	0f 85 ad 00 00 00    	jne    1583 <strdup@plt+0x433>
    14d6:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    14dd:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    14e4:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    14eb:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    14ee:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    14f1:	48 63 d0             	movsxd rdx,eax
    14f4:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    14fb:	48 c1 ea 20          	shr    rdx,0x20
    14ff:	c1 f8 1f             	sar    eax,0x1f
    1502:	89 d1                	mov    ecx,edx
    1504:	29 c1                	sub    ecx,eax
    1506:	89 c8                	mov    eax,ecx
    1508:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    150b:	c7 45 c4 78 30 00 00 	mov    DWORD PTR [rbp-0x3c],0x3078
    1512:	81 45 c4 9e c2 13 00 	add    DWORD PTR [rbp-0x3c],0x13c29e
    1519:	81 6d c4 a8 30 00 00 	sub    DWORD PTR [rbp-0x3c],0x30a8
    1520:	d1 65 c4             	shl    DWORD PTR [rbp-0x3c],1
    1523:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    1526:	48 63 d0             	movsxd rdx,eax
    1529:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
    1530:	48 c1 ea 20          	shr    rdx,0x20
    1534:	c1 f8 1f             	sar    eax,0x1f
    1537:	89 d6                	mov    esi,edx
    1539:	29 c6                	sub    esi,eax
    153b:	89 f0                	mov    eax,esi
    153d:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1540:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    1544:	48 89 c6             	mov    rsi,rax
    1547:	bf 00 00 00 00       	mov    edi,0x0
    154c:	e8 f8 fc ff ff       	call   1249 <strdup@plt+0xf9>
    1551:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1555:	48 8b 15 b4 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2ab4]        # 4010 <stdout@@GLIBC_2.2.5>
    155c:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1560:	48 89 d6             	mov    rsi,rdx
    1563:	48 89 c7             	mov    rdi,rax
    1566:	e8 c5 fb ff ff       	call   1130 <fputs@plt>
    156b:	bf 0a 00 00 00       	mov    edi,0xa
    1570:	e8 6b fb ff ff       	call   10e0 <putchar@plt>
    1575:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1579:	48 89 c7             	mov    rdi,rax
    157c:	e8 4f fb ff ff       	call   10d0 <free@plt>
    1581:	eb 0c                	jmp    158f <strdup@plt+0x43f>
    1583:	48 8d 3d 99 0a 00 00 	lea    rdi,[rip+0xa99]        # 2023 <strdup@plt+0xed3>
    158a:	e8 61 fb ff ff       	call   10f0 <puts@plt>
    158f:	b8 00 00 00 00       	mov    eax,0x0
    1594:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
    1598:	64 48 33 3c 25 28 00 	xor    rdi,QWORD PTR fs:0x28
    159f:	00 00 
    15a1:	74 05                	je     15a8 <strdup@plt+0x458>
    15a3:	e8 68 fb ff ff       	call   1110 <__stack_chk_fail@plt>
    15a8:	c9                   	leave  
    15a9:	c3                   	ret    
    15aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    15b0:	f3 0f 1e fa          	endbr64 
    15b4:	41 57                	push   r15
    15b6:	4c 8d 3d bb 27 00 00 	lea    r15,[rip+0x27bb]        # 3d78 <strdup@plt+0x2c28>
    15bd:	41 56                	push   r14
    15bf:	49 89 d6             	mov    r14,rdx
    15c2:	41 55                	push   r13
    15c4:	49 89 f5             	mov    r13,rsi
    15c7:	41 54                	push   r12
    15c9:	41 89 fc             	mov    r12d,edi
    15cc:	55                   	push   rbp
    15cd:	48 8d 2d ac 27 00 00 	lea    rbp,[rip+0x27ac]        # 3d80 <strdup@plt+0x2c30>
    15d4:	53                   	push   rbx
    15d5:	4c 29 fd             	sub    rbp,r15
    15d8:	48 83 ec 08          	sub    rsp,0x8
    15dc:	e8 1f fa ff ff       	call   1000 <__cxa_finalize@plt-0xc0>
    15e1:	48 c1 fd 03          	sar    rbp,0x3
    15e5:	74 1f                	je     1606 <strdup@plt+0x4b6>
    15e7:	31 db                	xor    ebx,ebx
    15e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    15f0:	4c 89 f2             	mov    rdx,r14
    15f3:	4c 89 ee             	mov    rsi,r13
    15f6:	44 89 e7             	mov    edi,r12d
    15f9:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    15fd:	48 83 c3 01          	add    rbx,0x1
    1601:	48 39 dd             	cmp    rbp,rbx
    1604:	75 ea                	jne    15f0 <strdup@plt+0x4a0>
    1606:	48 83 c4 08          	add    rsp,0x8
    160a:	5b                   	pop    rbx
    160b:	5d                   	pop    rbp
    160c:	41 5c                	pop    r12
    160e:	41 5d                	pop    r13
    1610:	41 5e                	pop    r14
    1612:	41 5f                	pop    r15
    1614:	c3                   	ret    
    1615:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    161c:	00 00 00 00 
    1620:	f3 0f 1e fa          	endbr64 
    1624:	c3                   	ret    

Disassembly of section .fini:

0000000000001628 <.fini>:
    1628:	f3 0f 1e fa          	endbr64 
    162c:	48 83 ec 08          	sub    rsp,0x8
    1630:	48 83 c4 08          	add    rsp,0x8
    1634:	c3                   	ret    

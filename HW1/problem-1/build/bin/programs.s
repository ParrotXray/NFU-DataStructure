
build/bin/programs:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp *0x2f63(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 25 2f 00 00 	bnd jmp *0x2f25(%rip)        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <__printf_chk@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3f98 <__printf_chk@GLIBC_2.3.4>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <calloc@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fa0 <calloc@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <clock@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3fa8 <clock@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__cxa_atexit@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fb0 <__cxa_atexit@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <free@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fb8 <free@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <malloc@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fc0 <malloc@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <_ZNSt8ios_base4InitC1Ev@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 3fc8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	48 83 ec 08          	sub    $0x8,%rsp
    1128:	be 15 00 00 00       	mov    $0x15,%esi
    112d:	bf 05 00 00 00       	mov    $0x5,%edi
    1132:	e8 29 06 00 00       	call   1760 <_Z20init_ackermann_tableii>
    1137:	41 89 c0             	mov    %eax,%r8d
    113a:	b8 01 00 00 00       	mov    $0x1,%eax
    113f:	45 84 c0             	test   %r8b,%r8b
    1142:	74 13                	je     1157 <main+0x37>
    1144:	31 f6                	xor    %esi,%esi
    1146:	bf 05 00 00 00       	mov    $0x5,%edi
    114b:	e8 f0 0a 00 00       	call   1c40 <_Z9calculateii>
    1150:	e8 6b 06 00 00       	call   17c0 <_Z23cleanup_ackermann_tablev>
    1155:	31 c0                	xor    %eax,%eax
    1157:	48 83 c4 08          	add    $0x8,%rsp
    115b:	c3                   	ret    
    115c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001160 <_GLOBAL__sub_I__Z20init_ackermann_tableii>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	55                   	push   %rbp
    1165:	48 8d 2d b4 2e 00 00 	lea    0x2eb4(%rip),%rbp        # 4020 <_ZStL8__ioinit>
    116c:	48 89 ef             	mov    %rbp,%rdi
    116f:	e8 9c ff ff ff       	call   1110 <_ZNSt8ios_base4InitC1Ev@plt>
    1174:	48 8b 3d 7d 2e 00 00 	mov    0x2e7d(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    117b:	48 89 ee             	mov    %rbp,%rsi
    117e:	5d                   	pop    %rbp
    117f:	48 8d 15 82 2e 00 00 	lea    0x2e82(%rip),%rdx        # 4008 <__dso_handle>
    1186:	e9 55 ff ff ff       	jmp    10e0 <__cxa_atexit@plt>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <_start>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	31 ed                	xor    %ebp,%ebp
    1196:	49 89 d1             	mov    %rdx,%r9
    1199:	5e                   	pop    %rsi
    119a:	48 89 e2             	mov    %rsp,%rdx
    119d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11a1:	50                   	push   %rax
    11a2:	54                   	push   %rsp
    11a3:	45 31 c0             	xor    %r8d,%r8d
    11a6:	31 c9                	xor    %ecx,%ecx
    11a8:	48 8d 3d 71 ff ff ff 	lea    -0x8f(%rip),%rdi        # 1120 <main>
    11af:	ff 15 23 2e 00 00    	call   *0x2e23(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    11b5:	f4                   	hlt    
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 

00000000000011c0 <deregister_tm_clones>:
    11c0:	48 8d 3d 49 2e 00 00 	lea    0x2e49(%rip),%rdi        # 4010 <__TMC_END__>
    11c7:	48 8d 05 42 2e 00 00 	lea    0x2e42(%rip),%rax        # 4010 <__TMC_END__>
    11ce:	48 39 f8             	cmp    %rdi,%rax
    11d1:	74 15                	je     11e8 <deregister_tm_clones+0x28>
    11d3:	48 8b 05 06 2e 00 00 	mov    0x2e06(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    11da:	48 85 c0             	test   %rax,%rax
    11dd:	74 09                	je     11e8 <deregister_tm_clones+0x28>
    11df:	ff e0                	jmp    *%rax
    11e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11e8:	c3                   	ret    
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <register_tm_clones>:
    11f0:	48 8d 3d 19 2e 00 00 	lea    0x2e19(%rip),%rdi        # 4010 <__TMC_END__>
    11f7:	48 8d 35 12 2e 00 00 	lea    0x2e12(%rip),%rsi        # 4010 <__TMC_END__>
    11fe:	48 29 fe             	sub    %rdi,%rsi
    1201:	48 89 f0             	mov    %rsi,%rax
    1204:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1208:	48 c1 f8 03          	sar    $0x3,%rax
    120c:	48 01 c6             	add    %rax,%rsi
    120f:	48 d1 fe             	sar    %rsi
    1212:	74 14                	je     1228 <register_tm_clones+0x38>
    1214:	48 8b 05 d5 2d 00 00 	mov    0x2dd5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    121b:	48 85 c0             	test   %rax,%rax
    121e:	74 08                	je     1228 <register_tm_clones+0x38>
    1220:	ff e0                	jmp    *%rax
    1222:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1228:	c3                   	ret    
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <__do_global_dtors_aux>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	80 3d d5 2d 00 00 00 	cmpb   $0x0,0x2dd5(%rip)        # 4010 <__TMC_END__>
    123b:	75 2b                	jne    1268 <__do_global_dtors_aux+0x38>
    123d:	55                   	push   %rbp
    123e:	48 83 3d 8a 2d 00 00 	cmpq   $0x0,0x2d8a(%rip)        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1245:	00 
    1246:	48 89 e5             	mov    %rsp,%rbp
    1249:	74 0c                	je     1257 <__do_global_dtors_aux+0x27>
    124b:	48 8b 3d b6 2d 00 00 	mov    0x2db6(%rip),%rdi        # 4008 <__dso_handle>
    1252:	e8 49 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    1257:	e8 64 ff ff ff       	call   11c0 <deregister_tm_clones>
    125c:	c6 05 ad 2d 00 00 01 	movb   $0x1,0x2dad(%rip)        # 4010 <__TMC_END__>
    1263:	5d                   	pop    %rbp
    1264:	c3                   	ret    
    1265:	0f 1f 00             	nopl   (%rax)
    1268:	c3                   	ret    
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <frame_dummy>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	e9 77 ff ff ff       	jmp    11f0 <register_tm_clones>
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <_Z13extend_matrixP10MatrixListii.part.0>:
    1280:	89 f0                	mov    %esi,%eax
    1282:	41 57                	push   %r15
    1284:	0f af c2             	imul   %edx,%eax
    1287:	41 56                	push   %r14
    1289:	41 55                	push   %r13
    128b:	41 54                	push   %r12
    128d:	41 89 f4             	mov    %esi,%r12d
    1290:	be 01 00 00 00       	mov    $0x1,%esi
    1295:	55                   	push   %rbp
    1296:	48 89 fd             	mov    %rdi,%rbp
    1299:	48 63 f8             	movslq %eax,%rdi
    129c:	53                   	push   %rbx
    129d:	48 c1 e7 02          	shl    $0x2,%rdi
    12a1:	89 d3                	mov    %edx,%ebx
    12a3:	48 83 ec 18          	sub    $0x18,%rsp
    12a7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    12ab:	e8 10 fe ff ff       	call   10c0 <calloc@plt>
    12b0:	48 85 c0             	test   %rax,%rax
    12b3:	0f 84 92 00 00 00    	je     134b <_Z13extend_matrixP10MatrixListii.part.0+0xcb>
    12b9:	44 8b 55 08          	mov    0x8(%rbp),%r10d
    12bd:	44 8b 5d 0c          	mov    0xc(%rbp),%r11d
    12c1:	49 89 c5             	mov    %rax,%r13
    12c4:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
    12c8:	45 39 d4             	cmp    %r10d,%r12d
    12cb:	45 89 de             	mov    %r11d,%r14d
    12ce:	45 0f 4e d4          	cmovle %r12d,%r10d
    12d2:	44 39 db             	cmp    %r11d,%ebx
    12d5:	44 0f 4e f3          	cmovle %ebx,%r14d
    12d9:	45 85 d2             	test   %r10d,%r10d
    12dc:	7e 53                	jle    1331 <_Z13extend_matrixP10MatrixListii.part.0+0xb1>
    12de:	45 31 c9             	xor    %r9d,%r9d
    12e1:	45 31 c0             	xor    %r8d,%r8d
    12e4:	31 ff                	xor    %edi,%edi
    12e6:	49 63 f6             	movslq %r14d,%rsi
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12f0:	45 85 f6             	test   %r14d,%r14d
    12f3:	7e 2e                	jle    1323 <_Z13extend_matrixP10MatrixListii.part.0+0xa3>
    12f5:	49 63 c0             	movslq %r8d,%rax
    12f8:	89 7c 24 08          	mov    %edi,0x8(%rsp)
    12fc:	49 8d 0c 87          	lea    (%r15,%rax,4),%rcx
    1300:	49 63 c1             	movslq %r9d,%rax
    1303:	49 8d 54 85 00       	lea    0x0(%r13,%rax,4),%rdx
    1308:	31 c0                	xor    %eax,%eax
    130a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1310:	8b 3c 81             	mov    (%rcx,%rax,4),%edi
    1313:	89 3c 82             	mov    %edi,(%rdx,%rax,4)
    1316:	48 83 c0 01          	add    $0x1,%rax
    131a:	48 39 c6             	cmp    %rax,%rsi
    131d:	75 f1                	jne    1310 <_Z13extend_matrixP10MatrixListii.part.0+0x90>
    131f:	8b 7c 24 08          	mov    0x8(%rsp),%edi
    1323:	83 c7 01             	add    $0x1,%edi
    1326:	45 01 d8             	add    %r11d,%r8d
    1329:	41 01 d9             	add    %ebx,%r9d
    132c:	41 39 fa             	cmp    %edi,%r10d
    132f:	75 bf                	jne    12f0 <_Z13extend_matrixP10MatrixListii.part.0+0x70>
    1331:	4c 89 ff             	mov    %r15,%rdi
    1334:	e8 b7 fd ff ff       	call   10f0 <free@plt>
    1339:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    133d:	4c 89 6d 00          	mov    %r13,0x0(%rbp)
    1341:	44 89 65 08          	mov    %r12d,0x8(%rbp)
    1345:	89 5d 0c             	mov    %ebx,0xc(%rbp)
    1348:	89 45 10             	mov    %eax,0x10(%rbp)
    134b:	48 83 c4 18          	add    $0x18,%rsp
    134f:	5b                   	pop    %rbx
    1350:	5d                   	pop    %rbp
    1351:	41 5c                	pop    %r12
    1353:	41 5d                	pop    %r13
    1355:	41 5e                	pop    %r14
    1357:	41 5f                	pop    %r15
    1359:	c3                   	ret    
    135a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001360 <_Z10new_matrixii>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	41 54                	push   %r12
    1366:	55                   	push   %rbp
    1367:	53                   	push   %rbx
    1368:	85 ff                	test   %edi,%edi
    136a:	7e 5b                	jle    13c7 <_Z10new_matrixii+0x67>
    136c:	89 f5                	mov    %esi,%ebp
    136e:	85 f6                	test   %esi,%esi
    1370:	7e 55                	jle    13c7 <_Z10new_matrixii+0x67>
    1372:	89 fb                	mov    %edi,%ebx
    1374:	bf 18 00 00 00       	mov    $0x18,%edi
    1379:	e8 82 fd ff ff       	call   1100 <malloc@plt>
    137e:	49 89 c4             	mov    %rax,%r12
    1381:	48 85 c0             	test   %rax,%rax
    1384:	74 41                	je     13c7 <_Z10new_matrixii+0x67>
    1386:	89 58 08             	mov    %ebx,0x8(%rax)
    1389:	0f af dd             	imul   %ebp,%ebx
    138c:	be 01 00 00 00       	mov    $0x1,%esi
    1391:	89 68 0c             	mov    %ebp,0xc(%rax)
    1394:	c7 40 14 02 00 00 00 	movl   $0x2,0x14(%rax)
    139b:	89 58 10             	mov    %ebx,0x10(%rax)
    139e:	48 63 db             	movslq %ebx,%rbx
    13a1:	48 8d 3c 9d 00 00 00 	lea    0x0(,%rbx,4),%rdi
    13a8:	00 
    13a9:	e8 12 fd ff ff       	call   10c0 <calloc@plt>
    13ae:	49 89 04 24          	mov    %rax,(%r12)
    13b2:	48 85 c0             	test   %rax,%rax
    13b5:	74 08                	je     13bf <_Z10new_matrixii+0x5f>
    13b7:	4c 89 e0             	mov    %r12,%rax
    13ba:	5b                   	pop    %rbx
    13bb:	5d                   	pop    %rbp
    13bc:	41 5c                	pop    %r12
    13be:	c3                   	ret    
    13bf:	4c 89 e7             	mov    %r12,%rdi
    13c2:	e8 29 fd ff ff       	call   10f0 <free@plt>
    13c7:	45 31 e4             	xor    %r12d,%r12d
    13ca:	5b                   	pop    %rbx
    13cb:	5d                   	pop    %rbp
    13cc:	4c 89 e0             	mov    %r12,%rax
    13cf:	41 5c                	pop    %r12
    13d1:	c3                   	ret    
    13d2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13d9:	00 00 00 00 
    13dd:	0f 1f 00             	nopl   (%rax)

00000000000013e0 <_Z13delete_matrixP10MatrixList>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	48 85 ff             	test   %rdi,%rdi
    13e7:	74 17                	je     1400 <_Z13delete_matrixP10MatrixList+0x20>
    13e9:	55                   	push   %rbp
    13ea:	48 89 fd             	mov    %rdi,%rbp
    13ed:	48 8b 3f             	mov    (%rdi),%rdi
    13f0:	e8 fb fc ff ff       	call   10f0 <free@plt>
    13f5:	48 89 ef             	mov    %rbp,%rdi
    13f8:	5d                   	pop    %rbp
    13f9:	e9 f2 fc ff ff       	jmp    10f0 <free@plt>
    13fe:	66 90                	xchg   %ax,%ax
    1400:	c3                   	ret    
    1401:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1408:	00 00 00 00 
    140c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001410 <_Z13extend_matrixP10MatrixListii>:
    1410:	f3 0f 1e fa          	endbr64 
    1414:	85 f6                	test   %esi,%esi
    1416:	0f 9e c0             	setle  %al
    1419:	85 d2                	test   %edx,%edx
    141b:	0f 9e c1             	setle  %cl
    141e:	08 c8                	or     %cl,%al
    1420:	75 0e                	jne    1430 <_Z13extend_matrixP10MatrixListii+0x20>
    1422:	48 85 ff             	test   %rdi,%rdi
    1425:	74 09                	je     1430 <_Z13extend_matrixP10MatrixListii+0x20>
    1427:	e9 54 fe ff ff       	jmp    1280 <_Z13extend_matrixP10MatrixListii.part.0>
    142c:	0f 1f 40 00          	nopl   0x0(%rax)
    1430:	c3                   	ret    
    1431:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1438:	00 00 00 00 
    143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001440 <_Z10set_matrixP10MatrixListiii>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	89 f0                	mov    %esi,%eax
    1446:	09 d0                	or     %edx,%eax
    1448:	78 1e                	js     1468 <_Z10set_matrixP10MatrixListiii+0x28>
    144a:	48 85 ff             	test   %rdi,%rdi
    144d:	74 19                	je     1468 <_Z10set_matrixP10MatrixListiii+0x28>
    144f:	39 77 08             	cmp    %esi,0x8(%rdi)
    1452:	7e 14                	jle    1468 <_Z10set_matrixP10MatrixListiii+0x28>
    1454:	8b 47 0c             	mov    0xc(%rdi),%eax
    1457:	39 d0                	cmp    %edx,%eax
    1459:	7e 0d                	jle    1468 <_Z10set_matrixP10MatrixListiii+0x28>
    145b:	0f af c6             	imul   %esi,%eax
    145e:	01 d0                	add    %edx,%eax
    1460:	48 8b 17             	mov    (%rdi),%rdx
    1463:	48 98                	cltq   
    1465:	89 0c 82             	mov    %ecx,(%rdx,%rax,4)
    1468:	c3                   	ret    
    1469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001470 <_Z10get_matrixP10MatrixListii>:
    1470:	f3 0f 1e fa          	endbr64 
    1474:	89 f0                	mov    %esi,%eax
    1476:	09 d0                	or     %edx,%eax
    1478:	78 26                	js     14a0 <_Z10get_matrixP10MatrixListii+0x30>
    147a:	48 85 ff             	test   %rdi,%rdi
    147d:	74 21                	je     14a0 <_Z10get_matrixP10MatrixListii+0x30>
    147f:	39 77 08             	cmp    %esi,0x8(%rdi)
    1482:	7e 1c                	jle    14a0 <_Z10get_matrixP10MatrixListii+0x30>
    1484:	8b 47 0c             	mov    0xc(%rdi),%eax
    1487:	39 d0                	cmp    %edx,%eax
    1489:	7e 15                	jle    14a0 <_Z10get_matrixP10MatrixListii+0x30>
    148b:	0f af c6             	imul   %esi,%eax
    148e:	01 d0                	add    %edx,%eax
    1490:	48 8b 17             	mov    (%rdi),%rdx
    1493:	48 98                	cltq   
    1495:	8b 04 82             	mov    (%rdx,%rax,4),%eax
    1498:	c3                   	ret    
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    14a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    14a5:	c3                   	ret    
    14a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    14ad:	00 00 00 

00000000000014b0 <_Z12print_matrixP10MatrixList>:
    14b0:	f3 0f 1e fa          	endbr64 
    14b4:	48 85 ff             	test   %rdi,%rdi
    14b7:	0f 84 de 00 00 00    	je     159b <_Z12print_matrixP10MatrixList+0xeb>
    14bd:	41 57                	push   %r15
    14bf:	41 56                	push   %r14
    14c1:	41 55                	push   %r13
    14c3:	49 89 fd             	mov    %rdi,%r13
    14c6:	41 54                	push   %r12
    14c8:	55                   	push   %rbp
    14c9:	53                   	push   %rbx
    14ca:	48 83 ec 08          	sub    $0x8,%rsp
    14ce:	8b 47 08             	mov    0x8(%rdi),%eax
    14d1:	85 c0                	test   %eax,%eax
    14d3:	0f 8e ac 00 00 00    	jle    1585 <_Z12print_matrixP10MatrixList+0xd5>
    14d9:	31 db                	xor    %ebx,%ebx
    14db:	4c 8d 35 22 0b 00 00 	lea    0xb22(%rip),%r14        # 2004 <_IO_stdin_used+0x4>
    14e2:	48 8d 2d 22 0b 00 00 	lea    0xb22(%rip),%rbp        # 200b <_IO_stdin_used+0xb>
    14e9:	4c 8d 25 1f 0b 00 00 	lea    0xb1f(%rip),%r12        # 200f <_IO_stdin_used+0xf>
    14f0:	4c 89 f6             	mov    %r14,%rsi
    14f3:	bf 01 00 00 00       	mov    $0x1,%edi
    14f8:	31 c0                	xor    %eax,%eax
    14fa:	45 31 ff             	xor    %r15d,%r15d
    14fd:	e8 ae fb ff ff       	call   10b0 <__printf_chk@plt>
    1502:	41 8b 45 0c          	mov    0xc(%r13),%eax
    1506:	85 c0                	test   %eax,%eax
    1508:	7f 0f                	jg     1519 <_Z12print_matrixP10MatrixList+0x69>
    150a:	eb 59                	jmp    1565 <_Z12print_matrixP10MatrixList+0xb5>
    150c:	0f 1f 40 00          	nopl   0x0(%rax)
    1510:	41 83 c7 01          	add    $0x1,%r15d
    1514:	44 39 f8             	cmp    %r15d,%eax
    1517:	7e 4c                	jle    1565 <_Z12print_matrixP10MatrixList+0xb5>
    1519:	41 3b 5d 08          	cmp    0x8(%r13),%ebx
    151d:	7d 75                	jge    1594 <_Z12print_matrixP10MatrixList+0xe4>
    151f:	0f af c3             	imul   %ebx,%eax
    1522:	49 8b 55 00          	mov    0x0(%r13),%rdx
    1526:	44 01 f8             	add    %r15d,%eax
    1529:	48 98                	cltq   
    152b:	8b 14 82             	mov    (%rdx,%rax,4),%edx
    152e:	48 89 ee             	mov    %rbp,%rsi
    1531:	bf 01 00 00 00       	mov    $0x1,%edi
    1536:	31 c0                	xor    %eax,%eax
    1538:	e8 73 fb ff ff       	call   10b0 <__printf_chk@plt>
    153d:	41 8b 45 0c          	mov    0xc(%r13),%eax
    1541:	8d 50 ff             	lea    -0x1(%rax),%edx
    1544:	44 39 fa             	cmp    %r15d,%edx
    1547:	7e c7                	jle    1510 <_Z12print_matrixP10MatrixList+0x60>
    1549:	4c 89 e6             	mov    %r12,%rsi
    154c:	bf 01 00 00 00       	mov    $0x1,%edi
    1551:	31 c0                	xor    %eax,%eax
    1553:	41 83 c7 01          	add    $0x1,%r15d
    1557:	e8 54 fb ff ff       	call   10b0 <__printf_chk@plt>
    155c:	41 8b 45 0c          	mov    0xc(%r13),%eax
    1560:	44 39 f8             	cmp    %r15d,%eax
    1563:	7f b4                	jg     1519 <_Z12print_matrixP10MatrixList+0x69>
    1565:	48 8d 35 9c 0a 00 00 	lea    0xa9c(%rip),%rsi        # 2008 <_IO_stdin_used+0x8>
    156c:	bf 01 00 00 00       	mov    $0x1,%edi
    1571:	31 c0                	xor    %eax,%eax
    1573:	83 c3 01             	add    $0x1,%ebx
    1576:	e8 35 fb ff ff       	call   10b0 <__printf_chk@plt>
    157b:	41 39 5d 08          	cmp    %ebx,0x8(%r13)
    157f:	0f 8f 6b ff ff ff    	jg     14f0 <_Z12print_matrixP10MatrixList+0x40>
    1585:	48 83 c4 08          	add    $0x8,%rsp
    1589:	5b                   	pop    %rbx
    158a:	5d                   	pop    %rbp
    158b:	41 5c                	pop    %r12
    158d:	41 5d                	pop    %r13
    158f:	41 5e                	pop    %r14
    1591:	41 5f                	pop    %r15
    1593:	c3                   	ret    
    1594:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1599:	eb 93                	jmp    152e <_Z12print_matrixP10MatrixList+0x7e>
    159b:	c3                   	ret    
    159c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000015a0 <_Z11fill_matrixP10MatrixListi>:
    15a0:	f3 0f 1e fa          	endbr64 
    15a4:	48 85 ff             	test   %rdi,%rdi
    15a7:	74 1b                	je     15c4 <_Z11fill_matrixP10MatrixListi+0x24>
    15a9:	8b 47 10             	mov    0x10(%rdi),%eax
    15ac:	85 c0                	test   %eax,%eax
    15ae:	7e 14                	jle    15c4 <_Z11fill_matrixP10MatrixListi+0x24>
    15b0:	48 8b 17             	mov    (%rdi),%rdx
    15b3:	31 c0                	xor    %eax,%eax
    15b5:	0f 1f 00             	nopl   (%rax)
    15b8:	89 34 82             	mov    %esi,(%rdx,%rax,4)
    15bb:	48 83 c0 01          	add    $0x1,%rax
    15bf:	39 47 10             	cmp    %eax,0x10(%rdi)
    15c2:	7f f4                	jg     15b8 <_Z11fill_matrixP10MatrixListi+0x18>
    15c4:	c3                   	ret    
    15c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    15cc:	00 00 00 00 

00000000000015d0 <_Z7add_rowP10MatrixList>:
    15d0:	f3 0f 1e fa          	endbr64 
    15d4:	48 85 ff             	test   %rdi,%rdi
    15d7:	74 17                	je     15f0 <_Z7add_rowP10MatrixList+0x20>
    15d9:	8b 47 08             	mov    0x8(%rdi),%eax
    15dc:	8b 57 0c             	mov    0xc(%rdi),%edx
    15df:	8d 70 01             	lea    0x1(%rax),%esi
    15e2:	85 f6                	test   %esi,%esi
    15e4:	7e 0a                	jle    15f0 <_Z7add_rowP10MatrixList+0x20>
    15e6:	85 d2                	test   %edx,%edx
    15e8:	7e 06                	jle    15f0 <_Z7add_rowP10MatrixList+0x20>
    15ea:	e9 91 fc ff ff       	jmp    1280 <_Z13extend_matrixP10MatrixListii.part.0>
    15ef:	90                   	nop
    15f0:	c3                   	ret    
    15f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    15f8:	00 00 00 00 
    15fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001600 <_Z7add_colP10MatrixList>:
    1600:	f3 0f 1e fa          	endbr64 
    1604:	48 85 ff             	test   %rdi,%rdi
    1607:	74 17                	je     1620 <_Z7add_colP10MatrixList+0x20>
    1609:	8b 47 0c             	mov    0xc(%rdi),%eax
    160c:	8b 77 08             	mov    0x8(%rdi),%esi
    160f:	8d 50 01             	lea    0x1(%rax),%edx
    1612:	85 f6                	test   %esi,%esi
    1614:	7e 0a                	jle    1620 <_Z7add_colP10MatrixList+0x20>
    1616:	85 d2                	test   %edx,%edx
    1618:	7e 06                	jle    1620 <_Z7add_colP10MatrixList+0x20>
    161a:	e9 61 fc ff ff       	jmp    1280 <_Z13extend_matrixP10MatrixListii.part.0>
    161f:	90                   	nop
    1620:	c3                   	ret    
    1621:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1628:	00 00 00 00 
    162c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001630 <_Z13get_row_arrayP10MatrixListi>:
    1630:	f3 0f 1e fa          	endbr64 
    1634:	48 85 ff             	test   %rdi,%rdi
    1637:	74 77                	je     16b0 <_Z13get_row_arrayP10MatrixListi+0x80>
    1639:	41 55                	push   %r13
    163b:	41 54                	push   %r12
    163d:	41 89 f4             	mov    %esi,%r12d
    1640:	55                   	push   %rbp
    1641:	53                   	push   %rbx
    1642:	48 83 ec 08          	sub    $0x8,%rsp
    1646:	85 f6                	test   %esi,%esi
    1648:	78 56                	js     16a0 <_Z13get_row_arrayP10MatrixListi+0x70>
    164a:	48 89 fb             	mov    %rdi,%rbx
    164d:	39 77 08             	cmp    %esi,0x8(%rdi)
    1650:	7e 4e                	jle    16a0 <_Z13get_row_arrayP10MatrixListi+0x70>
    1652:	48 63 6f 0c          	movslq 0xc(%rdi),%rbp
    1656:	48 8d 3c ad 00 00 00 	lea    0x0(,%rbp,4),%rdi
    165d:	00 
    165e:	49 89 ed             	mov    %rbp,%r13
    1661:	e8 9a fa ff ff       	call   1100 <malloc@plt>
    1666:	48 85 c0             	test   %rax,%rax
    1669:	74 35                	je     16a0 <_Z13get_row_arrayP10MatrixListi+0x70>
    166b:	85 ed                	test   %ebp,%ebp
    166d:	7e 20                	jle    168f <_Z13get_row_arrayP10MatrixListi+0x5f>
    166f:	45 0f af ec          	imul   %r12d,%r13d
    1673:	48 8b 13             	mov    (%rbx),%rdx
    1676:	4d 63 ed             	movslq %r13d,%r13
    1679:	4a 8d 34 aa          	lea    (%rdx,%r13,4),%rsi
    167d:	31 d2                	xor    %edx,%edx
    167f:	90                   	nop
    1680:	8b 0c 96             	mov    (%rsi,%rdx,4),%ecx
    1683:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
    1686:	48 83 c2 01          	add    $0x1,%rdx
    168a:	48 39 d5             	cmp    %rdx,%rbp
    168d:	75 f1                	jne    1680 <_Z13get_row_arrayP10MatrixListi+0x50>
    168f:	48 83 c4 08          	add    $0x8,%rsp
    1693:	5b                   	pop    %rbx
    1694:	5d                   	pop    %rbp
    1695:	41 5c                	pop    %r12
    1697:	41 5d                	pop    %r13
    1699:	c3                   	ret    
    169a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    16a0:	48 83 c4 08          	add    $0x8,%rsp
    16a4:	31 c0                	xor    %eax,%eax
    16a6:	5b                   	pop    %rbx
    16a7:	5d                   	pop    %rbp
    16a8:	41 5c                	pop    %r12
    16aa:	41 5d                	pop    %r13
    16ac:	c3                   	ret    
    16ad:	0f 1f 00             	nopl   (%rax)
    16b0:	31 c0                	xor    %eax,%eax
    16b2:	c3                   	ret    
    16b3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    16ba:	00 00 00 00 
    16be:	66 90                	xchg   %ax,%ax

00000000000016c0 <_Z13get_col_arrayP10MatrixListi>:
    16c0:	f3 0f 1e fa          	endbr64 
    16c4:	48 85 ff             	test   %rdi,%rdi
    16c7:	0f 84 83 00 00 00    	je     1750 <_Z13get_col_arrayP10MatrixListi+0x90>
    16cd:	41 55                	push   %r13
    16cf:	41 54                	push   %r12
    16d1:	55                   	push   %rbp
    16d2:	48 63 ee             	movslq %esi,%rbp
    16d5:	53                   	push   %rbx
    16d6:	48 83 ec 08          	sub    $0x8,%rsp
    16da:	85 ed                	test   %ebp,%ebp
    16dc:	78 62                	js     1740 <_Z13get_col_arrayP10MatrixListi+0x80>
    16de:	8b 5f 0c             	mov    0xc(%rdi),%ebx
    16e1:	49 89 fc             	mov    %rdi,%r12
    16e4:	39 eb                	cmp    %ebp,%ebx
    16e6:	7e 58                	jle    1740 <_Z13get_col_arrayP10MatrixListi+0x80>
    16e8:	48 63 7f 08          	movslq 0x8(%rdi),%rdi
    16ec:	49 89 fd             	mov    %rdi,%r13
    16ef:	48 c1 e7 02          	shl    $0x2,%rdi
    16f3:	e8 08 fa ff ff       	call   1100 <malloc@plt>
    16f8:	48 85 c0             	test   %rax,%rax
    16fb:	74 43                	je     1740 <_Z13get_col_arrayP10MatrixListi+0x80>
    16fd:	45 85 ed             	test   %r13d,%r13d
    1700:	7e 2f                	jle    1731 <_Z13get_col_arrayP10MatrixListi+0x71>
    1702:	49 8b 14 24          	mov    (%r12),%rdx
    1706:	4c 63 c3             	movslq %ebx,%r8
    1709:	45 89 ed             	mov    %r13d,%r13d
    170c:	49 c1 e0 02          	shl    $0x2,%r8
    1710:	4a 8d 3c a8          	lea    (%rax,%r13,4),%rdi
    1714:	48 8d 0c aa          	lea    (%rdx,%rbp,4),%rcx
    1718:	48 89 c2             	mov    %rax,%rdx
    171b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1720:	8b 31                	mov    (%rcx),%esi
    1722:	48 83 c2 04          	add    $0x4,%rdx
    1726:	4c 01 c1             	add    %r8,%rcx
    1729:	89 72 fc             	mov    %esi,-0x4(%rdx)
    172c:	48 39 fa             	cmp    %rdi,%rdx
    172f:	75 ef                	jne    1720 <_Z13get_col_arrayP10MatrixListi+0x60>
    1731:	48 83 c4 08          	add    $0x8,%rsp
    1735:	5b                   	pop    %rbx
    1736:	5d                   	pop    %rbp
    1737:	41 5c                	pop    %r12
    1739:	41 5d                	pop    %r13
    173b:	c3                   	ret    
    173c:	0f 1f 40 00          	nopl   0x0(%rax)
    1740:	48 83 c4 08          	add    $0x8,%rsp
    1744:	31 c0                	xor    %eax,%eax
    1746:	5b                   	pop    %rbx
    1747:	5d                   	pop    %rbp
    1748:	41 5c                	pop    %r12
    174a:	41 5d                	pop    %r13
    174c:	c3                   	ret    
    174d:	0f 1f 00             	nopl   (%rax)
    1750:	31 c0                	xor    %eax,%eax
    1752:	c3                   	ret    
    1753:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    175a:	00 00 00 
    175d:	0f 1f 00             	nopl   (%rax)

0000000000001760 <_Z20init_ackermann_tableii>:
    1760:	f3 0f 1e fa          	endbr64 
    1764:	55                   	push   %rbp
    1765:	89 f5                	mov    %esi,%ebp
    1767:	53                   	push   %rbx
    1768:	89 fb                	mov    %edi,%ebx
    176a:	48 83 ec 08          	sub    $0x8,%rsp
    176e:	48 8b 3d a3 28 00 00 	mov    0x28a3(%rip),%rdi        # 4018 <_ZL5table>
    1775:	48 85 ff             	test   %rdi,%rdi
    1778:	74 05                	je     177f <_Z20init_ackermann_tableii+0x1f>
    177a:	e8 61 fc ff ff       	call   13e0 <_Z13delete_matrixP10MatrixList>
    177f:	8d 7b 01             	lea    0x1(%rbx),%edi
    1782:	8d 75 01             	lea    0x1(%rbp),%esi
    1785:	e8 d6 fb ff ff       	call   1360 <_Z10new_matrixii>
    178a:	48 89 c7             	mov    %rax,%rdi
    178d:	48 89 05 84 28 00 00 	mov    %rax,0x2884(%rip)        # 4018 <_ZL5table>
    1794:	31 c0                	xor    %eax,%eax
    1796:	48 85 ff             	test   %rdi,%rdi
    1799:	74 0f                	je     17aa <_Z20init_ackermann_tableii+0x4a>
    179b:	be ff ff ff ff       	mov    $0xffffffff,%esi
    17a0:	e8 fb fd ff ff       	call   15a0 <_Z11fill_matrixP10MatrixListi>
    17a5:	b8 01 00 00 00       	mov    $0x1,%eax
    17aa:	48 83 c4 08          	add    $0x8,%rsp
    17ae:	5b                   	pop    %rbx
    17af:	5d                   	pop    %rbp
    17b0:	c3                   	ret    
    17b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    17b8:	00 00 00 00 
    17bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017c0 <_Z23cleanup_ackermann_tablev>:
    17c0:	f3 0f 1e fa          	endbr64 
    17c4:	48 8b 3d 4d 28 00 00 	mov    0x284d(%rip),%rdi        # 4018 <_ZL5table>
    17cb:	48 85 ff             	test   %rdi,%rdi
    17ce:	74 20                	je     17f0 <_Z23cleanup_ackermann_tablev+0x30>
    17d0:	48 83 ec 08          	sub    $0x8,%rsp
    17d4:	e8 07 fc ff ff       	call   13e0 <_Z13delete_matrixP10MatrixList>
    17d9:	48 c7 05 34 28 00 00 	movq   $0x0,0x2834(%rip)        # 4018 <_ZL5table>
    17e0:	00 00 00 00 
    17e4:	48 83 c4 08          	add    $0x8,%rsp
    17e8:	c3                   	ret    
    17e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17f0:	c3                   	ret    
    17f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    17f8:	00 00 00 00 
    17fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001800 <_Z17is_in_table_rangeii>:
    1800:	f3 0f 1e fa          	endbr64 
    1804:	48 8b 05 0d 28 00 00 	mov    0x280d(%rip),%rax        # 4018 <_ZL5table>
    180b:	45 31 c0             	xor    %r8d,%r8d
    180e:	48 85 c0             	test   %rax,%rax
    1811:	74 12                	je     1825 <_Z17is_in_table_rangeii+0x25>
    1813:	89 fa                	mov    %edi,%edx
    1815:	09 f2                	or     %esi,%edx
    1817:	78 0c                	js     1825 <_Z17is_in_table_rangeii+0x25>
    1819:	39 78 08             	cmp    %edi,0x8(%rax)
    181c:	7e 07                	jle    1825 <_Z17is_in_table_rangeii+0x25>
    181e:	39 70 0c             	cmp    %esi,0xc(%rax)
    1821:	41 0f 9f c0          	setg   %r8b
    1825:	44 89 c0             	mov    %r8d,%eax
    1828:	c3                   	ret    
    1829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001830 <_Z14get_from_tableii>:
    1830:	f3 0f 1e fa          	endbr64 
    1834:	41 89 f8             	mov    %edi,%r8d
    1837:	48 8b 3d da 27 00 00 	mov    0x27da(%rip),%rdi        # 4018 <_ZL5table>
    183e:	89 f2                	mov    %esi,%edx
    1840:	48 85 ff             	test   %rdi,%rdi
    1843:	74 0d                	je     1852 <_Z14get_from_tableii+0x22>
    1845:	44 89 c0             	mov    %r8d,%eax
    1848:	09 f0                	or     %esi,%eax
    184a:	78 06                	js     1852 <_Z14get_from_tableii+0x22>
    184c:	44 3b 47 08          	cmp    0x8(%rdi),%r8d
    1850:	7c 0e                	jl     1860 <_Z14get_from_tableii+0x30>
    1852:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1857:	c3                   	ret    
    1858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    185f:	00 
    1860:	3b 77 0c             	cmp    0xc(%rdi),%esi
    1863:	7d ed                	jge    1852 <_Z14get_from_tableii+0x22>
    1865:	44 89 c6             	mov    %r8d,%esi
    1868:	e9 03 fc ff ff       	jmp    1470 <_Z10get_matrixP10MatrixListii>
    186d:	0f 1f 00             	nopl   (%rax)

0000000000001870 <_Z14store_to_tableiii>:
    1870:	f3 0f 1e fa          	endbr64 
    1874:	41 57                	push   %r15
    1876:	41 56                	push   %r14
    1878:	41 55                	push   %r13
    187a:	41 89 fd             	mov    %edi,%r13d
    187d:	41 54                	push   %r12
    187f:	55                   	push   %rbp
    1880:	53                   	push   %rbx
    1881:	48 83 ec 18          	sub    $0x18,%rsp
    1885:	48 8b 3d 8c 27 00 00 	mov    0x278c(%rip),%rdi        # 4018 <_ZL5table>
    188c:	89 54 24 0c          	mov    %edx,0xc(%rsp)
    1890:	48 85 ff             	test   %rdi,%rdi
    1893:	0f 84 a6 00 00 00    	je     193f <_Z14store_to_tableiii+0xcf>
    1899:	44 8b 67 08          	mov    0x8(%rdi),%r12d
    189d:	8b 6f 0c             	mov    0xc(%rdi),%ebp
    18a0:	41 89 f6             	mov    %esi,%r14d
    18a3:	45 39 ec             	cmp    %r13d,%r12d
    18a6:	0f 8f a2 00 00 00    	jg     194e <_Z14store_to_tableiii+0xde>
    18ac:	45 8d 65 0a          	lea    0xa(%r13),%r12d
    18b0:	39 f5                	cmp    %esi,%ebp
    18b2:	0f 8e c4 00 00 00    	jle    197c <_Z14store_to_tableiii+0x10c>
    18b8:	89 ea                	mov    %ebp,%edx
    18ba:	44 89 e6             	mov    %r12d,%esi
    18bd:	31 db                	xor    %ebx,%ebx
    18bf:	e8 4c fb ff ff       	call   1410 <_Z13extend_matrixP10MatrixListii>
    18c4:	45 85 e4             	test   %r12d,%r12d
    18c7:	7e 5c                	jle    1925 <_Z14store_to_tableiii+0xb5>
    18c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18d0:	45 31 ff             	xor    %r15d,%r15d
    18d3:	85 ed                	test   %ebp,%ebp
    18d5:	7f 12                	jg     18e9 <_Z14store_to_tableiii+0x79>
    18d7:	eb 44                	jmp    191d <_Z14store_to_tableiii+0xad>
    18d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18e0:	41 83 c7 01          	add    $0x1,%r15d
    18e4:	44 39 fd             	cmp    %r15d,%ebp
    18e7:	74 34                	je     191d <_Z14store_to_tableiii+0xad>
    18e9:	48 8b 3d 28 27 00 00 	mov    0x2728(%rip),%rdi        # 4018 <_ZL5table>
    18f0:	44 89 fa             	mov    %r15d,%edx
    18f3:	89 de                	mov    %ebx,%esi
    18f5:	e8 76 fb ff ff       	call   1470 <_Z10get_matrixP10MatrixListii>
    18fa:	85 c0                	test   %eax,%eax
    18fc:	75 e2                	jne    18e0 <_Z14store_to_tableiii+0x70>
    18fe:	48 8b 3d 13 27 00 00 	mov    0x2713(%rip),%rdi        # 4018 <_ZL5table>
    1905:	44 89 fa             	mov    %r15d,%edx
    1908:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    190d:	89 de                	mov    %ebx,%esi
    190f:	41 83 c7 01          	add    $0x1,%r15d
    1913:	e8 28 fb ff ff       	call   1440 <_Z10set_matrixP10MatrixListiii>
    1918:	44 39 fd             	cmp    %r15d,%ebp
    191b:	75 cc                	jne    18e9 <_Z14store_to_tableiii+0x79>
    191d:	83 c3 01             	add    $0x1,%ebx
    1920:	44 39 e3             	cmp    %r12d,%ebx
    1923:	75 ab                	jne    18d0 <_Z14store_to_tableiii+0x60>
    1925:	48 8b 3d ec 26 00 00 	mov    0x26ec(%rip),%rdi        # 4018 <_ZL5table>
    192c:	48 85 ff             	test   %rdi,%rdi
    192f:	74 0e                	je     193f <_Z14store_to_tableiii+0xcf>
    1931:	44 89 e8             	mov    %r13d,%eax
    1934:	44 09 f0             	or     %r14d,%eax
    1937:	78 06                	js     193f <_Z14store_to_tableiii+0xcf>
    1939:	44 3b 6f 08          	cmp    0x8(%rdi),%r13d
    193d:	7c 1a                	jl     1959 <_Z14store_to_tableiii+0xe9>
    193f:	48 83 c4 18          	add    $0x18,%rsp
    1943:	5b                   	pop    %rbx
    1944:	5d                   	pop    %rbp
    1945:	41 5c                	pop    %r12
    1947:	41 5d                	pop    %r13
    1949:	41 5e                	pop    %r14
    194b:	41 5f                	pop    %r15
    194d:	c3                   	ret    
    194e:	39 f5                	cmp    %esi,%ebp
    1950:	7e 2a                	jle    197c <_Z14store_to_tableiii+0x10c>
    1952:	44 89 e8             	mov    %r13d,%eax
    1955:	09 f0                	or     %esi,%eax
    1957:	78 e6                	js     193f <_Z14store_to_tableiii+0xcf>
    1959:	44 3b 77 0c          	cmp    0xc(%rdi),%r14d
    195d:	7d e0                	jge    193f <_Z14store_to_tableiii+0xcf>
    195f:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    1963:	48 83 c4 18          	add    $0x18,%rsp
    1967:	44 89 f2             	mov    %r14d,%edx
    196a:	44 89 ee             	mov    %r13d,%esi
    196d:	5b                   	pop    %rbx
    196e:	5d                   	pop    %rbp
    196f:	41 5c                	pop    %r12
    1971:	41 5d                	pop    %r13
    1973:	41 5e                	pop    %r14
    1975:	41 5f                	pop    %r15
    1977:	e9 c4 fa ff ff       	jmp    1440 <_Z10set_matrixP10MatrixListiii>
    197c:	41 8d ae e8 03 00 00 	lea    0x3e8(%r14),%ebp
    1983:	e9 30 ff ff ff       	jmp    18b8 <_Z14store_to_tableiii+0x48>
    1988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    198f:	00 

0000000000001990 <_Z27ackermann_function_optimizeii>:
    1990:	f3 0f 1e fa          	endbr64 
    1994:	89 f8                	mov    %edi,%eax
    1996:	41 55                	push   %r13
    1998:	09 f0                	or     %esi,%eax
    199a:	41 54                	push   %r12
    199c:	55                   	push   %rbp
    199d:	0f 88 8d 00 00 00    	js     1a30 <_Z27ackermann_function_optimizeii+0xa0>
    19a3:	89 fd                	mov    %edi,%ebp
    19a5:	48 8b 3d 6c 26 00 00 	mov    0x266c(%rip),%rdi        # 4018 <_ZL5table>
    19ac:	41 89 f5             	mov    %esi,%r13d
    19af:	48 85 ff             	test   %rdi,%rdi
    19b2:	74 1b                	je     19cf <_Z27ackermann_function_optimizeii+0x3f>
    19b4:	3b 6f 08             	cmp    0x8(%rdi),%ebp
    19b7:	7d 16                	jge    19cf <_Z27ackermann_function_optimizeii+0x3f>
    19b9:	3b 77 0c             	cmp    0xc(%rdi),%esi
    19bc:	7d 11                	jge    19cf <_Z27ackermann_function_optimizeii+0x3f>
    19be:	89 f2                	mov    %esi,%edx
    19c0:	89 ee                	mov    %ebp,%esi
    19c2:	e8 a9 fa ff ff       	call   1470 <_Z10get_matrixP10MatrixListii>
    19c7:	41 89 c4             	mov    %eax,%r12d
    19ca:	83 f8 ff             	cmp    $0xffffffff,%eax
    19cd:	75 15                	jne    19e4 <_Z27ackermann_function_optimizeii+0x54>
    19cf:	45 8d 65 01          	lea    0x1(%r13),%r12d
    19d3:	85 ed                	test   %ebp,%ebp
    19d5:	75 19                	jne    19f0 <_Z27ackermann_function_optimizeii+0x60>
    19d7:	44 89 e2             	mov    %r12d,%edx
    19da:	44 89 ee             	mov    %r13d,%esi
    19dd:	89 ef                	mov    %ebp,%edi
    19df:	e8 8c fe ff ff       	call   1870 <_Z14store_to_tableiii>
    19e4:	44 89 e0             	mov    %r12d,%eax
    19e7:	5d                   	pop    %rbp
    19e8:	41 5c                	pop    %r12
    19ea:	41 5d                	pop    %r13
    19ec:	c3                   	ret    
    19ed:	0f 1f 00             	nopl   (%rax)
    19f0:	44 8d 65 ff          	lea    -0x1(%rbp),%r12d
    19f4:	45 85 ed             	test   %r13d,%r13d
    19f7:	75 17                	jne    1a10 <_Z27ackermann_function_optimizeii+0x80>
    19f9:	44 89 e7             	mov    %r12d,%edi
    19fc:	be 01 00 00 00       	mov    $0x1,%esi
    1a01:	e8 8a ff ff ff       	call   1990 <_Z27ackermann_function_optimizeii>
    1a06:	41 89 c4             	mov    %eax,%r12d
    1a09:	eb cc                	jmp    19d7 <_Z27ackermann_function_optimizeii+0x47>
    1a0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1a10:	41 8d 75 ff          	lea    -0x1(%r13),%esi
    1a14:	89 ef                	mov    %ebp,%edi
    1a16:	e8 75 ff ff ff       	call   1990 <_Z27ackermann_function_optimizeii>
    1a1b:	44 89 e7             	mov    %r12d,%edi
    1a1e:	89 c6                	mov    %eax,%esi
    1a20:	e8 6b ff ff ff       	call   1990 <_Z27ackermann_function_optimizeii>
    1a25:	41 89 c4             	mov    %eax,%r12d
    1a28:	eb ad                	jmp    19d7 <_Z27ackermann_function_optimizeii+0x47>
    1a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a30:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
    1a36:	eb ac                	jmp    19e4 <_Z27ackermann_function_optimizeii+0x54>
    1a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1a3f:	00 

0000000000001a40 <_Z27ackermann_function_originalii>:
    1a40:	f3 0f 1e fa          	endbr64 
    1a44:	89 f0                	mov    %esi,%eax
    1a46:	85 ff                	test   %edi,%edi
    1a48:	0f 84 e2 01 00 00    	je     1c30 <_Z27ackermann_function_originalii+0x1f0>
    1a4e:	41 57                	push   %r15
    1a50:	41 56                	push   %r14
    1a52:	41 55                	push   %r13
    1a54:	41 54                	push   %r12
    1a56:	55                   	push   %rbp
    1a57:	53                   	push   %rbx
    1a58:	89 fb                	mov    %edi,%ebx
    1a5a:	48 83 ec 18          	sub    $0x18,%rsp
    1a5e:	85 db                	test   %ebx,%ebx
    1a60:	89 dd                	mov    %ebx,%ebp
    1a62:	0f 9f c1             	setg   %cl
    1a65:	85 c0                	test   %eax,%eax
    1a67:	0f 94 c2             	sete   %dl
    1a6a:	83 eb 01             	sub    $0x1,%ebx
    1a6d:	83 e8 01             	sub    $0x1,%eax
    1a70:	84 d1                	test   %dl,%cl
    1a72:	74 1c                	je     1a90 <_Z27ackermann_function_originalii+0x50>
    1a74:	b8 01 00 00 00       	mov    $0x1,%eax
    1a79:	85 db                	test   %ebx,%ebx
    1a7b:	75 e1                	jne    1a5e <_Z27ackermann_function_originalii+0x1e>
    1a7d:	48 83 c4 18          	add    $0x18,%rsp
    1a81:	83 c0 01             	add    $0x1,%eax
    1a84:	5b                   	pop    %rbx
    1a85:	5d                   	pop    %rbp
    1a86:	41 5c                	pop    %r12
    1a88:	41 5d                	pop    %r13
    1a8a:	41 5e                	pop    %r14
    1a8c:	41 5f                	pop    %r15
    1a8e:	c3                   	ret    
    1a8f:	90                   	nop
    1a90:	85 ed                	test   %ebp,%ebp
    1a92:	41 89 ec             	mov    %ebp,%r12d
    1a95:	0f 9f c1             	setg   %cl
    1a98:	85 c0                	test   %eax,%eax
    1a9a:	0f 94 c2             	sete   %dl
    1a9d:	83 ed 01             	sub    $0x1,%ebp
    1aa0:	83 e8 01             	sub    $0x1,%eax
    1aa3:	84 d1                	test   %dl,%cl
    1aa5:	74 11                	je     1ab8 <_Z27ackermann_function_originalii+0x78>
    1aa7:	b8 01 00 00 00       	mov    $0x1,%eax
    1aac:	85 ed                	test   %ebp,%ebp
    1aae:	75 e0                	jne    1a90 <_Z27ackermann_function_originalii+0x50>
    1ab0:	83 c0 01             	add    $0x1,%eax
    1ab3:	eb c4                	jmp    1a79 <_Z27ackermann_function_originalii+0x39>
    1ab5:	0f 1f 00             	nopl   (%rax)
    1ab8:	45 85 e4             	test   %r12d,%r12d
    1abb:	45 89 e5             	mov    %r12d,%r13d
    1abe:	0f 9f c1             	setg   %cl
    1ac1:	85 c0                	test   %eax,%eax
    1ac3:	0f 94 c2             	sete   %dl
    1ac6:	41 83 ec 01          	sub    $0x1,%r12d
    1aca:	83 e8 01             	sub    $0x1,%eax
    1acd:	84 d1                	test   %dl,%cl
    1acf:	74 0f                	je     1ae0 <_Z27ackermann_function_originalii+0xa0>
    1ad1:	b8 01 00 00 00       	mov    $0x1,%eax
    1ad6:	45 85 e4             	test   %r12d,%r12d
    1ad9:	75 dd                	jne    1ab8 <_Z27ackermann_function_originalii+0x78>
    1adb:	83 c0 01             	add    $0x1,%eax
    1ade:	eb cc                	jmp    1aac <_Z27ackermann_function_originalii+0x6c>
    1ae0:	45 85 ed             	test   %r13d,%r13d
    1ae3:	45 89 ee             	mov    %r13d,%r14d
    1ae6:	0f 9f c1             	setg   %cl
    1ae9:	85 c0                	test   %eax,%eax
    1aeb:	0f 94 c2             	sete   %dl
    1aee:	41 83 ed 01          	sub    $0x1,%r13d
    1af2:	83 e8 01             	sub    $0x1,%eax
    1af5:	84 d1                	test   %dl,%cl
    1af7:	74 17                	je     1b10 <_Z27ackermann_function_originalii+0xd0>
    1af9:	b8 01 00 00 00       	mov    $0x1,%eax
    1afe:	45 85 ed             	test   %r13d,%r13d
    1b01:	75 dd                	jne    1ae0 <_Z27ackermann_function_originalii+0xa0>
    1b03:	83 c0 01             	add    $0x1,%eax
    1b06:	eb ce                	jmp    1ad6 <_Z27ackermann_function_originalii+0x96>
    1b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b0f:	00 
    1b10:	45 85 f6             	test   %r14d,%r14d
    1b13:	45 89 f7             	mov    %r14d,%r15d
    1b16:	0f 9f c1             	setg   %cl
    1b19:	85 c0                	test   %eax,%eax
    1b1b:	0f 94 c2             	sete   %dl
    1b1e:	41 83 ee 01          	sub    $0x1,%r14d
    1b22:	83 e8 01             	sub    $0x1,%eax
    1b25:	84 d1                	test   %dl,%cl
    1b27:	74 17                	je     1b40 <_Z27ackermann_function_originalii+0x100>
    1b29:	b8 01 00 00 00       	mov    $0x1,%eax
    1b2e:	45 85 f6             	test   %r14d,%r14d
    1b31:	75 dd                	jne    1b10 <_Z27ackermann_function_originalii+0xd0>
    1b33:	83 c0 01             	add    $0x1,%eax
    1b36:	eb c6                	jmp    1afe <_Z27ackermann_function_originalii+0xbe>
    1b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1b3f:	00 
    1b40:	45 85 ff             	test   %r15d,%r15d
    1b43:	44 89 fa             	mov    %r15d,%edx
    1b46:	40 0f 9f c6          	setg   %sil
    1b4a:	85 c0                	test   %eax,%eax
    1b4c:	0f 94 c1             	sete   %cl
    1b4f:	41 83 ef 01          	sub    $0x1,%r15d
    1b53:	83 e8 01             	sub    $0x1,%eax
    1b56:	40 84 ce             	test   %cl,%sil
    1b59:	74 15                	je     1b70 <_Z27ackermann_function_originalii+0x130>
    1b5b:	b8 01 00 00 00       	mov    $0x1,%eax
    1b60:	45 85 ff             	test   %r15d,%r15d
    1b63:	75 db                	jne    1b40 <_Z27ackermann_function_originalii+0x100>
    1b65:	83 c0 01             	add    $0x1,%eax
    1b68:	eb c4                	jmp    1b2e <_Z27ackermann_function_originalii+0xee>
    1b6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1b70:	85 d2                	test   %edx,%edx
    1b72:	89 d1                	mov    %edx,%ecx
    1b74:	40 0f 9f c7          	setg   %dil
    1b78:	85 c0                	test   %eax,%eax
    1b7a:	40 0f 94 c6          	sete   %sil
    1b7e:	83 ea 01             	sub    $0x1,%edx
    1b81:	83 e8 01             	sub    $0x1,%eax
    1b84:	40 84 f7             	test   %sil,%dil
    1b87:	74 17                	je     1ba0 <_Z27ackermann_function_originalii+0x160>
    1b89:	b8 01 00 00 00       	mov    $0x1,%eax
    1b8e:	85 d2                	test   %edx,%edx
    1b90:	75 de                	jne    1b70 <_Z27ackermann_function_originalii+0x130>
    1b92:	83 c0 01             	add    $0x1,%eax
    1b95:	eb c9                	jmp    1b60 <_Z27ackermann_function_originalii+0x120>
    1b97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b9e:	00 00 
    1ba0:	85 c9                	test   %ecx,%ecx
    1ba2:	41 89 c8             	mov    %ecx,%r8d
    1ba5:	40 0f 9f c7          	setg   %dil
    1ba9:	85 c0                	test   %eax,%eax
    1bab:	40 0f 94 c6          	sete   %sil
    1baf:	83 e9 01             	sub    $0x1,%ecx
    1bb2:	83 e8 01             	sub    $0x1,%eax
    1bb5:	40 84 f7             	test   %sil,%dil
    1bb8:	74 16                	je     1bd0 <_Z27ackermann_function_originalii+0x190>
    1bba:	b8 01 00 00 00       	mov    $0x1,%eax
    1bbf:	85 c9                	test   %ecx,%ecx
    1bc1:	75 dd                	jne    1ba0 <_Z27ackermann_function_originalii+0x160>
    1bc3:	83 c0 01             	add    $0x1,%eax
    1bc6:	eb c6                	jmp    1b8e <_Z27ackermann_function_originalii+0x14e>
    1bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bcf:	00 
    1bd0:	45 85 c0             	test   %r8d,%r8d
    1bd3:	45 89 c1             	mov    %r8d,%r9d
    1bd6:	40 0f 9f c7          	setg   %dil
    1bda:	85 c0                	test   %eax,%eax
    1bdc:	40 0f 94 c6          	sete   %sil
    1be0:	41 83 e8 01          	sub    $0x1,%r8d
    1be4:	40 84 f7             	test   %sil,%dil
    1be7:	74 17                	je     1c00 <_Z27ackermann_function_originalii+0x1c0>
    1be9:	b8 01 00 00 00       	mov    $0x1,%eax
    1bee:	45 85 c0             	test   %r8d,%r8d
    1bf1:	75 dd                	jne    1bd0 <_Z27ackermann_function_originalii+0x190>
    1bf3:	83 c0 01             	add    $0x1,%eax
    1bf6:	eb c7                	jmp    1bbf <_Z27ackermann_function_originalii+0x17f>
    1bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bff:	00 
    1c00:	8d 70 ff             	lea    -0x1(%rax),%esi
    1c03:	44 89 cf             	mov    %r9d,%edi
    1c06:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
    1c0b:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
    1c0f:	89 54 24 04          	mov    %edx,0x4(%rsp)
    1c13:	e8 28 fe ff ff       	call   1a40 <_Z27ackermann_function_originalii>
    1c18:	8b 54 24 04          	mov    0x4(%rsp),%edx
    1c1c:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    1c20:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
    1c25:	eb c7                	jmp    1bee <_Z27ackermann_function_originalii+0x1ae>
    1c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c2e:	00 00 
    1c30:	83 c0 01             	add    $0x1,%eax
    1c33:	c3                   	ret    
    1c34:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1c3b:	00 00 00 00 
    1c3f:	90                   	nop

0000000000001c40 <_Z9calculateii>:
    1c40:	f3 0f 1e fa          	endbr64 
    1c44:	41 57                	push   %r15
    1c46:	31 c0                	xor    %eax,%eax
    1c48:	41 56                	push   %r14
    1c4a:	41 55                	push   %r13
    1c4c:	41 54                	push   %r12
    1c4e:	41 89 f4             	mov    %esi,%r12d
    1c51:	48 8d 35 ba 03 00 00 	lea    0x3ba(%rip),%rsi        # 2012 <_IO_stdin_used+0x12>
    1c58:	55                   	push   %rbp
    1c59:	89 fd                	mov    %edi,%ebp
    1c5b:	bf 01 00 00 00       	mov    $0x1,%edi
    1c60:	53                   	push   %rbx
    1c61:	48 83 ec 08          	sub    $0x8,%rsp
    1c65:	e8 46 f4 ff ff       	call   10b0 <__printf_chk@plt>
    1c6a:	e8 61 f4 ff ff       	call   10d0 <clock@plt>
    1c6f:	41 89 ea             	mov    %ebp,%r10d
    1c72:	49 89 c5             	mov    %rax,%r13
    1c75:	44 89 e0             	mov    %r12d,%eax
    1c78:	85 ed                	test   %ebp,%ebp
    1c7a:	74 24                	je     1ca0 <_Z9calculateii+0x60>
    1c7c:	45 85 d2             	test   %r10d,%r10d
    1c7f:	44 89 d7             	mov    %r10d,%edi
    1c82:	0f 9f c1             	setg   %cl
    1c85:	85 c0                	test   %eax,%eax
    1c87:	0f 94 c2             	sete   %dl
    1c8a:	41 83 ea 01          	sub    $0x1,%r10d
    1c8e:	84 d1                	test   %dl,%cl
    1c90:	0f 84 22 01 00 00    	je     1db8 <_Z9calculateii+0x178>
    1c96:	b8 01 00 00 00       	mov    $0x1,%eax
    1c9b:	45 85 d2             	test   %r10d,%r10d
    1c9e:	75 dc                	jne    1c7c <_Z9calculateii+0x3c>
    1ca0:	8d 58 01             	lea    0x1(%rax),%ebx
    1ca3:	4c 8d 3d 87 03 00 00 	lea    0x387(%rip),%r15        # 2031 <_IO_stdin_used+0x31>
    1caa:	e8 21 f4 ff ff       	call   10d0 <clock@plt>
    1caf:	4c 8d 05 6f 03 00 00 	lea    0x36f(%rip),%r8        # 2025 <_IO_stdin_used+0x25>
    1cb6:	89 da                	mov    %ebx,%edx
    1cb8:	bf 01 00 00 00       	mov    $0x1,%edi
    1cbd:	4c 89 c6             	mov    %r8,%rsi
    1cc0:	49 89 c6             	mov    %rax,%r14
    1cc3:	31 c0                	xor    %eax,%eax
    1cc5:	e8 e6 f3 ff ff       	call   10b0 <__printf_chk@plt>
    1cca:	4d 29 ee             	sub    %r13,%r14
    1ccd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1cd1:	4c 89 fe             	mov    %r15,%rsi
    1cd4:	f2 49 0f 2a c6       	cvtsi2sd %r14,%xmm0
    1cd9:	bf 01 00 00 00       	mov    $0x1,%edi
    1cde:	4c 8d 35 96 03 00 00 	lea    0x396(%rip),%r14        # 207b <_IO_stdin_used+0x7b>
    1ce5:	b8 01 00 00 00       	mov    $0x1,%eax
    1cea:	f2 0f 5e 05 8e 03 00 	divsd  0x38e(%rip),%xmm0        # 2080 <_IO_stdin_used+0x80>
    1cf1:	00 
    1cf2:	e8 b9 f3 ff ff       	call   10b0 <__printf_chk@plt>
    1cf7:	4c 89 f6             	mov    %r14,%rsi
    1cfa:	bf 01 00 00 00       	mov    $0x1,%edi
    1cff:	31 c0                	xor    %eax,%eax
    1d01:	e8 aa f3 ff ff       	call   10b0 <__printf_chk@plt>
    1d06:	48 8d 35 32 03 00 00 	lea    0x332(%rip),%rsi        # 203f <_IO_stdin_used+0x3f>
    1d0d:	bf 01 00 00 00       	mov    $0x1,%edi
    1d12:	31 c0                	xor    %eax,%eax
    1d14:	e8 97 f3 ff ff       	call   10b0 <__printf_chk@plt>
    1d19:	e8 b2 f3 ff ff       	call   10d0 <clock@plt>
    1d1e:	44 89 e6             	mov    %r12d,%esi
    1d21:	89 ef                	mov    %ebp,%edi
    1d23:	49 89 c5             	mov    %rax,%r13
    1d26:	e8 65 fc ff ff       	call   1990 <_Z27ackermann_function_optimizeii>
    1d2b:	41 89 c4             	mov    %eax,%r12d
    1d2e:	e8 9d f3 ff ff       	call   10d0 <clock@plt>
    1d33:	4c 8d 05 eb 02 00 00 	lea    0x2eb(%rip),%r8        # 2025 <_IO_stdin_used+0x25>
    1d3a:	44 89 e2             	mov    %r12d,%edx
    1d3d:	bf 01 00 00 00       	mov    $0x1,%edi
    1d42:	4c 89 c6             	mov    %r8,%rsi
    1d45:	48 89 c5             	mov    %rax,%rbp
    1d48:	31 c0                	xor    %eax,%eax
    1d4a:	e8 61 f3 ff ff       	call   10b0 <__printf_chk@plt>
    1d4f:	4c 29 ed             	sub    %r13,%rbp
    1d52:	4c 89 fe             	mov    %r15,%rsi
    1d55:	bf 01 00 00 00       	mov    $0x1,%edi
    1d5a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1d5e:	b8 01 00 00 00       	mov    $0x1,%eax
    1d63:	f2 48 0f 2a c5       	cvtsi2sd %rbp,%xmm0
    1d68:	f2 0f 5e 05 10 03 00 	divsd  0x310(%rip),%xmm0        # 2080 <_IO_stdin_used+0x80>
    1d6f:	00 
    1d70:	e8 3b f3 ff ff       	call   10b0 <__printf_chk@plt>
    1d75:	4c 89 f6             	mov    %r14,%rsi
    1d78:	bf 01 00 00 00       	mov    $0x1,%edi
    1d7d:	31 c0                	xor    %eax,%eax
    1d7f:	e8 2c f3 ff ff       	call   10b0 <__printf_chk@plt>
    1d84:	48 8d 35 db 02 00 00 	lea    0x2db(%rip),%rsi        # 2066 <_IO_stdin_used+0x66>
    1d8b:	41 39 dc             	cmp    %ebx,%r12d
    1d8e:	75 07                	jne    1d97 <_Z9calculateii+0x157>
    1d90:	48 8d 35 bb 02 00 00 	lea    0x2bb(%rip),%rsi        # 2052 <_IO_stdin_used+0x52>
    1d97:	48 83 c4 08          	add    $0x8,%rsp
    1d9b:	bf 01 00 00 00       	mov    $0x1,%edi
    1da0:	31 c0                	xor    %eax,%eax
    1da2:	5b                   	pop    %rbx
    1da3:	5d                   	pop    %rbp
    1da4:	41 5c                	pop    %r12
    1da6:	41 5d                	pop    %r13
    1da8:	41 5e                	pop    %r14
    1daa:	41 5f                	pop    %r15
    1dac:	e9 ff f2 ff ff       	jmp    10b0 <__printf_chk@plt>
    1db1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1db8:	8d 70 ff             	lea    -0x1(%rax),%esi
    1dbb:	e8 80 fc ff ff       	call   1a40 <_Z27ackermann_function_originalii>
    1dc0:	e9 d6 fe ff ff       	jmp    1c9b <_Z9calculateii+0x5b>

Disassembly of section .fini:

0000000000001dc8 <_fini>:
    1dc8:	f3 0f 1e fa          	endbr64 
    1dcc:	48 83 ec 08          	sub    $0x8,%rsp
    1dd0:	48 83 c4 08          	add    $0x8,%rsp
    1dd4:	c3                   	ret    

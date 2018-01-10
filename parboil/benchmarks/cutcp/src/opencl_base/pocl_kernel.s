
opencl_cutoff_potential_lattice.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000000610 <_init>:
 610:	48 83 ec 08          	sub    $0x8,%rsp
 614:	48 8b 05 cd 1c 20 00 	mov    0x201ccd(%rip),%rax        # 2022e8 <_DYNAMIC+0x220>
 61b:	48 85 c0             	test   %rax,%rax
 61e:	74 05                	je     625 <_init+0x15>
 620:	e8 53 00 00 00       	callq  678 <_pocl_launcher_opencl_cutoff_potential_lattice@plt+0x18>
 625:	48 83 c4 08          	add    $0x8,%rsp
 629:	c3                   	retq   

Disassembly of section .plt:

0000000000000630 <ilogbf@plt-0x10>:
 630:	ff 35 ca 1c 20 00    	pushq  0x201cca(%rip)        # 202300 <_GLOBAL_OFFSET_TABLE_+0x8>
 636:	ff 25 cc 1c 20 00    	jmpq   *0x201ccc(%rip)        # 202308 <_GLOBAL_OFFSET_TABLE_+0x10>
 63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <ilogbf@plt>:
 640:	ff 25 ca 1c 20 00    	jmpq   *0x201cca(%rip)        # 202310 <_GLOBAL_OFFSET_TABLE_+0x18>
 646:	68 00 00 00 00       	pushq  $0x0
 64b:	e9 e0 ff ff ff       	jmpq   630 <_init+0x20>

0000000000000650 <ldexpf@plt>:
 650:	ff 25 c2 1c 20 00    	jmpq   *0x201cc2(%rip)        # 202318 <_GLOBAL_OFFSET_TABLE_+0x20>
 656:	68 01 00 00 00       	pushq  $0x1
 65b:	e9 d0 ff ff ff       	jmpq   630 <_init+0x20>

0000000000000660 <_pocl_launcher_opencl_cutoff_potential_lattice@plt>:
 660:	ff 25 ba 1c 20 00    	jmpq   *0x201cba(%rip)        # 202320 <_GLOBAL_OFFSET_TABLE_+0x28>
 666:	68 02 00 00 00       	pushq  $0x2
 66b:	e9 c0 ff ff ff       	jmpq   630 <_init+0x20>

Disassembly of section .plt.got:

0000000000000670 <.plt.got>:
 670:	ff 25 62 1c 20 00    	jmpq   *0x201c62(%rip)        # 2022d8 <_DYNAMIC+0x210>
 676:	66 90                	xchg   %ax,%ax
 678:	ff 25 6a 1c 20 00    	jmpq   *0x201c6a(%rip)        # 2022e8 <_DYNAMIC+0x220>
 67e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000680 <deregister_tm_clones>:
     680:	55                   	push   %rbp
     681:	48 89 e5             	mov    %rsp,%rbp
     684:	48 83 ec 10          	sub    $0x10,%rsp
     688:	48 8d 05 a1 1c 20 00 	lea    0x201ca1(%rip),%rax        # 202330 <_edata>
     68f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     693:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     697:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     69b:	48 8d 05 8e 1c 20 00 	lea    0x201c8e(%rip),%rax        # 202330 <_edata>
     6a2:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
     6a6:	74 29                	je     6d1 <deregister_tm_clones+0x51>
     6a8:	48 8b 05 31 1c 20 00 	mov    0x201c31(%rip),%rax        # 2022e0 <_DYNAMIC+0x218>
     6af:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     6b3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     6b7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     6bb:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
     6c0:	74 10                	je     6d2 <deregister_tm_clones+0x52>
     6c2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     6c6:	48 8d 3d 63 1c 20 00 	lea    0x201c63(%rip),%rdi        # 202330 <_edata>
     6cd:	ff d0                	callq  *%rax
     6cf:	eb 01                	jmp    6d2 <deregister_tm_clones+0x52>
     6d1:	90                   	nop
     6d2:	c9                   	leaveq 
     6d3:	c3                   	retq   

00000000000006d4 <register_tm_clones>:
     6d4:	55                   	push   %rbp
     6d5:	48 89 e5             	mov    %rsp,%rbp
     6d8:	48 83 ec 20          	sub    $0x20,%rsp
     6dc:	48 8d 05 4d 1c 20 00 	lea    0x201c4d(%rip),%rax        # 202330 <_edata>
     6e3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     6e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     6eb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     6ef:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     6f3:	48 8d 05 36 1c 20 00 	lea    0x201c36(%rip),%rax        # 202330 <_edata>
     6fa:	48 29 c2             	sub    %rax,%rdx
     6fd:	48 89 d0             	mov    %rdx,%rax
     700:	48 c1 f8 03          	sar    $0x3,%rax
     704:	48 89 c2             	mov    %rax,%rdx
     707:	48 c1 ea 3f          	shr    $0x3f,%rdx
     70b:	48 01 d0             	add    %rdx,%rax
     70e:	48 d1 f8             	sar    %rax
     711:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     715:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
     71a:	74 30                	je     74c <register_tm_clones+0x78>
     71c:	48 8b 05 cd 1b 20 00 	mov    0x201bcd(%rip),%rax        # 2022f0 <_DYNAMIC+0x228>
     723:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     727:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     72b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     72f:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
     734:	74 17                	je     74d <register_tm_clones+0x79>
     736:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     73a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     73e:	48 89 d6             	mov    %rdx,%rsi
     741:	48 8d 3d e8 1b 20 00 	lea    0x201be8(%rip),%rdi        # 202330 <_edata>
     748:	ff d0                	callq  *%rax
     74a:	eb 01                	jmp    74d <register_tm_clones+0x79>
     74c:	90                   	nop
     74d:	c9                   	leaveq 
     74e:	c3                   	retq   

000000000000074f <__do_global_dtors_aux>:
     74f:	55                   	push   %rbp
     750:	48 89 e5             	mov    %rsp,%rbp
     753:	0f b6 05 d6 1b 20 00 	movzbl 0x201bd6(%rip),%eax        # 202330 <_edata>
     75a:	0f b6 c0             	movzbl %al,%eax
     75d:	48 85 c0             	test   %rax,%rax
     760:	75 29                	jne    78b <__do_global_dtors_aux+0x3c>
     762:	48 8b 05 6f 1b 20 00 	mov    0x201b6f(%rip),%rax        # 2022d8 <_DYNAMIC+0x210>
     769:	48 85 c0             	test   %rax,%rax
     76c:	74 0f                	je     77d <__do_global_dtors_aux+0x2e>
     76e:	48 8b 05 b3 1b 20 00 	mov    0x201bb3(%rip),%rax        # 202328 <__dso_handle>
     775:	48 89 c7             	mov    %rax,%rdi
     778:	e8 f3 fe ff ff       	callq  670 <_pocl_launcher_opencl_cutoff_potential_lattice@plt+0x10>
     77d:	e8 fe fe ff ff       	callq  680 <deregister_tm_clones>
     782:	c6 05 a7 1b 20 00 01 	movb   $0x1,0x201ba7(%rip)        # 202330 <_edata>
     789:	eb 01                	jmp    78c <__do_global_dtors_aux+0x3d>
     78b:	90                   	nop
     78c:	5d                   	pop    %rbp
     78d:	c3                   	retq   

000000000000078e <frame_dummy>:
     78e:	55                   	push   %rbp
     78f:	48 89 e5             	mov    %rsp,%rbp
     792:	e8 3d ff ff ff       	callq  6d4 <register_tm_clones>
     797:	90                   	nop
     798:	5d                   	pop    %rbp
     799:	c3                   	retq   
     79a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000007a0 <_pocl_launcher_opencl_cutoff_potential_lattice>:
     7a0:	55                   	push   %rbp
     7a1:	48 89 e5             	mov    %rsp,%rbp
     7a4:	41 57                	push   %r15
     7a6:	41 56                	push   %r14
     7a8:	41 55                	push   %r13
     7aa:	41 54                	push   %r12
     7ac:	53                   	push   %rbx
     7ad:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
     7b1:	48 81 ec 80 3b 00 00 	sub    $0x3b80,%rsp
     7b8:	c5 fa 11 94 24 08 01 	vmovss %xmm2,0x108(%rsp)
     7bf:	00 00 
     7c1:	c5 f8 28 f1          	vmovaps %xmm1,%xmm6
     7c5:	48 89 94 24 e8 00 00 	mov    %rdx,0xe8(%rsp)
     7cc:	00 
     7cd:	89 b4 24 f8 00 00 00 	mov    %esi,0xf8(%rsp)
     7d4:	89 bc 24 f0 00 00 00 	mov    %edi,0xf0(%rsp)
     7db:	4c 8b 75 30          	mov    0x30(%rbp),%r14
     7df:	4d 8b 66 28          	mov    0x28(%r14),%r12
     7e3:	4e 8d 2c e5 00 00 00 	lea    0x0(,%r12,8),%r13
     7ea:	00 
     7eb:	4c 89 ee             	mov    %r13,%rsi
     7ee:	48 83 ce 04          	or     $0x4,%rsi
     7f2:	4c 89 ef             	mov    %r13,%rdi
     7f5:	48 83 cf 04          	or     $0x4,%rdi
     7f9:	4d 8b 5e 08          	mov    0x8(%r14),%r11
     7fd:	4d 8b 56 20          	mov    0x20(%r14),%r10
     801:	78 07                	js     80a <_pocl_launcher_opencl_cutoff_potential_lattice+0x6a>
     803:	c4 e1 e2 2a cf       	vcvtsi2ss %rdi,%xmm3,%xmm1
     808:	eb 15                	jmp    81f <_pocl_launcher_opencl_cutoff_potential_lattice+0x7f>
     80a:	48 89 f7             	mov    %rsi,%rdi
     80d:	48 d1 ef             	shr    %rdi
     810:	83 e6 01             	and    $0x1,%esi
     813:	48 09 fe             	or     %rdi,%rsi
     816:	c4 e1 e2 2a ce       	vcvtsi2ss %rsi,%xmm3,%xmm1
     81b:	c5 f2 58 c9          	vaddss %xmm1,%xmm1,%xmm1
     81f:	4d 89 d7             	mov    %r10,%r15
     822:	49 c1 ef 02          	shr    $0x2,%r15
     826:	4a 8d 14 fd 00 00 00 	lea    0x0(,%r15,8),%rdx
     82d:	00 
     82e:	48 89 d6             	mov    %rdx,%rsi
     831:	48 83 ce 04          	or     $0x4,%rsi
     835:	48 89 d7             	mov    %rdx,%rdi
     838:	48 83 cf 04          	or     $0x4,%rdi
     83c:	78 07                	js     845 <_pocl_launcher_opencl_cutoff_potential_lattice+0xa5>
     83e:	c4 e1 e2 2a d7       	vcvtsi2ss %rdi,%xmm3,%xmm2
     843:	eb 15                	jmp    85a <_pocl_launcher_opencl_cutoff_potential_lattice+0xba>
     845:	48 89 f7             	mov    %rsi,%rdi
     848:	48 d1 ef             	shr    %rdi
     84b:	83 e6 01             	and    $0x1,%esi
     84e:	48 09 fe             	or     %rdi,%rsi
     851:	c4 e1 e2 2a d6       	vcvtsi2ss %rsi,%xmm3,%xmm2
     856:	c5 ea 58 d2          	vaddss %xmm2,%xmm2,%xmm2
     85a:	42 8d 34 cd 00 00 00 	lea    0x0(,%r9,8),%esi
     861:	00 
     862:	48 63 f6             	movslq %esi,%rsi
     865:	4b 8d 3c 12          	lea    (%r10,%r10,1),%rdi
     869:	83 e7 06             	and    $0x6,%edi
     86c:	48 89 f8             	mov    %rdi,%rax
     86f:	48 09 f0             	or     %rsi,%rax
     872:	48 09 f7             	or     %rsi,%rdi
     875:	49 63 f1             	movslq %r9d,%rsi
     878:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
     87d:	48 89 7c 24 78       	mov    %rdi,0x78(%rsp)
     882:	78 07                	js     88b <_pocl_launcher_opencl_cutoff_potential_lattice+0xeb>
     884:	c4 e1 e2 2a df       	vcvtsi2ss %rdi,%xmm3,%xmm3
     889:	eb 1a                	jmp    8a5 <_pocl_launcher_opencl_cutoff_potential_lattice+0x105>
     88b:	48 89 c2             	mov    %rax,%rdx
     88e:	48 d1 ea             	shr    %rdx
     891:	83 e0 01             	and    $0x1,%eax
     894:	48 09 d0             	or     %rdx,%rax
     897:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
     89c:	c4 e1 e2 2a d8       	vcvtsi2ss %rax,%xmm3,%xmm3
     8a1:	c5 e2 58 db          	vaddss %xmm3,%xmm3,%xmm3
     8a5:	49 0f af 76 10       	imul   0x10(%r14),%rsi
     8aa:	48 c7 84 24 40 2f 00 	movq   $0x0,0x2f40(%rsp)
     8b1:	00 00 00 00 00 
     8b6:	c7 84 24 40 01 00 00 	movl   $0x0,0x140(%rsp)
     8bd:	00 00 00 00 
     8c1:	4c 01 e6             	add    %r12,%rsi
     8c4:	49 c1 eb 02          	shr    $0x2,%r11
     8c8:	4c 0f af de          	imul   %rsi,%r11
     8cc:	4b 8d 04 3b          	lea    (%r11,%r15,1),%rax
     8d0:	48 c1 e0 0b          	shl    $0xb,%rax
     8d4:	49 83 e2 03          	and    $0x3,%r10
     8d8:	48 85 d2             	test   %rdx,%rdx
     8db:	78 07                	js     8e4 <_pocl_launcher_opencl_cutoff_potential_lattice+0x144>
     8dd:	c4 e1 da 2a e2       	vcvtsi2ss %rdx,%xmm4,%xmm4
     8e2:	eb 0c                	jmp    8f0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x150>
     8e4:	48 d1 ea             	shr    %rdx
     8e7:	c4 e1 da 2a e2       	vcvtsi2ss %rdx,%xmm4,%xmm4
     8ec:	c5 da 58 e4          	vaddss %xmm4,%xmm4,%xmm4
     8f0:	4c 01 c0             	add    %r8,%rax
     8f3:	49 c1 e2 07          	shl    $0x7,%r10
     8f7:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     8fb:	c5 fa 11 a4 24 40 0f 	vmovss %xmm4,0xf40(%rsp)
     902:	00 00 
     904:	4d 85 ed             	test   %r13,%r13
     907:	78 07                	js     910 <_pocl_launcher_opencl_cutoff_potential_lattice+0x170>
     909:	c4 c1 d2 2a e5       	vcvtsi2ss %r13,%xmm5,%xmm4
     90e:	eb 0f                	jmp    91f <_pocl_launcher_opencl_cutoff_potential_lattice+0x17f>
     910:	4c 89 ea             	mov    %r13,%rdx
     913:	48 d1 ea             	shr    %rdx
     916:	c4 e1 d2 2a e2       	vcvtsi2ss %rdx,%xmm5,%xmm4
     91b:	c5 da 58 e4          	vaddss %xmm4,%xmm4,%xmm4
     91f:	48 89 a4 24 18 01 00 	mov    %rsp,0x118(%rsp)
     926:	00 
     927:	4a 8d 3c 90          	lea    (%rax,%r10,4),%rdi
     92b:	c5 da 59 e0          	vmulss %xmm0,%xmm4,%xmm4
     92f:	c5 fa 11 a4 24 40 11 	vmovss %xmm4,0x1140(%rsp)
     936:	00 00 
     938:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
     93c:	c5 fa 11 9c 24 40 13 	vmovss %xmm3,0x1340(%rsp)
     943:	00 00 
     945:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
     949:	c5 fa 10 1d 8f 16 00 	vmovss 0x168f(%rip),%xmm3        # 1fe0 <_fini+0x20>
     950:	00 
     951:	c5 ea 59 d3          	vmulss %xmm3,%xmm2,%xmm2
     955:	c4 e3 69 0a d2 01    	vroundss $0x1,%xmm2,%xmm2,%xmm2
     95b:	c5 fa 2c f2          	vcvttss2si %xmm2,%esi
     95f:	48 8b 45 28          	mov    0x28(%rbp),%rax
     963:	48 89 c2             	mov    %rax,%rdx
     966:	44 8b 62 0c          	mov    0xc(%rdx),%r12d
     96a:	89 b4 24 90 00 00 00 	mov    %esi,0x90(%rsp)
     971:	89 32                	mov    %esi,(%rdx)
     973:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     977:	c5 f2 59 cb          	vmulss %xmm3,%xmm1,%xmm1
     97b:	c4 e3 71 0a c9 01    	vroundss $0x1,%xmm1,%xmm1,%xmm1
     981:	c5 fa 2c c1          	vcvttss2si %xmm1,%eax
     985:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
     98c:	89 42 04             	mov    %eax,0x4(%rdx)
     98f:	42 8d 04 cd 04 00 00 	lea    0x4(,%r9,8),%eax
     996:	00 
     997:	c5 d2 2a c8          	vcvtsi2ss %eax,%xmm5,%xmm1
     99b:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     99f:	c5 f2 59 cb          	vmulss %xmm3,%xmm1,%xmm1
     9a3:	c4 e3 71 0a c9 01    	vroundss $0x1,%xmm1,%xmm1,%xmm1
     9a9:	c5 fa 2c c1          	vcvttss2si %xmm1,%eax
     9ad:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
     9b4:	89 42 08             	mov    %eax,0x8(%rdx)
     9b7:	c7 84 24 40 03 00 00 	movl   $0x0,0x340(%rsp)
     9be:	00 00 00 00 
     9c2:	48 8b 45 10          	mov    0x10(%rbp),%rax
     9c6:	8b 00                	mov    (%rax),%eax
     9c8:	89 84 24 14 01 00 00 	mov    %eax,0x114(%rsp)
     9cf:	85 c0                	test   %eax,%eax
     9d1:	4c 89 6c 24 70       	mov    %r13,0x70(%rsp)
     9d6:	0f 8e 89 11 00 00    	jle    1b65 <_pocl_launcher_opencl_cutoff_potential_lattice+0x13c5>
     9dc:	48 89 bc 24 30 01 00 	mov    %rdi,0x130(%rsp)
     9e3:	00 
     9e4:	48 8b 45 18          	mov    0x18(%rbp),%rax
     9e8:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
     9ef:	00 
     9f0:	48 63 c1             	movslq %ecx,%rax
     9f3:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
     9fa:	00 
     9fb:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
     a00:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     a05:	c4 62 7d 59 e1       	vpbroadcastq %xmm1,%ymm12
     a0a:	c4 62 79 18 e8       	vbroadcastss %xmm0,%xmm13
     a0f:	48 8d 84 24 40 03 00 	lea    0x340(%rsp),%rax
     a16:	00 
     a17:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
     a1e:	00 
     a1f:	48 8d 84 24 40 13 00 	lea    0x1340(%rsp),%rax
     a26:	00 
     a27:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
     a2e:	00 
     a2f:	48 8d 84 24 40 11 00 	lea    0x1140(%rsp),%rax
     a36:	00 
     a37:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
     a3e:	00 
     a3f:	48 8d 84 24 40 0f 00 	lea    0xf40(%rsp),%rax
     a46:	00 
     a47:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
     a4e:	00 
     a4f:	48 8d 84 24 40 01 00 	lea    0x140(%rsp),%rax
     a56:	00 
     a57:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
     a5e:	00 
     a5f:	48 8d 84 24 40 2f 00 	lea    0x2f40(%rsp),%rax
     a66:	00 
     a67:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
     a6e:	00 
     a6f:	b8 01 00 00 00       	mov    $0x1,%eax
     a74:	31 c9                	xor    %ecx,%ecx
     a76:	48 89 8c 24 20 01 00 	mov    %rcx,0x120(%rsp)
     a7d:	00 
     a7e:	c5 7d 6f 0d 7a 15 00 	vmovdqa 0x157a(%rip),%ymm9        # 2000 <_fini+0x40>
     a85:	00 
     a86:	31 f6                	xor    %esi,%esi
     a88:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
     a8d:	44 89 a4 24 98 00 00 	mov    %r12d,0x98(%rsp)
     a94:	00 
     a95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
     a9c:	00 00 00 00 
     aa0:	48 89 f1             	mov    %rsi,%rcx
     aa3:	48 01 d1             	add    %rdx,%rcx
     aa6:	78 08                	js     ab0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x310>
     aa8:	c4 e1 fa 2a c9       	vcvtsi2ss %rcx,%xmm0,%xmm1
     aad:	eb 16                	jmp    ac5 <_pocl_launcher_opencl_cutoff_potential_lattice+0x325>
     aaf:	90                   	nop
     ab0:	48 89 ca             	mov    %rcx,%rdx
     ab3:	48 d1 ea             	shr    %rdx
     ab6:	83 e1 01             	and    $0x1,%ecx
     ab9:	48 09 d1             	or     %rdx,%rcx
     abc:	c4 e1 fa 2a c9       	vcvtsi2ss %rcx,%xmm0,%xmm1
     ac1:	c5 f2 58 c9          	vaddss %xmm1,%xmm1,%xmm1
     ac5:	48 89 b4 24 38 01 00 	mov    %rsi,0x138(%rsp)
     acc:	00 
     acd:	48 8d 0c f5 00 00 00 	lea    0x0(,%rsi,8),%rcx
     ad4:	00 
     ad5:	48 89 8c 24 d0 00 00 	mov    %rcx,0xd0(%rsp)
     adc:	00 
     add:	c5 f2 59 e0          	vmulss %xmm0,%xmm1,%xmm4
     ae1:	c4 62 79 18 f4       	vbroadcastss %xmm4,%xmm14
     ae6:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
     aed:	00 
     aee:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
     af3:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
     afa:	00 
     afb:	48 89 4c 24 68       	mov    %rcx,0x68(%rsp)
     b00:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
     b07:	00 
     b08:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
     b0d:	48 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%rcx
     b14:	00 
     b15:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
     b1a:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
     b21:	00 
     b22:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
     b27:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
     b2e:	00 
     b2f:	48 89 8c 24 b8 00 00 	mov    %rcx,0xb8(%rsp)
     b36:	00 
     b37:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
     b3e:	00 
     b3f:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
     b44:	31 f6                	xor    %esi,%esi
     b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     b4d:	00 00 00 
     b50:	48 89 f1             	mov    %rsi,%rcx
     b53:	4c 01 e9             	add    %r13,%rcx
     b56:	78 08                	js     b60 <_pocl_launcher_opencl_cutoff_potential_lattice+0x3c0>
     b58:	c4 e1 fa 2a c9       	vcvtsi2ss %rcx,%xmm0,%xmm1
     b5d:	eb 16                	jmp    b75 <_pocl_launcher_opencl_cutoff_potential_lattice+0x3d5>
     b5f:	90                   	nop
     b60:	48 89 ca             	mov    %rcx,%rdx
     b63:	48 d1 ea             	shr    %rdx
     b66:	83 e1 01             	and    $0x1,%ecx
     b69:	48 09 d1             	or     %rdx,%rcx
     b6c:	c4 e1 fa 2a c9       	vcvtsi2ss %rcx,%xmm0,%xmm1
     b71:	c5 f2 58 c9          	vaddss %xmm1,%xmm1,%xmm1
     b75:	c5 f2 59 d8          	vmulss %xmm0,%xmm1,%xmm3
     b79:	48 8d 78 01          	lea    0x1(%rax),%rdi
     b7d:	48 83 ff 08          	cmp    $0x8,%rdi
     b81:	b9 08 00 00 00       	mov    $0x8,%ecx
     b86:	48 0f 46 f9          	cmovbe %rcx,%rdi
     b8a:	48 29 c7             	sub    %rax,%rdi
     b8d:	48 83 ff 04          	cmp    $0x4,%rdi
     b91:	0f 82 d9 01 00 00    	jb     d70 <_pocl_launcher_opencl_cutoff_potential_lattice+0x5d0>
     b97:	49 89 ff             	mov    %rdi,%r15
     b9a:	49 83 e7 fc          	and    $0xfffffffffffffffc,%r15
     b9e:	48 89 fb             	mov    %rdi,%rbx
     ba1:	48 83 e3 fc          	and    $0xfffffffffffffffc,%rbx
     ba5:	0f 84 c5 01 00 00    	je     d70 <_pocl_launcher_opencl_cutoff_potential_lattice+0x5d0>
     bab:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
     bb2:	00 
     bb3:	49 89 f4             	mov    %rsi,%r12
     bb6:	48 8d 0c 0e          	lea    (%rsi,%rcx,1),%rcx
     bba:	48 c1 e1 03          	shl    $0x3,%rcx
     bbe:	49 01 c7             	add    %rax,%r15
     bc1:	c4 e1 f9 6e c8       	vmovq  %rax,%xmm1
     bc6:	c4 e2 7d 59 c9       	vpbroadcastq %xmm1,%ymm1
     bcb:	c4 c1 75 d4 f9       	vpaddq %ymm9,%ymm1,%ymm7
     bd0:	c4 e1 f9 6e c9       	vmovq  %rcx,%xmm1
     bd5:	c4 62 7d 59 c1       	vpbroadcastq %xmm1,%ymm8
     bda:	c4 62 79 18 fb       	vbroadcastss %xmm3,%xmm15
     bdf:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
     be4:	4c 8d 1c 81          	lea    (%rcx,%rax,4),%r11
     be8:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
     bef:	00 
     bf0:	4c 8d 14 81          	lea    (%rcx,%rax,4),%r10
     bf4:	48 8b 4c 24 50       	mov    0x50(%rsp),%rcx
     bf9:	4c 8d 34 81          	lea    (%rcx,%rax,4),%r14
     bfd:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
     c02:	4c 8d 04 81          	lea    (%rcx,%rax,4),%r8
     c06:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
     c0b:	4c 8d 2c 81          	lea    (%rcx,%rax,4),%r13
     c0f:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
     c14:	48 8d 04 c1          	lea    (%rcx,%rax,8),%rax
     c18:	45 31 c9             	xor    %r9d,%r9d
     c1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     c20:	c4 c1 45 d4 c8       	vpaddq %ymm8,%ymm7,%ymm1
     c25:	c4 a1 7e 7f 0c c8    	vmovdqu %ymm1,(%rax,%r9,8)
     c2b:	c5 fd 70 c9 e8       	vpshufd $0xe8,%ymm1,%ymm1
     c30:	c4 63 fd 00 d1 e8    	vpermq $0xe8,%ymm1,%ymm10
     c36:	c4 01 7a 7f 54 8d 00 	vmovdqu %xmm10,0x0(%r13,%r9,4)
     c3d:	c4 41 45 d4 dc       	vpaddq %ymm12,%ymm7,%ymm11
     c42:	c4 63 f9 16 d9 01    	vpextrq $0x1,%xmm11,%rcx
     c48:	48 85 c9             	test   %rcx,%rcx
     c4b:	78 13                	js     c60 <_pocl_launcher_opencl_cutoff_potential_lattice+0x4c0>
     c4d:	c4 e1 fa 2a c9       	vcvtsi2ss %rcx,%xmm0,%xmm1
     c52:	eb 21                	jmp    c75 <_pocl_launcher_opencl_cutoff_potential_lattice+0x4d5>
     c54:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
     c5b:	00 00 00 00 00 
     c60:	48 89 ca             	mov    %rcx,%rdx
     c63:	48 d1 ea             	shr    %rdx
     c66:	83 e1 01             	and    $0x1,%ecx
     c69:	48 09 d1             	or     %rdx,%rcx
     c6c:	c4 e1 fa 2a c9       	vcvtsi2ss %rcx,%xmm0,%xmm1
     c71:	c5 f2 58 c9          	vaddss %xmm1,%xmm1,%xmm1
     c75:	c4 61 f9 7e d9       	vmovq  %xmm11,%rcx
     c7a:	48 85 c9             	test   %rcx,%rcx
     c7d:	78 11                	js     c90 <_pocl_launcher_opencl_cutoff_potential_lattice+0x4f0>
     c7f:	c4 e1 fa 2a d1       	vcvtsi2ss %rcx,%xmm0,%xmm2
     c84:	eb 1f                	jmp    ca5 <_pocl_launcher_opencl_cutoff_potential_lattice+0x505>
     c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     c8d:	00 00 00 
     c90:	48 89 ca             	mov    %rcx,%rdx
     c93:	48 d1 ea             	shr    %rdx
     c96:	83 e1 01             	and    $0x1,%ecx
     c99:	48 09 d1             	or     %rdx,%rcx
     c9c:	c4 e1 fa 2a d1       	vcvtsi2ss %rcx,%xmm0,%xmm2
     ca1:	c5 ea 58 d2          	vaddss %xmm2,%xmm2,%xmm2
     ca5:	c4 e3 69 21 c9 10    	vinsertps $0x10,%xmm1,%xmm2,%xmm1
     cab:	c4 63 7d 39 da 01    	vextracti128 $0x1,%ymm11,%xmm2
     cb1:	c4 e1 f9 7e d1       	vmovq  %xmm2,%rcx
     cb6:	48 85 c9             	test   %rcx,%rcx
     cb9:	78 15                	js     cd0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x530>
     cbb:	c4 e1 fa 2a e9       	vcvtsi2ss %rcx,%xmm0,%xmm5
     cc0:	eb 23                	jmp    ce5 <_pocl_launcher_opencl_cutoff_potential_lattice+0x545>
     cc2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
     cc9:	1f 84 00 00 00 00 00 
     cd0:	48 89 ca             	mov    %rcx,%rdx
     cd3:	48 d1 ea             	shr    %rdx
     cd6:	83 e1 01             	and    $0x1,%ecx
     cd9:	48 09 d1             	or     %rdx,%rcx
     cdc:	c4 e1 fa 2a e9       	vcvtsi2ss %rcx,%xmm0,%xmm5
     ce1:	c5 d2 58 ed          	vaddss %xmm5,%xmm5,%xmm5
     ce5:	c4 e3 71 21 cd 20    	vinsertps $0x20,%xmm5,%xmm1,%xmm1
     ceb:	c4 e3 f9 16 d1 01    	vpextrq $0x1,%xmm2,%rcx
     cf1:	48 85 c9             	test   %rcx,%rcx
     cf4:	78 0a                	js     d00 <_pocl_launcher_opencl_cutoff_potential_lattice+0x560>
     cf6:	c4 e1 fa 2a d1       	vcvtsi2ss %rcx,%xmm0,%xmm2
     cfb:	eb 18                	jmp    d15 <_pocl_launcher_opencl_cutoff_potential_lattice+0x575>
     cfd:	0f 1f 00             	nopl   (%rax)
     d00:	48 89 ca             	mov    %rcx,%rdx
     d03:	48 d1 ea             	shr    %rdx
     d06:	83 e1 01             	and    $0x1,%ecx
     d09:	48 09 d1             	or     %rdx,%rcx
     d0c:	c4 e1 fa 2a d1       	vcvtsi2ss %rcx,%xmm0,%xmm2
     d11:	c5 ea 58 d2          	vaddss %xmm2,%xmm2,%xmm2
     d15:	c4 e3 71 21 ca 30    	vinsertps $0x30,%xmm2,%xmm1,%xmm1
     d1b:	c4 c1 70 59 cd       	vmulps %xmm13,%xmm1,%xmm1
     d20:	c4 81 78 11 0c 88    	vmovups %xmm1,(%r8,%r9,4)
     d26:	c4 01 78 11 3c 8e    	vmovups %xmm15,(%r14,%r9,4)
     d2c:	c4 01 78 11 34 8a    	vmovups %xmm14,(%r10,%r9,4)
     d32:	c4 c1 71 72 e2 04    	vpsrad $0x4,%xmm10,%xmm1
     d38:	c4 81 7a 7f 0c 8b    	vmovdqu %xmm1,(%r11,%r9,4)
     d3e:	49 83 c1 04          	add    $0x4,%r9
     d42:	c4 e2 7d 59 0d 55 13 	vpbroadcastq 0x1355(%rip),%ymm1        # 20a0 <_fini+0xe0>
     d49:	00 00 
     d4b:	c5 c5 d4 f9          	vpaddq %ymm1,%ymm7,%ymm7
     d4f:	4c 39 cb             	cmp    %r9,%rbx
     d52:	0f 85 c8 fe ff ff    	jne    c20 <_pocl_launcher_opencl_cutoff_potential_lattice+0x480>
     d58:	48 39 df             	cmp    %rbx,%rdi
     d5b:	75 19                	jne    d76 <_pocl_launcher_opencl_cutoff_potential_lattice+0x5d6>
     d5d:	e9 cf 00 00 00       	jmpq   e31 <_pocl_launcher_opencl_cutoff_potential_lattice+0x691>
     d62:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
     d69:	1f 84 00 00 00 00 00 
     d70:	49 89 f4             	mov    %rsi,%r12
     d73:	49 89 c7             	mov    %rax,%r15
     d76:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
     d7b:	4e 8d 04 b8          	lea    (%rax,%r15,4),%r8
     d7f:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
     d86:	00 
     d87:	4e 8d 0c b8          	lea    (%rax,%r15,4),%r9
     d8b:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
     d90:	4e 8d 14 b8          	lea    (%rax,%r15,4),%r10
     d94:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
     d99:	4e 8d 1c b8          	lea    (%rax,%r15,4),%r11
     d9d:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
     da2:	4e 8d 34 38          	lea    (%rax,%r15,1),%r14
     da6:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
     dab:	4e 8d 2c b8          	lea    (%rax,%r15,4),%r13
     daf:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
     db4:	4a 8d 04 f8          	lea    (%rax,%r15,8),%rax
     db8:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
     dbd:	49 8d 3c 0f          	lea    (%r15,%rcx,1),%rdi
     dc1:	31 db                	xor    %ebx,%ebx
     dc3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
     dca:	84 00 00 00 00 00 
     dd0:	48 8d 14 1f          	lea    (%rdi,%rbx,1),%rdx
     dd4:	48 89 14 d8          	mov    %rdx,(%rax,%rbx,8)
     dd8:	41 89 54 9d 00       	mov    %edx,0x0(%r13,%rbx,4)
     ddd:	4c 89 f6             	mov    %r14,%rsi
     de0:	48 01 de             	add    %rbx,%rsi
     de3:	78 0b                	js     df0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x650>
     de5:	c4 e1 fa 2a ce       	vcvtsi2ss %rsi,%xmm0,%xmm1
     dea:	eb 19                	jmp    e05 <_pocl_launcher_opencl_cutoff_potential_lattice+0x665>
     dec:	0f 1f 40 00          	nopl   0x0(%rax)
     df0:	48 89 f1             	mov    %rsi,%rcx
     df3:	48 d1 e9             	shr    %rcx
     df6:	83 e6 01             	and    $0x1,%esi
     df9:	48 09 ce             	or     %rcx,%rsi
     dfc:	c4 e1 fa 2a ce       	vcvtsi2ss %rsi,%xmm0,%xmm1
     e01:	c5 f2 58 c9          	vaddss %xmm1,%xmm1,%xmm1
     e05:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
     e09:	c4 c1 7a 11 0c 9b    	vmovss %xmm1,(%r11,%rbx,4)
     e0f:	c4 c1 7a 11 1c 9a    	vmovss %xmm3,(%r10,%rbx,4)
     e15:	c4 c1 7a 11 24 99    	vmovss %xmm4,(%r9,%rbx,4)
     e1b:	c1 fa 04             	sar    $0x4,%edx
     e1e:	41 89 14 98          	mov    %edx,(%r8,%rbx,4)
     e22:	49 8d 4c 1f 01       	lea    0x1(%r15,%rbx,1),%rcx
     e27:	48 83 c3 01          	add    $0x1,%rbx
     e2b:	48 83 f9 08          	cmp    $0x8,%rcx
     e2f:	72 9f                	jb     dd0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x630>
     e31:	4c 89 e6             	mov    %r12,%rsi
     e34:	48 83 c6 01          	add    $0x1,%rsi
     e38:	48 83 44 24 48 20    	addq   $0x20,0x48(%rsp)
     e3e:	48 83 84 24 b8 00 00 	addq   $0x20,0xb8(%rsp)
     e45:	00 20 
     e47:	48 83 44 24 50 20    	addq   $0x20,0x50(%rsp)
     e4d:	48 83 44 24 58 20    	addq   $0x20,0x58(%rsp)
     e53:	48 83 44 24 60 20    	addq   $0x20,0x60(%rsp)
     e59:	48 83 44 24 68 40    	addq   $0x40,0x68(%rsp)
     e5f:	48 83 44 24 38 08    	addq   $0x8,0x38(%rsp)
     e65:	b8 00 00 00 00       	mov    $0x0,%eax
     e6a:	48 83 fe 08          	cmp    $0x8,%rsi
     e6e:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
     e73:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
     e78:	8b bc 24 98 00 00 00 	mov    0x98(%rsp),%edi
     e7f:	0f 85 cb fc ff ff    	jne    b50 <_pocl_launcher_opencl_cutoff_potential_lattice+0x3b0>
     e85:	48 8b b4 24 38 01 00 	mov    0x138(%rsp),%rsi
     e8c:	00 
     e8d:	48 83 c6 01          	add    $0x1,%rsi
     e91:	48 81 84 24 b0 00 00 	addq   $0x100,0xb0(%rsp)
     e98:	00 00 01 00 00 
     e9d:	48 81 84 24 a8 00 00 	addq   $0x100,0xa8(%rsp)
     ea4:	00 00 01 00 00 
     ea9:	48 81 84 24 a0 00 00 	addq   $0x100,0xa0(%rsp)
     eb0:	00 00 01 00 00 
     eb5:	48 81 84 24 c8 00 00 	addq   $0x100,0xc8(%rsp)
     ebc:	00 00 01 00 00 
     ec1:	48 81 84 24 c0 00 00 	addq   $0x100,0xc0(%rsp)
     ec8:	00 00 01 00 00 
     ecd:	48 81 84 24 e0 00 00 	addq   $0x200,0xe0(%rsp)
     ed4:	00 00 02 00 00 
     ed9:	48 83 84 24 20 01 00 	addq   $0x40,0x120(%rsp)
     ee0:	00 40 
     ee2:	b8 00 00 00 00       	mov    $0x0,%eax
     ee7:	48 83 fe 02          	cmp    $0x2,%rsi
     eeb:	0f 85 af fb ff ff    	jne    aa0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x300>
     ef1:	48 8b 45 28          	mov    0x28(%rbp),%rax
     ef5:	8b 94 24 88 00 00 00 	mov    0x88(%rsp),%edx
     efc:	89 50 04             	mov    %edx,0x4(%rax)
     eff:	8b b4 24 80 00 00 00 	mov    0x80(%rsp),%esi
     f06:	89 70 08             	mov    %esi,0x8(%rax)
     f09:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
     f10:	89 08                	mov    %ecx,(%rax)
     f12:	8b 84 24 14 01 00 00 	mov    0x114(%rsp),%eax
     f19:	c5 f9 6e c0          	vmovd  %eax,%xmm0
     f1d:	c4 62 79 58 c0       	vpbroadcastd %xmm0,%xmm8
     f22:	c5 f9 6e ce          	vmovd  %esi,%xmm1
     f26:	c4 e2 79 58 c9       	vpbroadcastd %xmm1,%xmm1
     f2b:	c5 f9 6e d7          	vmovd  %edi,%xmm2
     f2f:	c4 e2 79 58 d2       	vpbroadcastd %xmm2,%xmm2
     f34:	c4 e3 75 38 d2 01    	vinserti128 $0x1,%xmm2,%ymm1,%ymm2
     f3a:	c5 fd 6f 0d de 10 00 	vmovdqa 0x10de(%rip),%ymm1        # 2020 <_fini+0x60>
     f41:	00 
     f42:	c4 e2 75 36 ca       	vpermd %ymm2,%ymm1,%ymm1
     f47:	c5 f9 6e d9          	vmovd  %ecx,%xmm3
     f4b:	c4 e2 79 58 db       	vpbroadcastd %xmm3,%xmm3
     f50:	c5 f9 6e e2          	vmovd  %edx,%xmm4
     f54:	c4 e2 79 58 e4       	vpbroadcastd %xmm4,%xmm4
     f59:	c4 e3 65 38 dc 01    	vinserti128 $0x1,%xmm4,%ymm3,%ymm3
     f5f:	c5 fd 6f 25 d9 10 00 	vmovdqa 0x10d9(%rip),%ymm4        # 2040 <_fini+0x80>
     f66:	00 
     f67:	c4 e2 5d 36 e3       	vpermd %ymm3,%ymm4,%ymm4
     f6c:	c4 63 5d 02 d1 cc    	vpblendd $0xcc,%ymm1,%ymm4,%ymm10
     f72:	c5 fd 6f 25 e6 10 00 	vmovdqa 0x10e6(%rip),%ymm4        # 2060 <_fini+0xa0>
     f79:	00 
     f7a:	c4 e2 5d 36 d2       	vpermd %ymm2,%ymm4,%ymm2
     f7f:	c5 fd 6f 25 f9 10 00 	vmovdqa 0x10f9(%rip),%ymm4        # 2080 <_fini+0xc0>
     f86:	00 
     f87:	c4 e2 5d 36 db       	vpermd %ymm3,%ymm4,%ymm3
     f8c:	c4 e3 65 02 d2 cc    	vpblendd $0xcc,%ymm2,%ymm3,%ymm2
     f92:	45 31 c0             	xor    %r8d,%r8d
     f95:	c4 e2 79 58 1d 46 10 	vpbroadcastd 0x1046(%rip),%xmm3        # 1fe4 <_fini+0x24>
     f9c:	00 00 
     f9e:	c4 e2 79 58 25 41 10 	vpbroadcastd 0x1041(%rip),%xmm4        # 1fe8 <_fini+0x28>
     fa5:	00 00 
     fa7:	c5 d0 57 ed          	vxorps %xmm5,%xmm5,%xmm5
     fab:	c4 e2 79 18 0d 38 10 	vbroadcastss 0x1038(%rip),%xmm1        # 1fec <_fini+0x2c>
     fb2:	00 00 
     fb4:	45 31 c9             	xor    %r9d,%r9d
     fb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     fbe:	00 00 
     fc0:	4d 89 c2             	mov    %r8,%r10
     fc3:	31 db                	xor    %ebx,%ebx
     fc5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
     fcc:	00 00 00 00 
     fd0:	48 89 da             	mov    %rbx,%rdx
     fd3:	48 c1 e2 07          	shl    $0x7,%rdx
     fd7:	4c 89 ce             	mov    %r9,%rsi
     fda:	48 c1 e6 0a          	shl    $0xa,%rsi
     fde:	48 8d b4 34 40 1f 00 	lea    0x1f40(%rsp,%rsi,1),%rsi
     fe5:	00 
     fe6:	48 8d 4c 32 08       	lea    0x8(%rdx,%rsi,1),%rcx
     feb:	48 83 f9 8f          	cmp    $0xffffffffffffff8f,%rcx
     fef:	0f 87 db 00 00 00    	ja     10d0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x930>
     ff5:	48 8d 4c 32 0c       	lea    0xc(%rdx,%rsi,1),%rcx
     ffa:	48 83 f9 8f          	cmp    $0xffffffffffffff8f,%rcx
     ffe:	0f 87 cc 00 00 00    	ja     10d0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x930>
    1004:	48 8d 4c 32 04       	lea    0x4(%rdx,%rsi,1),%rcx
    1009:	48 83 f9 8f          	cmp    $0xffffffffffffff8f,%rcx
    100d:	0f 87 bd 00 00 00    	ja     10d0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x930>
    1013:	48 01 d6             	add    %rdx,%rsi
    1016:	48 83 fe 90          	cmp    $0xffffffffffffff90,%rsi
    101a:	0f 83 b0 00 00 00    	jae    10d0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x930>
    1020:	4c 89 d2             	mov    %r10,%rdx
    1023:	be 08 00 00 00       	mov    $0x8,%esi
    1028:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    102f:	00 
    1030:	c5 f9 6f bc 14 40 03 	vmovdqa 0x340(%rsp,%rdx,1),%xmm7
    1037:	00 00 
    1039:	c5 f9 72 f7 05       	vpslld $0x5,%xmm7,%xmm0
    103e:	c5 f9 7f 84 14 40 1b 	vmovdqa %xmm0,0x1b40(%rsp,%rdx,1)
    1045:	00 00 
    1047:	c5 e1 db 84 14 40 01 	vpand  0x140(%rsp,%rdx,1),%xmm3,%xmm0
    104e:	00 00 
    1050:	c5 f9 7f 84 14 40 1d 	vmovdqa %xmm0,0x1d40(%rsp,%rdx,1)
    1057:	00 00 
    1059:	c4 62 7d 35 c8       	vpmovzxdq %xmm0,%ymm9
    105e:	c5 7d 7f 8c 54 40 33 	vmovdqa %ymm9,0x3340(%rsp,%rdx,2)
    1065:	00 00 
    1067:	c5 f9 eb c4          	vpor   %xmm4,%xmm0,%xmm0
    106b:	c4 e2 7d 35 c0       	vpmovzxdq %xmm0,%ymm0
    1070:	c5 fd 7f 84 54 40 37 	vmovdqa %ymm0,0x3740(%rsp,%rdx,2)
    1077:	00 00 
    1079:	c5 7d 7f 94 94 60 1f 	vmovdqa %ymm10,0x1f60(%rsp,%rdx,4)
    1080:	00 00 
    1082:	c5 fd 7f 94 94 40 1f 	vmovdqa %ymm2,0x1f40(%rsp,%rdx,4)
    1089:	00 00 
    108b:	c5 79 7f 84 14 40 0d 	vmovdqa %xmm8,0xd40(%rsp,%rdx,1)
    1092:	00 00 
    1094:	c5 f9 7f bc 14 40 0b 	vmovdqa %xmm7,0xb40(%rsp,%rdx,1)
    109b:	00 00 
    109d:	c5 f8 29 ac 14 40 09 	vmovaps %xmm5,0x940(%rsp,%rdx,1)
    10a4:	00 00 
    10a6:	c5 f8 29 8c 14 40 07 	vmovaps %xmm1,0x740(%rsp,%rdx,1)
    10ad:	00 00 
    10af:	c5 f8 29 ac 14 40 05 	vmovaps %xmm5,0x540(%rsp,%rdx,1)
    10b6:	00 00 
    10b8:	48 83 c2 10          	add    $0x10,%rdx
    10bc:	48 83 c6 fc          	add    $0xfffffffffffffffc,%rsi
    10c0:	0f 85 6a ff ff ff    	jne    1030 <_pocl_launcher_opencl_cutoff_potential_lattice+0x890>
    10c6:	e9 b8 00 00 00       	jmpq   1183 <_pocl_launcher_opencl_cutoff_potential_lattice+0x9e3>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    10d0:	4c 89 d2             	mov    %r10,%rdx
    10d3:	be 08 00 00 00       	mov    $0x8,%esi
    10d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    10df:	00 
    10e0:	8b 8c 14 40 03 00 00 	mov    0x340(%rsp,%rdx,1),%ecx
    10e7:	89 8c 14 40 0b 00 00 	mov    %ecx,0xb40(%rsp,%rdx,1)
    10ee:	c1 e1 05             	shl    $0x5,%ecx
    10f1:	89 8c 14 40 1b 00 00 	mov    %ecx,0x1b40(%rsp,%rdx,1)
    10f8:	8b 8c 14 40 01 00 00 	mov    0x140(%rsp,%rdx,1),%ecx
    10ff:	83 e1 0f             	and    $0xf,%ecx
    1102:	89 8c 14 40 1d 00 00 	mov    %ecx,0x1d40(%rsp,%rdx,1)
    1109:	48 89 8c 54 40 33 00 	mov    %rcx,0x3340(%rsp,%rdx,2)
    1110:	00 
    1111:	83 c9 10             	or     $0x10,%ecx
    1114:	48 89 8c 54 40 37 00 	mov    %rcx,0x3740(%rsp,%rdx,2)
    111b:	00 
    111c:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
    1123:	89 8c 94 40 1f 00 00 	mov    %ecx,0x1f40(%rsp,%rdx,4)
    112a:	8b 8c 24 88 00 00 00 	mov    0x88(%rsp),%ecx
    1131:	89 8c 94 44 1f 00 00 	mov    %ecx,0x1f44(%rsp,%rdx,4)
    1138:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
    113f:	89 8c 94 48 1f 00 00 	mov    %ecx,0x1f48(%rsp,%rdx,4)
    1146:	89 bc 94 4c 1f 00 00 	mov    %edi,0x1f4c(%rsp,%rdx,4)
    114d:	89 84 14 40 0d 00 00 	mov    %eax,0xd40(%rsp,%rdx,1)
    1154:	c7 84 14 40 09 00 00 	movl   $0x0,0x940(%rsp,%rdx,1)
    115b:	00 00 00 00 
    115f:	c7 84 14 40 07 00 00 	movl   $0x20,0x740(%rsp,%rdx,1)
    1166:	20 00 00 00 
    116a:	c7 84 14 40 05 00 00 	movl   $0x0,0x540(%rsp,%rdx,1)
    1171:	00 00 00 00 
    1175:	48 83 c2 04          	add    $0x4,%rdx
    1179:	48 83 c6 ff          	add    $0xffffffffffffffff,%rsi
    117d:	0f 85 5d ff ff ff    	jne    10e0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x940>
    1183:	48 83 c3 01          	add    $0x1,%rbx
    1187:	49 83 c2 20          	add    $0x20,%r10
    118b:	48 83 fb 08          	cmp    $0x8,%rbx
    118f:	0f 85 3b fe ff ff    	jne    fd0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x830>
    1195:	49 83 c1 01          	add    $0x1,%r9
    1199:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    11a0:	49 83 f9 02          	cmp    $0x2,%r9
    11a4:	0f 85 16 fe ff ff    	jne    fc0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x820>
    11aa:	48 83 84 24 d8 00 00 	addq   $0x8,0xd8(%rsp)
    11b1:	00 08 
    11b3:	48 8b 45 20          	mov    0x20(%rbp),%rax
    11b7:	48 8d 40 0c          	lea    0xc(%rax),%rax
    11bb:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    11c2:	00 
    11c3:	48 8b 84 24 28 01 00 	mov    0x128(%rsp),%rax
    11ca:	00 
    11cb:	48 c1 e0 04          	shl    $0x4,%rax
    11cf:	48 01 84 24 e8 00 00 	add    %rax,0xe8(%rsp)
    11d6:	00 
    11d7:	c5 e1 ef db          	vpxor  %xmm3,%xmm3,%xmm3
    11db:	c5 fa 11 b4 24 00 01 	vmovss %xmm6,0x100(%rsp)
    11e2:	00 00 
    11e4:	e9 e4 02 00 00       	jmpq   14cd <_pocl_launcher_opencl_cutoff_potential_lattice+0xd2d>
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11f0:	c4 c1 79 6e c2       	vmovd  %r10d,%xmm0
    11f5:	c4 e2 7d 58 c0       	vpbroadcastd %xmm0,%ymm0
    11fa:	48 8b 45 28          	mov    0x28(%rbp),%rax
    11fe:	c4 e2 7d 1a 08       	vbroadcastf128 (%rax),%ymm1
    1203:	48 8d 84 24 40 1f 00 	lea    0x1f40(%rsp),%rax
    120a:	00 
    120b:	48 89 c1             	mov    %rax,%rcx
    120e:	48 8d 84 24 40 0d 00 	lea    0xd40(%rsp),%rax
    1215:	00 
    1216:	48 89 c2             	mov    %rax,%rdx
    1219:	48 8d 84 24 40 2d 00 	lea    0x2d40(%rsp),%rax
    1220:	00 
    1221:	48 89 c6             	mov    %rax,%rsi
    1224:	48 8d 84 24 40 0b 00 	lea    0xb40(%rsp),%rax
    122b:	00 
    122c:	48 89 c7             	mov    %rax,%rdi
    122f:	48 8d 84 24 40 27 00 	lea    0x2740(%rsp),%rax
    1236:	00 
    1237:	48 89 c3             	mov    %rax,%rbx
    123a:	48 8d 84 24 40 09 00 	lea    0x940(%rsp),%rax
    1241:	00 
    1242:	49 89 c0             	mov    %rax,%r8
    1245:	48 8d 84 24 40 15 00 	lea    0x1540(%rsp),%rax
    124c:	00 
    124d:	49 89 c1             	mov    %rax,%r9
    1250:	48 8d 84 24 40 07 00 	lea    0x740(%rsp),%rax
    1257:	00 
    1258:	49 89 c2             	mov    %rax,%r10
    125b:	48 8d 84 24 40 17 00 	lea    0x1740(%rsp),%rax
    1262:	00 
    1263:	49 89 c3             	mov    %rax,%r11
    1266:	48 8d 84 24 40 05 00 	lea    0x540(%rsp),%rax
    126d:	00 
    126e:	49 89 c6             	mov    %rax,%r14
    1271:	31 c0                	xor    %eax,%eax
    1273:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    127a:	84 00 00 00 00 00 
    1280:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
    1287:	00 
    1288:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
    128d:	48 89 c8             	mov    %rcx,%rax
    1290:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
    1295:	48 89 d1             	mov    %rdx,%rcx
    1298:	48 89 74 24 78       	mov    %rsi,0x78(%rsp)
    129d:	48 89 f2             	mov    %rsi,%rdx
    12a0:	48 89 bc 24 98 00 00 	mov    %rdi,0x98(%rsp)
    12a7:	00 
    12a8:	48 89 fe             	mov    %rdi,%rsi
    12ab:	48 89 9c 24 d0 00 00 	mov    %rbx,0xd0(%rsp)
    12b2:	00 
    12b3:	49 89 df             	mov    %rbx,%r15
    12b6:	4c 89 84 24 b0 00 00 	mov    %r8,0xb0(%rsp)
    12bd:	00 
    12be:	4d 89 c4             	mov    %r8,%r12
    12c1:	4c 89 8c 24 a8 00 00 	mov    %r9,0xa8(%rsp)
    12c8:	00 
    12c9:	4d 89 cd             	mov    %r9,%r13
    12cc:	4c 89 94 24 a0 00 00 	mov    %r10,0xa0(%rsp)
    12d3:	00 
    12d4:	4c 89 9c 24 c8 00 00 	mov    %r11,0xc8(%rsp)
    12db:	00 
    12dc:	4d 89 d9             	mov    %r11,%r9
    12df:	4c 89 b4 24 c0 00 00 	mov    %r14,0xc0(%rsp)
    12e6:	00 
    12e7:	4d 89 f0             	mov    %r14,%r8
    12ea:	4d 89 d6             	mov    %r10,%r14
    12ed:	31 db                	xor    %ebx,%ebx
    12ef:	90                   	nop
    12f0:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    12f5:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    12fc:	00 
    12fd:	48 89 c3             	mov    %rax,%rbx
    1300:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
    1307:	00 
    1308:	48 89 cf             	mov    %rcx,%rdi
    130b:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
    1312:	00 
    1313:	48 89 d0             	mov    %rdx,%rax
    1316:	48 89 74 24 68       	mov    %rsi,0x68(%rsp)
    131b:	48 89 f1             	mov    %rsi,%rcx
    131e:	4c 89 7c 24 60       	mov    %r15,0x60(%rsp)
    1323:	4d 89 fa             	mov    %r15,%r10
    1326:	4c 89 64 24 58       	mov    %r12,0x58(%rsp)
    132b:	4d 89 e3             	mov    %r12,%r11
    132e:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
    1333:	4d 89 ef             	mov    %r13,%r15
    1336:	4c 89 74 24 48       	mov    %r14,0x48(%rsp)
    133b:	4d 89 f4             	mov    %r14,%r12
    133e:	4c 89 ce             	mov    %r9,%rsi
    1341:	4c 89 c2             	mov    %r8,%rdx
    1344:	41 be 08 00 00 00    	mov    $0x8,%r14d
    134a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1350:	c5 fc 29 0b          	vmovaps %ymm1,(%rbx)
    1354:	c5 fc 29 4b 20       	vmovaps %ymm1,0x20(%rbx)
    1359:	c5 fc 29 4b 40       	vmovaps %ymm1,0x40(%rbx)
    135e:	c5 fc 29 4b 60       	vmovaps %ymm1,0x60(%rbx)
    1363:	c5 fd 7f 07          	vmovdqa %ymm0,(%rdi)
    1367:	c5 fc 28 10          	vmovaps (%rax),%ymm2
    136b:	c5 fc 29 11          	vmovaps %ymm2,(%rcx)
    136f:	c4 c1 7c 28 12       	vmovaps (%r10),%ymm2
    1374:	c4 c1 7c 29 13       	vmovaps %ymm2,(%r11)
    1379:	c4 c1 7c 28 17       	vmovaps (%r15),%ymm2
    137e:	c4 c1 7c 29 14 24    	vmovaps %ymm2,(%r12)
    1384:	c4 c1 7d 6f 11       	vmovdqa (%r9),%ymm2
    1389:	c5 fd 7f 12          	vmovdqa %ymm2,(%rdx)
    138d:	48 83 c2 20          	add    $0x20,%rdx
    1391:	49 83 c1 20          	add    $0x20,%r9
    1395:	49 83 c4 20          	add    $0x20,%r12
    1399:	49 83 c7 20          	add    $0x20,%r15
    139d:	49 83 c3 20          	add    $0x20,%r11
    13a1:	49 83 c2 20          	add    $0x20,%r10
    13a5:	48 83 c1 20          	add    $0x20,%rcx
    13a9:	48 83 c0 20          	add    $0x20,%rax
    13ad:	48 83 c7 20          	add    $0x20,%rdi
    13b1:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
    13b5:	49 83 c6 f8          	add    $0xfffffffffffffff8,%r14
    13b9:	75 95                	jne    1350 <_pocl_launcher_opencl_cutoff_potential_lattice+0xbb0>
    13bb:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    13c0:	48 83 c3 01          	add    $0x1,%rbx
    13c4:	49 83 c0 20          	add    $0x20,%r8
    13c8:	49 89 f1             	mov    %rsi,%r9
    13cb:	49 83 c1 20          	add    $0x20,%r9
    13cf:	4c 8b 74 24 48       	mov    0x48(%rsp),%r14
    13d4:	49 83 c6 20          	add    $0x20,%r14
    13d8:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    13dd:	49 83 c5 20          	add    $0x20,%r13
    13e1:	4c 8b 64 24 58       	mov    0x58(%rsp),%r12
    13e6:	49 83 c4 20          	add    $0x20,%r12
    13ea:	4c 8b 7c 24 60       	mov    0x60(%rsp),%r15
    13ef:	49 83 c7 20          	add    $0x20,%r15
    13f3:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
    13f8:	48 83 c6 20          	add    $0x20,%rsi
    13fc:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    1403:	00 
    1404:	48 83 c2 20          	add    $0x20,%rdx
    1408:	48 8b 8c 24 88 00 00 	mov    0x88(%rsp),%rcx
    140f:	00 
    1410:	48 83 c1 20          	add    $0x20,%rcx
    1414:	48 8b 84 24 90 00 00 	mov    0x90(%rsp),%rax
    141b:	00 
    141c:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    1420:	48 83 fb 08          	cmp    $0x8,%rbx
    1424:	0f 85 c6 fe ff ff    	jne    12f0 <_pocl_launcher_opencl_cutoff_potential_lattice+0xb50>
    142a:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
    1431:	00 
    1432:	48 83 c0 01          	add    $0x1,%rax
    1436:	4c 8b b4 24 c0 00 00 	mov    0xc0(%rsp),%r14
    143d:	00 
    143e:	49 81 c6 00 01 00 00 	add    $0x100,%r14
    1445:	4c 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%r11
    144c:	00 
    144d:	49 81 c3 00 01 00 00 	add    $0x100,%r11
    1454:	4c 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%r10
    145b:	00 
    145c:	49 81 c2 00 01 00 00 	add    $0x100,%r10
    1463:	4c 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%r9
    146a:	00 
    146b:	49 81 c1 00 01 00 00 	add    $0x100,%r9
    1472:	4c 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%r8
    1479:	00 
    147a:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    1481:	48 8b 9c 24 d0 00 00 	mov    0xd0(%rsp),%rbx
    1488:	00 
    1489:	48 81 c3 00 01 00 00 	add    $0x100,%rbx
    1490:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    1497:	00 
    1498:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    149f:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
    14a4:	48 81 c6 00 01 00 00 	add    $0x100,%rsi
    14ab:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    14b0:	48 81 c2 00 01 00 00 	add    $0x100,%rdx
    14b7:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
    14bc:	48 81 c1 00 04 00 00 	add    $0x400,%rcx
    14c3:	48 83 f8 02          	cmp    $0x2,%rax
    14c7:	0f 85 b3 fd ff ff    	jne    1280 <_pocl_launcher_opencl_cutoff_potential_lattice+0xae0>
    14cd:	31 c0                	xor    %eax,%eax
    14cf:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    14d4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    14db:	00 00 00 00 00 
    14e0:	31 c0                	xor    %eax,%eax
    14e2:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    14e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    14ee:	00 00 
    14f0:	45 31 c9             	xor    %r9d,%r9d
    14f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    14fa:	84 00 00 00 00 00 
    1500:	48 8b 5c 24 38       	mov    0x38(%rsp),%rbx
    1505:	49 89 da             	mov    %rbx,%r10
    1508:	4c 89 d0             	mov    %r10,%rax
    150b:	48 c1 e0 07          	shl    $0x7,%rax
    150f:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
    1514:	49 89 fb             	mov    %rdi,%r11
    1517:	4c 89 d9             	mov    %r11,%rcx
    151a:	48 c1 e1 0a          	shl    $0xa,%rcx
    151e:	48 8d 8c 0c 40 1f 00 	lea    0x1f40(%rsp,%rcx,1),%rcx
    1525:	00 
    1526:	48 01 c1             	add    %rax,%rcx
    1529:	4c 89 c8             	mov    %r9,%rax
    152c:	48 c1 e0 04          	shl    $0x4,%rax
    1530:	8b 14 08             	mov    (%rax,%rcx,1),%edx
    1533:	89 94 24 88 00 00 00 	mov    %edx,0x88(%rsp)
    153a:	8b 54 08 04          	mov    0x4(%rax,%rcx,1),%edx
    153e:	89 94 24 80 00 00 00 	mov    %edx,0x80(%rsp)
    1545:	8b 44 08 08          	mov    0x8(%rax,%rcx,1),%eax
    1549:	89 44 24 68          	mov    %eax,0x68(%rsp)
    154d:	48 c1 e3 05          	shl    $0x5,%rbx
    1551:	48 c1 e7 08          	shl    $0x8,%rdi
    1555:	48 8d 84 3c 40 0d 00 	lea    0xd40(%rsp,%rdi,1),%rax
    155c:	00 
    155d:	48 01 d8             	add    %rbx,%rax
    1560:	48 8d 8c 3c 40 0b 00 	lea    0xb40(%rsp,%rdi,1),%rcx
    1567:	00 
    1568:	48 01 d9             	add    %rbx,%rcx
    156b:	48 8d 94 3c 40 09 00 	lea    0x940(%rsp,%rdi,1),%rdx
    1572:	00 
    1573:	48 01 da             	add    %rbx,%rdx
    1576:	42 8b 14 8a          	mov    (%rdx,%r9,4),%edx
    157a:	48 8d b4 3c 40 19 00 	lea    0x1940(%rsp,%rdi,1),%rsi
    1581:	00 
    1582:	48 01 de             	add    %rbx,%rsi
    1585:	4e 63 04 89          	movslq (%rcx,%r9,4),%r8
    1589:	4a 63 04 88          	movslq (%rax,%r9,4),%rax
    158d:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    1594:	00 
    1595:	42 89 14 8e          	mov    %edx,(%rsi,%r9,4)
    1599:	48 8d 84 3c 40 07 00 	lea    0x740(%rsp,%rdi,1),%rax
    15a0:	00 
    15a1:	48 01 d8             	add    %rbx,%rax
    15a4:	42 8b 04 88          	mov    (%rax,%r9,4),%eax
    15a8:	48 8d 8c 3c 40 29 00 	lea    0x2940(%rsp,%rdi,1),%rcx
    15af:	00 
    15b0:	48 01 d9             	add    %rbx,%rcx
    15b3:	42 89 04 89          	mov    %eax,(%rcx,%r9,4)
    15b7:	48 8d 84 3c 40 05 00 	lea    0x540(%rsp,%rdi,1),%rax
    15be:	00 
    15bf:	48 01 d8             	add    %rbx,%rax
    15c2:	42 8b 04 88          	mov    (%rax,%r9,4),%eax
    15c6:	48 8d 8c 3c 40 2b 00 	lea    0x2b40(%rsp,%rdi,1),%rcx
    15cd:	00 
    15ce:	48 01 d9             	add    %rbx,%rcx
    15d1:	42 89 04 89          	mov    %eax,(%rcx,%r9,4)
    15d5:	48 8d 84 3c 40 1b 00 	lea    0x1b40(%rsp,%rdi,1),%rax
    15dc:	00 
    15dd:	48 01 d8             	add    %rbx,%rax
    15e0:	4a 8d 04 88          	lea    (%rax,%r9,4),%rax
    15e4:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    15e9:	4c 89 d2             	mov    %r10,%rdx
    15ec:	48 c1 e2 06          	shl    $0x6,%rdx
    15f0:	4c 89 de             	mov    %r11,%rsi
    15f3:	48 c1 e6 09          	shl    $0x9,%rsi
    15f7:	48 8d 84 34 40 33 00 	lea    0x3340(%rsp,%rsi,1),%rax
    15fe:	00 
    15ff:	48 01 d0             	add    %rdx,%rax
    1602:	4e 8d 24 c8          	lea    (%rax,%r9,8),%r12
    1606:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
    160b:	48 8d 8c 3c 40 1d 00 	lea    0x1d40(%rsp,%rdi,1),%rcx
    1612:	00 
    1613:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
    1618:	48 01 d9             	add    %rbx,%rcx
    161b:	4e 8d 2c 89          	lea    (%rcx,%r9,4),%r13
    161f:	48 8d b4 34 40 37 00 	lea    0x3740(%rsp,%rsi,1),%rsi
    1626:	00 
    1627:	48 01 d6             	add    %rdx,%rsi
    162a:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
    162f:	4a 8d 14 ce          	lea    (%rsi,%r9,8),%rdx
    1633:	4c 89 c6             	mov    %r8,%rsi
    1636:	48 c1 e6 04          	shl    $0x4,%rsi
    163a:	48 03 b4 24 d8 00 00 	add    0xd8(%rsp),%rsi
    1641:	00 
    1642:	45 31 c9             	xor    %r9d,%r9d
    1645:	45 31 d2             	xor    %r10d,%r10d
    1648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    164f:	00 
    1650:	4c 3b 84 24 90 00 00 	cmp    0x90(%rsp),%r8
    1657:	00 
    1658:	0f 8d 96 00 00 00    	jge    16f4 <_pocl_launcher_opencl_cutoff_potential_lattice+0xf54>
    165e:	44 8b 5e f8          	mov    -0x8(%rsi),%r11d
    1662:	44 03 9c 24 88 00 00 	add    0x88(%rsp),%r11d
    1669:	00 
    166a:	44 8b 76 fc          	mov    -0x4(%rsi),%r14d
    166e:	44 03 b4 24 80 00 00 	add    0x80(%rsp),%r14d
    1675:	00 
    1676:	44 8b 3e             	mov    (%rsi),%r15d
    1679:	44 03 7c 24 68       	add    0x68(%rsp),%r15d
    167e:	44 0f af bc 24 f8 00 	imul   0xf8(%rsp),%r15d
    1685:	00 00 
    1687:	45 01 f7             	add    %r14d,%r15d
    168a:	44 0f af bc 24 f0 00 	imul   0xf0(%rsp),%r15d
    1691:	00 00 
    1693:	45 01 df             	add    %r11d,%r15d
    1696:	41 c1 e7 05          	shl    $0x5,%r15d
    169a:	49 63 ff             	movslq %r15d,%rdi
    169d:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
    16a4:	00 
    16a5:	48 8d 3c b8          	lea    (%rax,%rdi,4),%rdi
    16a9:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    16ae:	8b 18                	mov    (%rax),%ebx
    16b0:	44 01 cb             	add    %r9d,%ebx
    16b3:	49 8b 04 24          	mov    (%r12),%rax
    16b7:	8b 04 87             	mov    (%rdi,%rax,4),%eax
    16ba:	41 0b 5d 00          	or     0x0(%r13),%ebx
    16be:	48 63 db             	movslq %ebx,%rbx
    16c1:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
    16c5:	89 04 99             	mov    %eax,(%rcx,%rbx,4)
    16c8:	48 8b 02             	mov    (%rdx),%rax
    16cb:	8b 04 87             	mov    (%rdi,%rax,4),%eax
    16ce:	83 cb 10             	or     $0x10,%ebx
    16d1:	48 63 fb             	movslq %ebx,%rdi
    16d4:	89 04 b9             	mov    %eax,(%rcx,%rdi,4)
    16d7:	41 83 c2 01          	add    $0x1,%r10d
    16db:	49 83 c0 08          	add    $0x8,%r8
    16df:	41 81 c1 00 01 00 00 	add    $0x100,%r9d
    16e6:	48 83 ee 80          	sub    $0xffffffffffffff80,%rsi
    16ea:	41 83 fa 04          	cmp    $0x4,%r10d
    16ee:	0f 8c 5c ff ff ff    	jl     1650 <_pocl_launcher_opencl_cutoff_potential_lattice+0xeb0>
    16f4:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    16f9:	48 8d 84 04 40 2d 00 	lea    0x2d40(%rsp,%rax,1),%rax
    1700:	00 
    1701:	48 03 44 24 50       	add    0x50(%rsp),%rax
    1706:	4c 8b 4c 24 58       	mov    0x58(%rsp),%r9
    170b:	46 89 04 88          	mov    %r8d,(%rax,%r9,4)
    170f:	49 83 c1 01          	add    $0x1,%r9
    1713:	49 83 f9 08          	cmp    $0x8,%r9
    1717:	0f 85 e3 fd ff ff    	jne    1500 <_pocl_launcher_opencl_cutoff_potential_lattice+0xd60>
    171d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1722:	48 89 c1             	mov    %rax,%rcx
    1725:	48 83 c1 01          	add    $0x1,%rcx
    1729:	48 89 c8             	mov    %rcx,%rax
    172c:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1731:	48 83 f9 08          	cmp    $0x8,%rcx
    1735:	0f 85 b5 fd ff ff    	jne    14f0 <_pocl_launcher_opencl_cutoff_potential_lattice+0xd50>
    173b:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
    1740:	48 89 c1             	mov    %rax,%rcx
    1743:	48 83 c1 01          	add    $0x1,%rcx
    1747:	48 89 c8             	mov    %rcx,%rax
    174a:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    174f:	48 83 f9 02          	cmp    $0x2,%rcx
    1753:	0f 85 87 fd ff ff    	jne    14e0 <_pocl_launcher_opencl_cutoff_potential_lattice+0xd40>
    1759:	48 8b 45 10          	mov    0x10(%rbp),%rax
    175d:	44 8b 10             	mov    (%rax),%r10d
    1760:	31 c0                	xor    %eax,%eax
    1762:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    1767:	44 89 94 24 98 00 00 	mov    %r10d,0x98(%rsp)
    176e:	00 
    176f:	90                   	nop
    1770:	31 c0                	xor    %eax,%eax
    1772:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    1777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    177e:	00 00 
    1780:	31 ff                	xor    %edi,%edi
    1782:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    1789:	1f 84 00 00 00 00 00 
    1790:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    1795:	48 89 c6             	mov    %rax,%rsi
    1798:	48 c1 e6 05          	shl    $0x5,%rsi
    179c:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    17a1:	48 c1 e2 08          	shl    $0x8,%rdx
    17a5:	48 8d 84 14 40 19 00 	lea    0x1940(%rsp,%rdx,1),%rax
    17ac:	00 
    17ad:	48 01 f0             	add    %rsi,%rax
    17b0:	8b 04 b8             	mov    (%rax,%rdi,4),%eax
    17b3:	44 89 d1             	mov    %r10d,%ecx
    17b6:	29 c1                	sub    %eax,%ecx
    17b8:	83 c0 20             	add    $0x20,%eax
    17bb:	48 8d 9c 14 40 29 00 	lea    0x2940(%rsp,%rdx,1),%rbx
    17c2:	00 
    17c3:	48 01 f3             	add    %rsi,%rbx
    17c6:	44 39 d0             	cmp    %r10d,%eax
    17c9:	0f 4e 0c bb          	cmovle (%rbx,%rdi,4),%ecx
    17cd:	48 8d 84 14 40 15 00 	lea    0x1540(%rsp,%rdx,1),%rax
    17d4:	00 
    17d5:	48 01 f0             	add    %rsi,%rax
    17d8:	89 0c b8             	mov    %ecx,(%rax,%rdi,4)
    17db:	48 8d 84 14 40 2b 00 	lea    0x2b40(%rsp,%rdx,1),%rax
    17e2:	00 
    17e3:	48 01 f0             	add    %rsi,%rax
    17e6:	8b 04 b8             	mov    (%rax,%rdi,4),%eax
    17e9:	85 c9                	test   %ecx,%ecx
    17eb:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
    17f0:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
    17f5:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
    17fa:	0f 8e d6 01 00 00    	jle    19d6 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1236>
    1800:	89 c9                	mov    %ecx,%ecx
    1802:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    1807:	48 8d 8c 14 40 0f 00 	lea    0xf40(%rsp,%rdx,1),%rcx
    180e:	00 
    180f:	48 01 f1             	add    %rsi,%rcx
    1812:	48 8d 1c b9          	lea    (%rcx,%rdi,4),%rbx
    1816:	48 8d 8c 14 40 11 00 	lea    0x1140(%rsp,%rdx,1),%rcx
    181d:	00 
    181e:	48 01 f1             	add    %rsi,%rcx
    1821:	4c 8d 24 b9          	lea    (%rcx,%rdi,4),%r12
    1825:	48 8d 8c 14 40 13 00 	lea    0x1340(%rsp,%rdx,1),%rcx
    182c:	00 
    182d:	48 01 f1             	add    %rsi,%rcx
    1830:	4c 8d 3c b9          	lea    (%rcx,%rdi,4),%r15
    1834:	31 c9                	xor    %ecx,%ecx
    1836:	31 d2                	xor    %edx,%edx
    1838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    183f:	00 
    1840:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
    1845:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    184a:	48 63 c9             	movslq %ecx,%rcx
    184d:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    1854:	00 
    1855:	4c 8d 34 8a          	lea    (%rdx,%rcx,4),%r14
    1859:	45 31 ed             	xor    %r13d,%r13d
    185c:	0f 1f 40 00          	nopl   0x0(%rax)
    1860:	c4 c1 7a 10 26       	vmovss (%r14),%xmm4
    1865:	c5 f8 2e e3          	vucomiss %xmm3,%xmm4
    1869:	75 06                	jne    1871 <_pocl_launcher_opencl_cutoff_potential_lattice+0x10d1>
    186b:	0f 8b 49 01 00 00    	jnp    19ba <_pocl_launcher_opencl_cutoff_potential_lattice+0x121a>
    1871:	c4 c1 7a 10 46 fc    	vmovss -0x4(%r14),%xmm0
    1877:	c4 c1 7a 10 4e f4    	vmovss -0xc(%r14),%xmm1
    187d:	c4 c1 7a 10 56 f8    	vmovss -0x8(%r14),%xmm2
    1883:	c5 f2 5c 0b          	vsubss (%rbx),%xmm1,%xmm1
    1887:	c5 f2 59 c9          	vmulss %xmm1,%xmm1,%xmm1
    188b:	c4 c1 6a 5c 14 24    	vsubss (%r12),%xmm2,%xmm2
    1891:	c5 ea 59 d2          	vmulss %xmm2,%xmm2,%xmm2
    1895:	c5 f2 58 ca          	vaddss %xmm2,%xmm1,%xmm1
    1899:	c4 c1 7a 5c 07       	vsubss (%r15),%xmm0,%xmm0
    189e:	c5 fa 59 c0          	vmulss %xmm0,%xmm0,%xmm0
    18a2:	c5 fa 58 d1          	vaddss %xmm1,%xmm0,%xmm2
    18a6:	c5 f8 2e f2          	vucomiss %xmm2,%xmm6
    18aa:	0f 86 f8 00 00 00    	jbe    19a8 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1208>
    18b0:	c5 f9 6e c0          	vmovd  %eax,%xmm0
    18b4:	c5 f9 7e 84 24 90 00 	vmovd  %xmm0,0x90(%rsp)
    18bb:	00 00 
    18bd:	c5 ea 59 84 24 08 01 	vmulss 0x108(%rsp),%xmm2,%xmm0
    18c4:	00 00 
    18c6:	c5 fa 11 54 24 68    	vmovss %xmm2,0x68(%rsp)
    18cc:	c5 fa 10 0d 1c 07 00 	vmovss 0x71c(%rip),%xmm1        # 1ff0 <_fini+0x30>
    18d3:	00 
    18d4:	c5 f2 5c c0          	vsubss %xmm0,%xmm1,%xmm0
    18d8:	c5 fa 11 84 24 88 00 	vmovss %xmm0,0x88(%rsp)
    18df:	00 00 
    18e1:	c5 f8 28 c2          	vmovaps %xmm2,%xmm0
    18e5:	c5 fa 11 a4 24 80 00 	vmovss %xmm4,0x80(%rsp)
    18ec:	00 00 
    18ee:	c5 f8 77             	vzeroupper 
    18f1:	e8 4a ed ff ff       	callq  640 <ilogbf@plt>
    18f6:	89 c1                	mov    %eax,%ecx
    18f8:	83 e1 01             	and    $0x1,%ecx
    18fb:	48 8d 15 a6 07 00 00 	lea    0x7a6(%rip),%rdx        # 20a8 <_fini+0xe8>
    1902:	c5 fa 10 04 8a       	vmovss (%rdx,%rcx,4),%xmm0
    1907:	d1 f8                	sar    %eax
    1909:	f7 d8                	neg    %eax
    190b:	89 c7                	mov    %eax,%edi
    190d:	e8 3e ed ff ff       	callq  650 <ldexpf@plt>
    1912:	c5 e1 ef db          	vpxor  %xmm3,%xmm3,%xmm3
    1916:	c5 fa 10 b4 24 00 01 	vmovss 0x100(%rsp),%xmm6
    191d:	00 00 
    191f:	c5 fa 10 0d cd 06 00 	vmovss 0x6cd(%rip),%xmm1        # 1ff4 <_fini+0x34>
    1926:	00 
    1927:	c5 f8 28 e1          	vmovaps %xmm1,%xmm4
    192b:	c5 da 59 4c 24 68    	vmulss 0x68(%rsp),%xmm4,%xmm1
    1931:	c5 f2 59 d0          	vmulss %xmm0,%xmm1,%xmm2
    1935:	c5 fa 59 d2          	vmulss %xmm2,%xmm0,%xmm2
    1939:	c5 da 5c d2          	vsubss %xmm2,%xmm4,%xmm2
    193d:	c5 fa 59 d2          	vmulss %xmm2,%xmm0,%xmm2
    1941:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
    1945:	c5 f2 59 d0          	vmulss %xmm0,%xmm1,%xmm2
    1949:	c5 fa 59 d2          	vmulss %xmm2,%xmm0,%xmm2
    194d:	c5 da 5c d2          	vsubss %xmm2,%xmm4,%xmm2
    1951:	c5 fa 59 d2          	vmulss %xmm2,%xmm0,%xmm2
    1955:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
    1959:	c5 f2 59 d0          	vmulss %xmm0,%xmm1,%xmm2
    195d:	c5 fa 59 d2          	vmulss %xmm2,%xmm0,%xmm2
    1961:	c5 da 5c d2          	vsubss %xmm2,%xmm4,%xmm2
    1965:	c5 fa 59 d2          	vmulss %xmm2,%xmm0,%xmm2
    1969:	c5 fa 58 c2          	vaddss %xmm2,%xmm0,%xmm0
    196d:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
    1971:	c5 fa 59 c9          	vmulss %xmm1,%xmm0,%xmm1
    1975:	c5 da 5c c9          	vsubss %xmm1,%xmm4,%xmm1
    1979:	c5 fa 59 c9          	vmulss %xmm1,%xmm0,%xmm1
    197d:	c5 fa 58 c1          	vaddss %xmm1,%xmm0,%xmm0
    1981:	c5 fa 59 84 24 80 00 	vmulss 0x80(%rsp),%xmm0,%xmm0
    1988:	00 00 
    198a:	c5 fa 10 8c 24 88 00 	vmovss 0x88(%rsp),%xmm1
    1991:	00 00 
    1993:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
    1997:	c5 f2 59 c0          	vmulss %xmm0,%xmm1,%xmm0
    199b:	c5 fa 58 84 24 90 00 	vaddss 0x90(%rsp),%xmm0,%xmm0
    19a2:	00 00 
    19a4:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    19a8:	49 83 c5 01          	add    $0x1,%r13
    19ac:	49 83 c6 10          	add    $0x10,%r14
    19b0:	49 83 fd 08          	cmp    $0x8,%r13
    19b4:	0f 8c a6 fe ff ff    	jl     1860 <_pocl_launcher_opencl_cutoff_potential_lattice+0x10c0>
    19ba:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
    19bf:	48 83 c2 01          	add    $0x1,%rdx
    19c3:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
    19c8:	83 c1 20             	add    $0x20,%ecx
    19cb:	48 3b 54 24 50       	cmp    0x50(%rsp),%rdx
    19d0:	0f 85 6a fe ff ff    	jne    1840 <_pocl_launcher_opencl_cutoff_potential_lattice+0x10a0>
    19d6:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
    19db:	48 8d 8c 0c 40 17 00 	lea    0x1740(%rsp,%rcx,1),%rcx
    19e2:	00 
    19e3:	48 03 4c 24 38       	add    0x38(%rsp),%rcx
    19e8:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    19ed:	89 04 b9             	mov    %eax,(%rcx,%rdi,4)
    19f0:	48 83 c7 01          	add    $0x1,%rdi
    19f4:	48 83 ff 08          	cmp    $0x8,%rdi
    19f8:	44 8b 94 24 98 00 00 	mov    0x98(%rsp),%r10d
    19ff:	00 
    1a00:	0f 85 8a fd ff ff    	jne    1790 <_pocl_launcher_opencl_cutoff_potential_lattice+0xff0>
    1a06:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    1a0b:	48 89 c1             	mov    %rax,%rcx
    1a0e:	48 83 c1 01          	add    $0x1,%rcx
    1a12:	48 89 c8             	mov    %rcx,%rax
    1a15:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    1a1a:	48 83 f9 08          	cmp    $0x8,%rcx
    1a1e:	0f 85 5c fd ff ff    	jne    1780 <_pocl_launcher_opencl_cutoff_potential_lattice+0xfe0>
    1a24:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    1a29:	48 89 c1             	mov    %rax,%rcx
    1a2c:	48 83 c1 01          	add    $0x1,%rcx
    1a30:	48 89 c8             	mov    %rcx,%rax
    1a33:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    1a38:	48 83 f9 02          	cmp    $0x2,%rcx
    1a3c:	0f 85 2e fd ff ff    	jne    1770 <_pocl_launcher_opencl_cutoff_potential_lattice+0xfd0>
    1a42:	4c 8d 84 24 40 15 00 	lea    0x1540(%rsp),%r8
    1a49:	00 
    1a4a:	4c 8d 8c 24 40 19 00 	lea    0x1940(%rsp),%r9
    1a51:	00 
    1a52:	4c 8d 9c 24 40 27 00 	lea    0x2740(%rsp),%r11
    1a59:	00 
    1a5a:	31 f6                	xor    %esi,%esi
    1a5c:	0f 1f 40 00          	nopl   0x0(%rax)
    1a60:	4d 89 c6             	mov    %r8,%r14
    1a63:	4d 89 cf             	mov    %r9,%r15
    1a66:	4d 89 dc             	mov    %r11,%r12
    1a69:	45 31 ed             	xor    %r13d,%r13d
    1a6c:	0f 1f 40 00          	nopl   0x0(%rax)
    1a70:	4c 89 f7             	mov    %r14,%rdi
    1a73:	4c 89 fb             	mov    %r15,%rbx
    1a76:	4c 89 e0             	mov    %r12,%rax
    1a79:	ba 08 00 00 00       	mov    $0x8,%edx
    1a7e:	66 90                	xchg   %ax,%ax
    1a80:	8b 0b                	mov    (%rbx),%ecx
    1a82:	03 0f                	add    (%rdi),%ecx
    1a84:	89 08                	mov    %ecx,(%rax)
    1a86:	48 83 c0 04          	add    $0x4,%rax
    1a8a:	48 83 c3 04          	add    $0x4,%rbx
    1a8e:	48 83 c7 04          	add    $0x4,%rdi
    1a92:	48 83 c2 ff          	add    $0xffffffffffffffff,%rdx
    1a96:	75 e8                	jne    1a80 <_pocl_launcher_opencl_cutoff_potential_lattice+0x12e0>
    1a98:	49 83 c5 01          	add    $0x1,%r13
    1a9c:	49 83 c4 20          	add    $0x20,%r12
    1aa0:	49 83 c7 20          	add    $0x20,%r15
    1aa4:	49 83 c6 20          	add    $0x20,%r14
    1aa8:	49 83 fd 08          	cmp    $0x8,%r13
    1aac:	75 c2                	jne    1a70 <_pocl_launcher_opencl_cutoff_potential_lattice+0x12d0>
    1aae:	48 83 c6 01          	add    $0x1,%rsi
    1ab2:	49 81 c3 00 01 00 00 	add    $0x100,%r11
    1ab9:	49 81 c1 00 01 00 00 	add    $0x100,%r9
    1ac0:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    1ac7:	48 83 fe 02          	cmp    $0x2,%rsi
    1acb:	75 93                	jne    1a60 <_pocl_launcher_opencl_cutoff_potential_lattice+0x12c0>
    1acd:	44 39 d1             	cmp    %r10d,%ecx
    1ad0:	0f 8c 1a f7 ff ff    	jl     11f0 <_pocl_launcher_opencl_cutoff_potential_lattice+0xa50>
    1ad6:	4c 8d 84 24 40 2f 00 	lea    0x2f40(%rsp),%r8
    1add:	00 
    1ade:	4c 8d 8c 24 40 17 00 	lea    0x1740(%rsp),%r9
    1ae5:	00 
    1ae6:	45 31 d2             	xor    %r10d,%r10d
    1ae9:	48 8b 9c 24 30 01 00 	mov    0x130(%rsp),%rbx
    1af0:	00 
    1af1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    1af8:	0f 1f 84 00 00 00 00 
    1aff:	00 
    1b00:	4d 89 cb             	mov    %r9,%r11
    1b03:	4d 89 c6             	mov    %r8,%r14
    1b06:	45 31 ff             	xor    %r15d,%r15d
    1b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b10:	4c 89 de             	mov    %r11,%rsi
    1b13:	4c 89 f7             	mov    %r14,%rdi
    1b16:	ba 08 00 00 00       	mov    $0x8,%edx
    1b1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b20:	8b 06                	mov    (%rsi),%eax
    1b22:	48 63 0f             	movslq (%rdi),%rcx
    1b25:	89 04 8b             	mov    %eax,(%rbx,%rcx,4)
    1b28:	48 83 c7 08          	add    $0x8,%rdi
    1b2c:	48 83 c6 04          	add    $0x4,%rsi
    1b30:	48 83 c2 ff          	add    $0xffffffffffffffff,%rdx
    1b34:	75 ea                	jne    1b20 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1380>
    1b36:	49 83 c7 01          	add    $0x1,%r15
    1b3a:	49 83 c6 40          	add    $0x40,%r14
    1b3e:	49 83 c3 20          	add    $0x20,%r11
    1b42:	49 83 ff 08          	cmp    $0x8,%r15
    1b46:	75 c8                	jne    1b10 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1370>
    1b48:	49 83 c2 01          	add    $0x1,%r10
    1b4c:	49 81 c0 00 02 00 00 	add    $0x200,%r8
    1b53:	49 81 c1 00 01 00 00 	add    $0x100,%r9
    1b5a:	49 83 fa 02          	cmp    $0x2,%r10
    1b5e:	75 a0                	jne    1b00 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1360>
    1b60:	e9 57 03 00 00       	jmpq   1ebc <_pocl_launcher_opencl_cutoff_potential_lattice+0x171c>
    1b65:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    1b6b:	49 c1 e3 09          	shl    $0x9,%r11
    1b6f:	49 c1 e7 09          	shl    $0x9,%r15
    1b73:	4d 01 df             	add    %r11,%r15
    1b76:	4d 01 d7             	add    %r10,%r15
    1b79:	4b 8d 34 b8          	lea    (%r8,%r15,4),%rsi
    1b7d:	4c 8d 84 24 40 03 00 	lea    0x340(%rsp),%r8
    1b84:	00 
    1b85:	48 8d 84 24 40 13 00 	lea    0x1340(%rsp),%rax
    1b8c:	00 
    1b8d:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    1b94:	00 
    1b95:	48 8d 84 24 40 11 00 	lea    0x1140(%rsp),%rax
    1b9c:	00 
    1b9d:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
    1ba4:	00 
    1ba5:	48 8d 84 24 40 0f 00 	lea    0xf40(%rsp),%rax
    1bac:	00 
    1bad:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
    1bb4:	00 
    1bb5:	48 8d 84 24 40 01 00 	lea    0x140(%rsp),%rax
    1bbc:	00 
    1bbd:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
    1bc4:	00 
    1bc5:	48 8d 84 24 40 2f 00 	lea    0x2f40(%rsp),%rax
    1bcc:	00 
    1bcd:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
    1bd4:	00 
    1bd5:	bf 01 00 00 00       	mov    $0x1,%edi
    1bda:	31 c0                	xor    %eax,%eax
    1bdc:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
    1be3:	00 
    1be4:	31 d2                	xor    %edx,%edx
    1be6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1bed:	00 00 00 
    1bf0:	48 89 d0             	mov    %rdx,%rax
    1bf3:	48 03 44 24 78       	add    0x78(%rsp),%rax
    1bf8:	78 16                	js     1c10 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1470>
    1bfa:	c4 e1 fa 2a c8       	vcvtsi2ss %rax,%xmm0,%xmm1
    1bff:	eb 2a                	jmp    1c2b <_pocl_launcher_opencl_cutoff_potential_lattice+0x148b>
    1c01:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    1c08:	0f 1f 84 00 00 00 00 
    1c0f:	00 
    1c10:	48 89 f1             	mov    %rsi,%rcx
    1c13:	48 89 c6             	mov    %rax,%rsi
    1c16:	48 d1 ee             	shr    %rsi
    1c19:	83 e0 01             	and    $0x1,%eax
    1c1c:	48 09 f0             	or     %rsi,%rax
    1c1f:	48 89 ce             	mov    %rcx,%rsi
    1c22:	c4 e1 fa 2a c8       	vcvtsi2ss %rax,%xmm0,%xmm1
    1c27:	c5 f2 58 c9          	vaddss %xmm1,%xmm1,%xmm1
    1c2b:	c5 f2 59 c8          	vmulss %xmm0,%xmm1,%xmm1
    1c2f:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
    1c36:	00 
    1c37:	48 89 b4 24 c8 00 00 	mov    %rsi,0xc8(%rsp)
    1c3e:	00 
    1c3f:	49 89 f4             	mov    %rsi,%r12
    1c42:	4c 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%r10
    1c49:	00 
    1c4a:	4c 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%r9
    1c51:	00 
    1c52:	4c 8b 9c 24 d0 00 00 	mov    0xd0(%rsp),%r11
    1c59:	00 
    1c5a:	48 8b 8c 24 d8 00 00 	mov    0xd8(%rsp),%rcx
    1c61:	00 
    1c62:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
    1c69:	00 
    1c6a:	4c 89 84 24 c0 00 00 	mov    %r8,0xc0(%rsp)
    1c71:	00 
    1c72:	4c 89 c3             	mov    %r8,%rbx
    1c75:	31 c0                	xor    %eax,%eax
    1c77:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
    1c7c:	0f 1f 40 00          	nopl   0x0(%rax)
    1c80:	48 89 c2             	mov    %rax,%rdx
    1c83:	4c 01 ea             	add    %r13,%rdx
    1c86:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1c8b:	78 13                	js     1ca0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1500>
    1c8d:	c4 e1 fa 2a d2       	vcvtsi2ss %rdx,%xmm0,%xmm2
    1c92:	eb 21                	jmp    1cb5 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1515>
    1c94:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    1c9b:	00 00 00 00 00 
    1ca0:	49 89 d0             	mov    %rdx,%r8
    1ca3:	49 d1 e8             	shr    %r8
    1ca6:	83 e2 01             	and    $0x1,%edx
    1ca9:	4c 09 c2             	or     %r8,%rdx
    1cac:	c4 e1 fa 2a d2       	vcvtsi2ss %rdx,%xmm0,%xmm2
    1cb1:	c5 ea 58 d2          	vaddss %xmm2,%xmm2,%xmm2
    1cb5:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1cba:	c5 ea 59 d0          	vmulss %xmm0,%xmm2,%xmm2
    1cbe:	48 89 9c 24 f0 00 00 	mov    %rbx,0xf0(%rsp)
    1cc5:	00 
    1cc6:	48 8d 04 bb          	lea    (%rbx,%rdi,4),%rax
    1cca:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1ccf:	48 89 b4 24 f8 00 00 	mov    %rsi,0xf8(%rsp)
    1cd6:	00 
    1cd7:	48 8d 04 be          	lea    (%rsi,%rdi,4),%rax
    1cdb:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1ce2:	00 
    1ce3:	48 89 8c 24 e8 00 00 	mov    %rcx,0xe8(%rsp)
    1cea:	00 
    1ceb:	4c 8d 04 b9          	lea    (%rcx,%rdi,4),%r8
    1cef:	4c 89 9c 24 b8 00 00 	mov    %r11,0xb8(%rsp)
    1cf6:	00 
    1cf7:	4d 8d 2c bb          	lea    (%r11,%rdi,4),%r13
    1cfb:	48 8d 04 3a          	lea    (%rdx,%rdi,1),%rax
    1cff:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
    1d04:	4d 8d 34 b9          	lea    (%r9,%rdi,4),%r14
    1d08:	4c 89 54 24 58       	mov    %r10,0x58(%rsp)
    1d0d:	4d 8d 1c fa          	lea    (%r10,%rdi,8),%r11
    1d11:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
    1d16:	4d 8d 14 bc          	lea    (%r12,%rdi,4),%r10
    1d1a:	4c 89 bc 24 00 01 00 	mov    %r15,0x100(%rsp)
    1d21:	00 
    1d22:	4a 8d 14 3f          	lea    (%rdi,%r15,1),%rdx
    1d26:	31 f6                	xor    %esi,%esi
    1d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d2f:	00 
    1d30:	4c 8d 0c 32          	lea    (%rdx,%rsi,1),%r9
    1d34:	4d 89 0c f3          	mov    %r9,(%r11,%rsi,8)
    1d38:	45 89 0c b6          	mov    %r9d,(%r14,%rsi,4)
    1d3c:	49 89 c7             	mov    %rax,%r15
    1d3f:	49 01 f7             	add    %rsi,%r15
    1d42:	78 0c                	js     1d50 <_pocl_launcher_opencl_cutoff_potential_lattice+0x15b0>
    1d44:	c4 c1 fa 2a df       	vcvtsi2ss %r15,%xmm0,%xmm3
    1d49:	eb 1b                	jmp    1d66 <_pocl_launcher_opencl_cutoff_potential_lattice+0x15c6>
    1d4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1d50:	4d 89 fc             	mov    %r15,%r12
    1d53:	49 d1 ec             	shr    %r12
    1d56:	41 83 e7 01          	and    $0x1,%r15d
    1d5a:	4d 09 e7             	or     %r12,%r15
    1d5d:	c4 c1 fa 2a df       	vcvtsi2ss %r15,%xmm0,%xmm3
    1d62:	c5 e2 58 db          	vaddss %xmm3,%xmm3,%xmm3
    1d66:	c5 e2 59 d8          	vmulss %xmm0,%xmm3,%xmm3
    1d6a:	c4 c1 7a 11 5c b5 00 	vmovss %xmm3,0x0(%r13,%rsi,4)
    1d71:	c4 c1 7a 11 14 b0    	vmovss %xmm2,(%r8,%rsi,4)
    1d77:	48 8b 8c 24 08 01 00 	mov    0x108(%rsp),%rcx
    1d7e:	00 
    1d7f:	c5 fa 11 0c b1       	vmovss %xmm1,(%rcx,%rsi,4)
    1d84:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
    1d88:	8b 9c 24 90 00 00 00 	mov    0x90(%rsp),%ebx
    1d8f:	89 19                	mov    %ebx,(%rcx)
    1d91:	8b 9c 24 88 00 00 00 	mov    0x88(%rsp),%ebx
    1d98:	89 59 04             	mov    %ebx,0x4(%rcx)
    1d9b:	8b 9c 24 80 00 00 00 	mov    0x80(%rsp),%ebx
    1da2:	89 59 08             	mov    %ebx,0x8(%rcx)
    1da5:	41 c1 f9 04          	sar    $0x4,%r9d
    1da9:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
    1dae:	44 89 0c b1          	mov    %r9d,(%rcx,%rsi,4)
    1db2:	41 c7 04 b2 00 00 00 	movl   $0x0,(%r10,%rsi,4)
    1db9:	00 
    1dba:	48 8d 4c 37 01       	lea    0x1(%rdi,%rsi,1),%rcx
    1dbf:	48 83 c6 01          	add    $0x1,%rsi
    1dc3:	48 83 f9 08          	cmp    $0x8,%rcx
    1dc7:	0f 82 63 ff ff ff    	jb     1d30 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1590>
    1dcd:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1dd2:	48 83 c0 01          	add    $0x1,%rax
    1dd6:	48 8b 9c 24 f0 00 00 	mov    0xf0(%rsp),%rbx
    1ddd:	00 
    1dde:	48 83 c3 20          	add    $0x20,%rbx
    1de2:	48 8b b4 24 f8 00 00 	mov    0xf8(%rsp),%rsi
    1de9:	00 
    1dea:	48 83 c6 20          	add    $0x20,%rsi
    1dee:	48 8b 8c 24 e8 00 00 	mov    0xe8(%rsp),%rcx
    1df5:	00 
    1df6:	48 83 c1 20          	add    $0x20,%rcx
    1dfa:	4c 8b 9c 24 b8 00 00 	mov    0xb8(%rsp),%r11
    1e01:	00 
    1e02:	49 83 c3 20          	add    $0x20,%r11
    1e06:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
    1e0b:	49 83 c1 20          	add    $0x20,%r9
    1e0f:	4c 8b 54 24 58       	mov    0x58(%rsp),%r10
    1e14:	49 83 c2 40          	add    $0x40,%r10
    1e18:	4c 8b 64 24 60       	mov    0x60(%rsp),%r12
    1e1d:	49 83 c4 20          	add    $0x20,%r12
    1e21:	4c 8b bc 24 00 01 00 	mov    0x100(%rsp),%r15
    1e28:	00 
    1e29:	49 83 c7 08          	add    $0x8,%r15
    1e2d:	bf 00 00 00 00       	mov    $0x0,%edi
    1e32:	48 83 f8 08          	cmp    $0x8,%rax
    1e36:	4c 8b 6c 24 70       	mov    0x70(%rsp),%r13
    1e3b:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    1e40:	0f 85 3a fe ff ff    	jne    1c80 <_pocl_launcher_opencl_cutoff_potential_lattice+0x14e0>
    1e46:	48 83 c2 01          	add    $0x1,%rdx
    1e4a:	4c 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%r8
    1e51:	00 
    1e52:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    1e59:	48 81 84 24 98 00 00 	addq   $0x100,0x98(%rsp)
    1e60:	00 00 01 00 00 
    1e65:	48 81 84 24 d8 00 00 	addq   $0x100,0xd8(%rsp)
    1e6c:	00 00 01 00 00 
    1e71:	48 81 84 24 d0 00 00 	addq   $0x100,0xd0(%rsp)
    1e78:	00 00 01 00 00 
    1e7d:	48 81 84 24 b0 00 00 	addq   $0x100,0xb0(%rsp)
    1e84:	00 00 01 00 00 
    1e89:	48 81 84 24 a8 00 00 	addq   $0x200,0xa8(%rsp)
    1e90:	00 00 02 00 00 
    1e95:	48 8b b4 24 c8 00 00 	mov    0xc8(%rsp),%rsi
    1e9c:	00 
    1e9d:	48 81 c6 00 01 00 00 	add    $0x100,%rsi
    1ea4:	48 83 84 24 a0 00 00 	addq   $0x40,0xa0(%rsp)
    1eab:	00 40 
    1ead:	bf 00 00 00 00       	mov    $0x0,%edi
    1eb2:	48 83 fa 02          	cmp    $0x2,%rdx
    1eb6:	0f 85 34 fd ff ff    	jne    1bf0 <_pocl_launcher_opencl_cutoff_potential_lattice+0x1450>
    1ebc:	48 8b a4 24 18 01 00 	mov    0x118(%rsp),%rsp
    1ec3:	00 
    1ec4:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    1ec8:	5b                   	pop    %rbx
    1ec9:	41 5c                	pop    %r12
    1ecb:	41 5d                	pop    %r13
    1ecd:	41 5e                	pop    %r14
    1ecf:	41 5f                	pop    %r15
    1ed1:	5d                   	pop    %rbp
    1ed2:	c5 f8 77             	vzeroupper 
    1ed5:	c3                   	retq   
    1ed6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1edd:	00 00 00 

0000000000001ee0 <_pocl_launcher_opencl_cutoff_potential_lattice_workgroup>:
    1ee0:	41 57                	push   %r15
    1ee2:	41 56                	push   %r14
    1ee4:	53                   	push   %rbx
    1ee5:	49 89 f2             	mov    %rsi,%r10
    1ee8:	48 8b 07             	mov    (%rdi),%rax
    1eeb:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
    1eef:	44 8b 18             	mov    (%rax),%r11d
    1ef2:	8b 31                	mov    (%rcx),%esi
    1ef4:	48 8b 4f 10          	mov    0x10(%rdi),%rcx
    1ef8:	48 8b 11             	mov    (%rcx),%rdx
    1efb:	48 8b 4f 18          	mov    0x18(%rdi),%rcx
    1eff:	8b 09                	mov    (%rcx),%ecx
    1f01:	48 8b 47 20          	mov    0x20(%rdi),%rax
    1f05:	c5 fa 10 00          	vmovss (%rax),%xmm0
    1f09:	48 8b 47 28          	mov    0x28(%rdi),%rax
    1f0d:	c5 fa 10 08          	vmovss (%rax),%xmm1
    1f11:	48 8b 47 30          	mov    0x30(%rdi),%rax
    1f15:	c5 fa 10 10          	vmovss (%rax),%xmm2
    1f19:	48 8b 47 38          	mov    0x38(%rdi),%rax
    1f1d:	4c 8b 00             	mov    (%rax),%r8
    1f20:	48 8b 47 40          	mov    0x40(%rdi),%rax
    1f24:	44 8b 08             	mov    (%rax),%r9d
    1f27:	4c 8b 77 48          	mov    0x48(%rdi),%r14
    1f2b:	4c 8b 7f 50          	mov    0x50(%rdi),%r15
    1f2f:	48 8b 47 58          	mov    0x58(%rdi),%rax
    1f33:	48 8b 5f 60          	mov    0x60(%rdi),%rbx
    1f37:	48 83 ec 08          	sub    $0x8,%rsp
    1f3b:	44 89 df             	mov    %r11d,%edi
    1f3e:	41 52                	push   %r10
    1f40:	ff 33                	pushq  (%rbx)
    1f42:	ff 30                	pushq  (%rax)
    1f44:	41 ff 37             	pushq  (%r15)
    1f47:	41 ff 36             	pushq  (%r14)
    1f4a:	e8 11 e7 ff ff       	callq  660 <_pocl_launcher_opencl_cutoff_potential_lattice@plt>
    1f4f:	48 83 c4 30          	add    $0x30,%rsp
    1f53:	5b                   	pop    %rbx
    1f54:	41 5e                	pop    %r14
    1f56:	41 5f                	pop    %r15
    1f58:	c3                   	retq   
    1f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001f60 <_pocl_launcher_opencl_cutoff_potential_lattice_workgroup_fast>:
    1f60:	50                   	push   %rax
    1f61:	49 89 f2             	mov    %rsi,%r10
    1f64:	49 89 fb             	mov    %rdi,%r11
    1f67:	49 8b 0b             	mov    (%r11),%rcx
    1f6a:	49 8b 53 08          	mov    0x8(%r11),%rdx
    1f6e:	8b 39                	mov    (%rcx),%edi
    1f70:	8b 32                	mov    (%rdx),%esi
    1f72:	49 8b 53 10          	mov    0x10(%r11),%rdx
    1f76:	49 8b 4b 18          	mov    0x18(%r11),%rcx
    1f7a:	8b 09                	mov    (%rcx),%ecx
    1f7c:	49 8b 43 20          	mov    0x20(%r11),%rax
    1f80:	c5 fa 10 00          	vmovss (%rax),%xmm0
    1f84:	49 8b 43 28          	mov    0x28(%r11),%rax
    1f88:	c5 fa 10 08          	vmovss (%rax),%xmm1
    1f8c:	49 8b 43 30          	mov    0x30(%r11),%rax
    1f90:	c5 fa 10 10          	vmovss (%rax),%xmm2
    1f94:	4d 8b 43 38          	mov    0x38(%r11),%r8
    1f98:	49 8b 43 40          	mov    0x40(%r11),%rax
    1f9c:	44 8b 08             	mov    (%rax),%r9d
    1f9f:	48 83 ec 08          	sub    $0x8,%rsp
    1fa3:	41 52                	push   %r10
    1fa5:	41 ff 73 60          	pushq  0x60(%r11)
    1fa9:	41 ff 73 58          	pushq  0x58(%r11)
    1fad:	41 ff 73 50          	pushq  0x50(%r11)
    1fb1:	41 ff 73 48          	pushq  0x48(%r11)
    1fb5:	e8 a6 e6 ff ff       	callq  660 <_pocl_launcher_opencl_cutoff_potential_lattice@plt>
    1fba:	48 83 c4 30          	add    $0x30,%rsp
    1fbe:	58                   	pop    %rax
    1fbf:	c3                   	retq   

Disassembly of section .fini:

0000000000001fc0 <_fini>:
    1fc0:	48 83 ec 08          	sub    $0x8,%rsp
    1fc4:	48 83 c4 08          	add    $0x8,%rsp
    1fc8:	c3                   	retq   

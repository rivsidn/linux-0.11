
a.out:     file format a.out-i386-linux


Disassembly of section .text:

00000000 <__entry>:
       0:	8b 44 24 08          	mov    0x8(%esp),%eax
       4:	a3 00 30 00 00       	mov    %eax,0x3000
       9:	e8 22 00 00 00       	call   30 <_main>
       e:	6a 00                	push   $0x0
      10:	e8 ff 0d 00 00       	call   e14 <_exit>
      15:	eb f9                	jmp    10 <__entry+0x10>
	...

00000018 <gcc_compiled.>:
      18:	67 6c                	insb   (%dx),%es:(%di)
      1a:	6f                   	outsl  %ds:(%esi),(%dx)
      1b:	62 61 6c             	bound  %esp,0x6c(%ecx)
      1e:	3a 25 70 0a 00 6c    	cmp    0x6c000a70,%ah
      24:	6f                   	outsl  %ds:(%esi),(%dx)
      25:	63 61 6c             	arpl   %sp,0x6c(%ecx)
      28:	20 3a                	and    %bh,(%edx)
      2a:	25 70 0a 00 00       	and    $0xa70,%eax
	...

00000030 <_main>:
      30:	55                   	push   %ebp
      31:	89 e5                	mov    %esp,%ebp
      33:	83 ec 04             	sub    $0x4,%esp
      36:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%ebp)
      3d:	68 04 30 00 00       	push   $0x3004
      42:	68 18 00 00 00       	push   $0x18
      47:	e8 18 00 00 00       	call   64 <_printf>
      4c:	8d 45 fc             	lea    -0x4(%ebp),%eax
      4f:	50                   	push   %eax
      50:	68 23 00 00 00       	push   $0x23
      55:	e8 0a 00 00 00       	call   64 <_printf>
      5a:	31 c0                	xor    %eax,%eax
      5c:	eb 02                	jmp    60 <_main+0x30>
      5e:	00 00                	add    %al,(%eax)
      60:	c9                   	leave  
      61:	c3                   	ret    
	...

00000064 <_printf>:
      64:	8d 44 24 08          	lea    0x8(%esp),%eax
      68:	50                   	push   %eax
      69:	ff 74 24 08          	pushl  0x8(%esp)
      6d:	68 0c 30 00 00       	push   $0x300c
      72:	e8 b9 01 00 00       	call   230 <___vfprintf>
      77:	83 c4 0c             	add    $0xc,%esp
      7a:	c3                   	ret    
	...

0000007c <___utod>:
      7c:	56                   	push   %esi
      7d:	53                   	push   %ebx
      7e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
      82:	8b 5c 24 10          	mov    0x10(%esp),%ebx
      86:	89 c8                	mov    %ecx,%eax
      88:	be 0a 00 00 00       	mov    $0xa,%esi
      8d:	31 d2                	xor    %edx,%edx
      8f:	f7 f6                	div    %esi
      91:	4b                   	dec    %ebx
      92:	88 ca                	mov    %cl,%dl
      94:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
      97:	01 c9                	add    %ecx,%ecx
      99:	28 ca                	sub    %cl,%dl
      9b:	80 c2 30             	add    $0x30,%dl
      9e:	88 13                	mov    %dl,(%ebx)
      a0:	89 c1                	mov    %eax,%ecx
      a2:	85 c9                	test   %ecx,%ecx
      a4:	75 e0                	jne    86 <___utod+0xa>
      a6:	89 d8                	mov    %ebx,%eax
      a8:	5b                   	pop    %ebx
      a9:	5e                   	pop    %esi
      aa:	c3                   	ret    
	...

000000ac <___utoo>:
      ac:	8b 54 24 04          	mov    0x4(%esp),%edx
      b0:	8b 4c 24 08          	mov    0x8(%esp),%ecx
      b4:	49                   	dec    %ecx
      b5:	88 d0                	mov    %dl,%al
      b7:	24 07                	and    $0x7,%al
      b9:	04 30                	add    $0x30,%al
      bb:	88 01                	mov    %al,(%ecx)
      bd:	c1 ea 03             	shr    $0x3,%edx
      c0:	75 f2                	jne    b4 <___utoo+0x8>
      c2:	89 c8                	mov    %ecx,%eax
      c4:	c3                   	ret    
      c5:	00 00                	add    %al,(%eax)
	...

000000c8 <___utox>:
      c8:	56                   	push   %esi
      c9:	53                   	push   %ebx
      ca:	8b 54 24 0c          	mov    0xc(%esp),%edx
      ce:	8b 4c 24 10          	mov    0x10(%esp),%ecx
      d2:	8b 74 24 14          	mov    0x14(%esp),%esi
      d6:	49                   	dec    %ecx
      d7:	89 d0                	mov    %edx,%eax
      d9:	83 e0 0f             	and    $0xf,%eax
      dc:	8a 1c 30             	mov    (%eax,%esi,1),%bl
      df:	88 19                	mov    %bl,(%ecx)
      e1:	c1 ea 04             	shr    $0x4,%edx
      e4:	75 f0                	jne    d6 <___utox+0xe>
      e6:	89 c8                	mov    %ecx,%eax
      e8:	5b                   	pop    %ebx
      e9:	5e                   	pop    %esi
      ea:	c3                   	ret    
	...

000000ec <___printv>:
      ec:	55                   	push   %ebp
      ed:	89 e5                	mov    %esp,%ebp
      ef:	83 ec 1c             	sub    $0x1c,%esp
      f2:	57                   	push   %edi
      f3:	56                   	push   %esi
      f4:	53                   	push   %ebx
      f5:	8b 45 0c             	mov    0xc(%ebp),%eax
      f8:	89 45 fc             	mov    %eax,-0x4(%ebp)
      fb:	8b 45 10             	mov    0x10(%ebp),%eax
      fe:	89 45 f8             	mov    %eax,-0x8(%ebp)
     101:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
     108:	8b 45 08             	mov    0x8(%ebp),%eax
     10b:	83 c0 1b             	add    $0x1b,%eax
     10e:	89 45 e8             	mov    %eax,-0x18(%ebp)
     111:	8b 45 08             	mov    0x8(%ebp),%eax
     114:	66 f7 40 18 04 00    	testw  $0x4,0x18(%eax)
     11a:	75 10                	jne    12c <___printv+0x40>
     11c:	8b 48 08             	mov    0x8(%eax),%ecx
     11f:	2b 48 10             	sub    0x10(%eax),%ecx
     122:	8b 58 14             	mov    0x14(%eax),%ebx
     125:	29 cb                	sub    %ecx,%ebx
     127:	eb 14                	jmp    13d <___printv+0x51>
     129:	00 00                	add    %al,(%eax)
     12b:	00 8b 4d e8 8b 45    	add    %cl,0x458be84d(%ebx)
     131:	08 89 48 10 89 48    	or     %cl,0x48891048(%ecx)
     137:	0c 89                	or     $0x89,%al
     139:	48                   	dec    %eax
     13a:	08 31                	or     %dh,(%ecx)
     13c:	db 8b 45 08 8b 50    	fisttpl 0x508b0845(%ebx)
     142:	08 8b 45 ec 89 45    	or     %cl,0x4589ec45(%ebx)
     148:	e4 85                	in     $0x85,%al
     14a:	c0 74 48 85 db       	shlb   $0xdb,-0x7b(%eax,%ecx,2)
     14f:	74 44                	je     195 <___printv+0xa9>
     151:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
     154:	73 03                	jae    159 <___printv+0x6d>
     156:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
     159:	2b 5d e4             	sub    -0x1c(%ebp),%ebx
     15c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     15f:	29 45 ec             	sub    %eax,-0x14(%ebp)
     162:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     166:	74 10                	je     178 <___printv+0x8c>
     168:	8b 75 f4             	mov    -0xc(%ebp),%esi
     16b:	8a 06                	mov    (%esi),%al
     16d:	89 d7                	mov    %edx,%edi
     16f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
     172:	fc                   	cld    
     173:	f3 aa                	rep stos %al,%es:(%edi)
     175:	eb 18                	jmp    18f <___printv+0xa3>
     177:	00 8b 4d e4 8b 75    	add    %cl,0x758be44d(%ebx)
     17d:	f4                   	hlt    
     17e:	89 d7                	mov    %edx,%edi
     180:	fc                   	cld    
     181:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
     183:	8b 45 f4             	mov    -0xc(%ebp),%eax
     186:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
     189:	8d 0c 01             	lea    (%ecx,%eax,1),%ecx
     18c:	89 4d f4             	mov    %ecx,-0xc(%ebp)
     18f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     192:	8d 14 10             	lea    (%eax,%edx,1),%edx
     195:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     199:	75 39                	jne    1d4 <___printv+0xe8>
     19b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
     19f:	75 0b                	jne    1ac <___printv+0xc0>
     1a1:	8b 45 08             	mov    0x8(%ebp),%eax
     1a4:	89 50 08             	mov    %edx,0x8(%eax)
     1a7:	eb 77                	jmp    220 <___printv+0x134>
     1a9:	00 00                	add    %al,(%eax)
     1ab:	00 8b 45 f8 8b 08    	add    %cl,0x88bf845(%ebx)
     1b1:	83 e1 01             	and    $0x1,%ecx
     1b4:	89 4d f0             	mov    %ecx,-0x10(%ebp)
     1b7:	8b 48 04             	mov    0x4(%eax),%ecx
     1ba:	89 4d ec             	mov    %ecx,-0x14(%ebp)
     1bd:	8b 48 08             	mov    0x8(%eax),%ecx
     1c0:	89 4d f4             	mov    %ecx,-0xc(%ebp)
     1c3:	ff 4d fc             	decl   -0x4(%ebp)
     1c6:	8d 48 0c             	lea    0xc(%eax),%ecx
     1c9:	89 4d f8             	mov    %ecx,-0x8(%ebp)
     1cc:	e9 72 ff ff ff       	jmp    143 <___printv+0x57>
     1d1:	00 00                	add    %al,(%eax)
     1d3:	00 8b 45 08 66 f7    	add    %cl,-0x899f7bb(%ebx)
     1d9:	40                   	inc    %eax
     1da:	18 04 00             	sbb    %al,(%eax,%eax,1)
     1dd:	74 28                	je     207 <___printv+0x11b>
     1df:	8b 4d f4             	mov    -0xc(%ebp),%ecx
     1e2:	89 48 10             	mov    %ecx,0x10(%eax)
     1e5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     1e9:	74 0d                	je     1f8 <___printv+0x10c>
     1eb:	83 7d e4 04          	cmpl   $0x4,-0x1c(%ebp)
     1ef:	76 07                	jbe    1f8 <___printv+0x10c>
     1f1:	c7 45 e4 04 00 00 00 	movl   $0x4,-0x1c(%ebp)
     1f8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     1fb:	29 45 ec             	sub    %eax,-0x14(%ebp)
     1fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
     201:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
     204:	8d 14 01             	lea    (%ecx,%eax,1),%edx
     207:	8b 45 08             	mov    0x8(%ebp),%eax
     20a:	89 50 08             	mov    %edx,0x8(%eax)
     20d:	50                   	push   %eax
     20e:	8b 48 24             	mov    0x24(%eax),%ecx
     211:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
     214:	ff d1                	call   *%ecx
     216:	83 c4 04             	add    $0x4,%esp
     219:	e9 f3 fe ff ff       	jmp    111 <___printv+0x25>
     21e:	00 00                	add    %al,(%eax)
     220:	8d 65 d8             	lea    -0x28(%ebp),%esp
     223:	5b                   	pop    %ebx
     224:	5e                   	pop    %esi
     225:	5f                   	pop    %edi
     226:	c9                   	leave  
     227:	c3                   	ret    
     228:	00 28                	add    %ch,(%eax)
     22a:	6e                   	outsb  %ds:(%esi),(%dx)
     22b:	75 6c                	jne    299 <___vfprintf+0x69>
     22d:	6c                   	insb   (%dx),%es:(%edi)
     22e:	29 00                	sub    %eax,(%eax)

00000230 <___vfprintf>:
     230:	55                   	push   %ebp
     231:	89 e5                	mov    %esp,%ebp
     233:	81 ec b4 00 00 00    	sub    $0xb4,%esp
     239:	57                   	push   %edi
     23a:	56                   	push   %esi
     23b:	53                   	push   %ebx
     23c:	8b 45 08             	mov    0x8(%ebp),%eax
     23f:	83 78 08 00          	cmpl   $0x0,0x8(%eax)
     243:	75 2b                	jne    270 <___vfprintf+0x40>
     245:	8b 4d 08             	mov    0x8(%ebp),%ecx
     248:	83 c1 1b             	add    $0x1b,%ecx
     24b:	89 48 0c             	mov    %ecx,0xc(%eax)
     24e:	50                   	push   %eax
     24f:	6a 00                	push   $0x0
     251:	8b 48 20             	mov    0x20(%eax),%ecx
     254:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%ebp)
     25a:	ff d1                	call   *%ecx
     25c:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
     262:	83 c4 08             	add    $0x8,%esp
     265:	85 c0                	test   %eax,%eax
     267:	74 07                	je     270 <___vfprintf+0x40>
     269:	31 c0                	xor    %eax,%eax
     26b:	e9 98 0b 00 00       	jmp    e08 <___vfprintf+0xbd8>
     270:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
     277:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
     27e:	8b 45 08             	mov    0x8(%ebp),%eax
     281:	8b 48 08             	mov    0x8(%eax),%ecx
     284:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
     28a:	c7 85 70 ff ff ff 00 	movl   $0x0,-0x90(%ebp)
     291:	00 00 00 
     294:	8b 45 0c             	mov    0xc(%ebp),%eax
     297:	89 45 80             	mov    %eax,-0x80(%ebp)
     29a:	8b 45 80             	mov    -0x80(%ebp),%eax
     29d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
     2a3:	8b 45 08             	mov    0x8(%ebp),%eax
     2a6:	66 f7 40 18 04 00    	testw  $0x4,0x18(%eax)
     2ac:	0f 84 8e 00 00 00    	je     340 <___vfprintf+0x110>
     2b2:	8b 45 80             	mov    -0x80(%ebp),%eax
     2b5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
     2b8:	c7 85 58 ff ff ff 25 	movl   $0x25,-0xa8(%ebp)
     2bf:	00 00 00 
     2c2:	8a 85 58 ff ff ff    	mov    -0xa8(%ebp),%al
     2c8:	8b 75 80             	mov    -0x80(%ebp),%esi
     2cb:	fc                   	cld    
     2cc:	88 c4                	mov    %al,%ah
     2ce:	ac                   	lods   %ds:(%esi),%al
     2cf:	38 e0                	cmp    %ah,%al
     2d1:	74 09                	je     2dc <___vfprintf+0xac>
     2d3:	84 c0                	test   %al,%al
     2d5:	75 f7                	jne    2ce <___vfprintf+0x9e>
     2d7:	be 01 00 00 00       	mov    $0x1,%esi
     2dc:	89 f0                	mov    %esi,%eax
     2de:	48                   	dec    %eax
     2df:	89 45 80             	mov    %eax,-0x80(%ebp)
     2e2:	85 c0                	test   %eax,%eax
     2e4:	74 12                	je     2f8 <___vfprintf+0xc8>
     2e6:	8b 45 80             	mov    -0x80(%ebp),%eax
     2e9:	2b 85 78 ff ff ff    	sub    -0x88(%ebp),%eax
     2ef:	89 45 b0             	mov    %eax,-0x50(%ebp)
     2f2:	e9 ff 01 00 00       	jmp    4f6 <___vfprintf+0x2c6>
     2f7:	00 b9 ff ff ff ff    	add    %bh,-0x1(%ecx)
     2fd:	8b bd 78 ff ff ff    	mov    -0x88(%ebp),%edi
     303:	31 c0                	xor    %eax,%eax
     305:	fc                   	cld    
     306:	f2 ae                	repnz scas %es:(%edi),%al
     308:	f7 d1                	not    %ecx
     30a:	49                   	dec    %ecx
     30b:	89 4d 84             	mov    %ecx,-0x7c(%ebp)
     30e:	01 8d 70 ff ff ff    	add    %ecx,-0x90(%ebp)
     314:	c7 45 80 28 02 00 00 	movl   $0x228,-0x80(%ebp)
     31b:	8b 45 80             	mov    -0x80(%ebp),%eax
     31e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
     324:	89 4d b0             	mov    %ecx,-0x50(%ebp)
     327:	8d 45 ac             	lea    -0x54(%ebp),%eax
     32a:	50                   	push   %eax
     32b:	6a 01                	push   $0x1
     32d:	ff 75 08             	pushl  0x8(%ebp)
     330:	e8 b7 fd ff ff       	call   ec <___printv>
     335:	83 c4 0c             	add    $0xc,%esp
     338:	e9 b9 01 00 00       	jmp    4f6 <___vfprintf+0x2c6>
     33d:	00 00                	add    %al,(%eax)
     33f:	00 8b 45 08 8b 50    	add    %cl,0x508b0845(%ebx)
     345:	08 8b 48 10 03 48    	or     %cl,0x48031048(%ebx)
     34b:	14 89                	adc    $0x89,%al
     34d:	8d 50 ff             	lea    -0x1(%eax),%edx
     350:	ff                   	(bad)  
     351:	ff 83 78 14 03 0f    	incl   0xf031478(%ebx)
     357:	86 4d 01             	xchg   %cl,0x1(%ebp)
     35a:	00 00                	add    %al,(%eax)
     35c:	8d 41 fc             	lea    -0x4(%ecx),%eax
     35f:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
     365:	39 d0                	cmp    %edx,%eax
     367:	0f 86 11 01 00 00    	jbe    47e <___vfprintf+0x24e>
     36d:	8d 42 03             	lea    0x3(%edx),%eax
     370:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
     376:	8d 5a 02             	lea    0x2(%edx),%ebx
     379:	89 d0                	mov    %edx,%eax
     37b:	40                   	inc    %eax
     37c:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
     382:	8b 4d 80             	mov    -0x80(%ebp),%ecx
     385:	8a 01                	mov    (%ecx),%al
     387:	88 85 58 ff ff ff    	mov    %al,-0xa8(%ebp)
     38d:	8a 85 58 ff ff ff    	mov    -0xa8(%ebp),%al
     393:	88 02                	mov    %al,(%edx)
     395:	3c 25                	cmp    $0x25,%al
     397:	7f 16                	jg     3af <___vfprintf+0x17f>
     399:	80 bd 58 ff ff ff 00 	cmpb   $0x0,-0xa8(%ebp)
     3a0:	0f 84 4a 01 00 00    	je     4f0 <___vfprintf+0x2c0>
     3a6:	80 3a 25             	cmpb   $0x25,(%edx)
     3a9:	0f 84 41 01 00 00    	je     4f0 <___vfprintf+0x2c0>
     3af:	8b 4d 80             	mov    -0x80(%ebp),%ecx
     3b2:	8a 41 01             	mov    0x1(%ecx),%al
     3b5:	88 85 58 ff ff ff    	mov    %al,-0xa8(%ebp)
     3bb:	8a 85 58 ff ff ff    	mov    -0xa8(%ebp),%al
     3c1:	8b 8d 54 ff ff ff    	mov    -0xac(%ebp),%ecx
     3c7:	88 01                	mov    %al,(%ecx)
     3c9:	3c 25                	cmp    $0x25,%al
     3cb:	7f 16                	jg     3e3 <___vfprintf+0x1b3>
     3cd:	80 bd 58 ff ff ff 00 	cmpb   $0x0,-0xa8(%ebp)
     3d4:	0f 84 12 01 00 00    	je     4ec <___vfprintf+0x2bc>
     3da:	80 39 25             	cmpb   $0x25,(%ecx)
     3dd:	0f 84 09 01 00 00    	je     4ec <___vfprintf+0x2bc>
     3e3:	8b 4d 80             	mov    -0x80(%ebp),%ecx
     3e6:	8a 41 02             	mov    0x2(%ecx),%al
     3e9:	88 85 58 ff ff ff    	mov    %al,-0xa8(%ebp)
     3ef:	8a 85 58 ff ff ff    	mov    -0xa8(%ebp),%al
     3f5:	88 03                	mov    %al,(%ebx)
     3f7:	3c 25                	cmp    $0x25,%al
     3f9:	7f 16                	jg     411 <___vfprintf+0x1e1>
     3fb:	80 bd 58 ff ff ff 00 	cmpb   $0x0,-0xa8(%ebp)
     402:	0f 84 d4 00 00 00    	je     4dc <___vfprintf+0x2ac>
     408:	80 3b 25             	cmpb   $0x25,(%ebx)
     40b:	0f 84 cb 00 00 00    	je     4dc <___vfprintf+0x2ac>
     411:	8b 4d 80             	mov    -0x80(%ebp),%ecx
     414:	8a 41 03             	mov    0x3(%ecx),%al
     417:	88 85 58 ff ff ff    	mov    %al,-0xa8(%ebp)
     41d:	8a 85 58 ff ff ff    	mov    -0xa8(%ebp),%al
     423:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
     429:	88 01                	mov    %al,(%ecx)
     42b:	3c 25                	cmp    $0x25,%al
     42d:	7f 16                	jg     445 <___vfprintf+0x215>
     42f:	80 bd 58 ff ff ff 00 	cmpb   $0x0,-0xa8(%ebp)
     436:	0f 84 90 00 00 00    	je     4cc <___vfprintf+0x29c>
     43c:	80 39 25             	cmpb   $0x25,(%ecx)
     43f:	0f 84 87 00 00 00    	je     4cc <___vfprintf+0x29c>
     445:	8b 45 80             	mov    -0x80(%ebp),%eax
     448:	8d 48 04             	lea    0x4(%eax),%ecx
     44b:	89 4d 80             	mov    %ecx,-0x80(%ebp)
     44e:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
     454:	8d 48 04             	lea    0x4(%eax),%ecx
     457:	89 8d 4c ff ff ff    	mov    %ecx,-0xb4(%ebp)
     45d:	83 c3 04             	add    $0x4,%ebx
     460:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
     466:	8d 48 04             	lea    0x4(%eax),%ecx
     469:	89 8d 54 ff ff ff    	mov    %ecx,-0xac(%ebp)
     46f:	83 c2 04             	add    $0x4,%edx
     472:	3b 95 50 ff ff ff    	cmp    -0xb0(%ebp),%edx
     478:	0f 82 04 ff ff ff    	jb     382 <___vfprintf+0x152>
     47e:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
     484:	8d 48 04             	lea    0x4(%eax),%ecx
     487:	89 8d 50 ff ff ff    	mov    %ecx,-0xb0(%ebp)
     48d:	eb 1a                	jmp    4a9 <___vfprintf+0x279>
     48f:	00 8b 45 80 8a 18    	add    %cl,0x188a8045(%ebx)
     495:	88 1a                	mov    %bl,(%edx)
     497:	80 fb 25             	cmp    $0x25,%bl
     49a:	7f 09                	jg     4a5 <___vfprintf+0x275>
     49c:	84 db                	test   %bl,%bl
     49e:	74 50                	je     4f0 <___vfprintf+0x2c0>
     4a0:	80 3a 25             	cmpb   $0x25,(%edx)
     4a3:	74 4b                	je     4f0 <___vfprintf+0x2c0>
     4a5:	42                   	inc    %edx
     4a6:	ff 45 80             	incl   -0x80(%ebp)
     4a9:	3b 95 50 ff ff ff    	cmp    -0xb0(%ebp),%edx
     4af:	72 df                	jb     490 <___vfprintf+0x260>
     4b1:	8b 45 08             	mov    0x8(%ebp),%eax
     4b4:	89 50 08             	mov    %edx,0x8(%eax)
     4b7:	50                   	push   %eax
     4b8:	8b 48 24             	mov    0x24(%eax),%ecx
     4bb:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%ebp)
     4c1:	ff d1                	call   *%ecx
     4c3:	83 c4 04             	add    $0x4,%esp
     4c6:	e9 75 fe ff ff       	jmp    340 <___vfprintf+0x110>
     4cb:	00 83 c2 03 8b 45    	add    %al,0x458b03c2(%ebx)
     4d1:	80 8d 48 03 89 4d 80 	orb    $0x80,0x4d890348(%ebp)
     4d8:	eb 16                	jmp    4f0 <___vfprintf+0x2c0>
     4da:	00 00                	add    %al,(%eax)
     4dc:	83 c2 02             	add    $0x2,%edx
     4df:	8b 45 80             	mov    -0x80(%ebp),%eax
     4e2:	8d 48 02             	lea    0x2(%eax),%ecx
     4e5:	89 4d 80             	mov    %ecx,-0x80(%ebp)
     4e8:	eb 06                	jmp    4f0 <___vfprintf+0x2c0>
     4ea:	00 00                	add    %al,(%eax)
     4ec:	42                   	inc    %edx
     4ed:	ff 45 80             	incl   -0x80(%ebp)
     4f0:	8b 45 08             	mov    0x8(%ebp),%eax
     4f3:	89 50 08             	mov    %edx,0x8(%eax)
     4f6:	8b 45 80             	mov    -0x80(%ebp),%eax
     4f9:	2b 85 78 ff ff ff    	sub    -0x88(%ebp),%eax
     4ff:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
     505:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
     50b:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
     511:	8d 0c 01             	lea    (%ecx,%eax,1),%ecx
     514:	89 8d 70 ff ff ff    	mov    %ecx,-0x90(%ebp)
     51a:	8b 45 80             	mov    -0x80(%ebp),%eax
     51d:	80 38 00             	cmpb   $0x0,(%eax)
     520:	0f 84 1e 08 00 00    	je     d44 <___vfprintf+0xb14>
     526:	ff 45 80             	incl   -0x80(%ebp)
     529:	8d 5d ab             	lea    -0x55(%ebp),%ebx
     52c:	89 9d 74 ff ff ff    	mov    %ebx,-0x8c(%ebp)
     532:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
     539:	00 00 00 
     53c:	c7 45 fc 80 30 00 00 	movl   $0x3080,-0x4(%ebp)
     543:	c7 85 6c ff ff ff 00 	movl   $0x0,-0x94(%ebp)
     54a:	00 00 00 
     54d:	8b 45 80             	mov    -0x80(%ebp),%eax
     550:	0f be 10             	movsbl (%eax),%edx
     553:	8d 42 e0             	lea    -0x20(%edx),%eax
     556:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
     55c:	ff 45 80             	incl   -0x80(%ebp)
     55f:	83 f8 58             	cmp    $0x58,%eax
     562:	0f 87 58 06 00 00    	ja     bc0 <___vfprintf+0x990>
     568:	ff 24 85 6f 05 00 00 	jmp    *0x56f(,%eax,4)
     56f:	ec                   	in     (%dx),%al
     570:	06                   	push   %es
     571:	00 00                	add    %al,(%eax)
     573:	c0 0b 00             	rorb   $0x0,(%ebx)
     576:	00 c0                	add    %al,%al
     578:	0b 00                	or     (%eax),%eax
     57a:	00 f8                	add    %bh,%al
     57c:	06                   	push   %es
     57d:	00 00                	add    %al,(%eax)
     57f:	c0 0b 00             	rorb   $0x0,(%ebx)
     582:	00 c0                	add    %al,%al
     584:	0b 00                	or     (%eax),%eax
     586:	00 c0                	add    %al,%al
     588:	0b 00                	or     (%eax),%eax
     58a:	00 c0                	add    %al,%al
     58c:	0b 00                	or     (%eax),%eax
     58e:	00 c0                	add    %al,%al
     590:	0b 00                	or     (%eax),%eax
     592:	00 c0                	add    %al,%al
     594:	0b 00                	or     (%eax),%eax
     596:	00 04 07             	add    %al,(%edi,%eax,1)
     599:	00 00                	add    %al,(%eax)
     59b:	e0 06                	loopne 5a3 <___vfprintf+0x373>
     59d:	00 00                	add    %al,(%eax)
     59f:	c0 0b 00             	rorb   $0x0,(%ebx)
     5a2:	00 d4                	add    %dl,%ah
     5a4:	06                   	push   %es
     5a5:	00 00                	add    %al,(%eax)
     5a7:	64 07                	fs pop %es
     5a9:	00 00                	add    %al,(%eax)
     5ab:	c0 0b 00             	rorb   $0x0,(%ebx)
     5ae:	00 2c 07             	add    %ch,(%edi,%eax,1)
     5b1:	00 00                	add    %al,(%eax)
     5b3:	5f                   	pop    %edi
     5b4:	07                   	pop    %es
     5b5:	00 00                	add    %al,(%eax)
     5b7:	5f                   	pop    %edi
     5b8:	07                   	pop    %es
     5b9:	00 00                	add    %al,(%eax)
     5bb:	5f                   	pop    %edi
     5bc:	07                   	pop    %es
     5bd:	00 00                	add    %al,(%eax)
     5bf:	5f                   	pop    %edi
     5c0:	07                   	pop    %es
     5c1:	00 00                	add    %al,(%eax)
     5c3:	5f                   	pop    %edi
     5c4:	07                   	pop    %es
     5c5:	00 00                	add    %al,(%eax)
     5c7:	5f                   	pop    %edi
     5c8:	07                   	pop    %es
     5c9:	00 00                	add    %al,(%eax)
     5cb:	5f                   	pop    %edi
     5cc:	07                   	pop    %es
     5cd:	00 00                	add    %al,(%eax)
     5cf:	5f                   	pop    %edi
     5d0:	07                   	pop    %es
     5d1:	00 00                	add    %al,(%eax)
     5d3:	5f                   	pop    %edi
     5d4:	07                   	pop    %es
     5d5:	00 00                	add    %al,(%eax)
     5d7:	c0 0b 00             	rorb   $0x0,(%ebx)
     5da:	00 c0                	add    %al,%al
     5dc:	0b 00                	or     (%eax),%eax
     5de:	00 c0                	add    %al,%al
     5e0:	0b 00                	or     (%eax),%eax
     5e2:	00 c0                	add    %al,%al
     5e4:	0b 00                	or     (%eax),%eax
     5e6:	00 c0                	add    %al,%al
     5e8:	0b 00                	or     (%eax),%eax
     5ea:	00 c0                	add    %al,%al
     5ec:	0b 00                	or     (%eax),%eax
     5ee:	00 c0                	add    %al,%al
     5f0:	0b 00                	or     (%eax),%eax
     5f2:	00 c0                	add    %al,%al
     5f4:	0b 00                	or     (%eax),%eax
     5f6:	00 c0                	add    %al,%al
     5f8:	0b 00                	or     (%eax),%eax
     5fa:	00 c0                	add    %al,%al
     5fc:	0b 00                	or     (%eax),%eax
     5fe:	00 c0                	add    %al,%al
     600:	0b 00                	or     (%eax),%eax
     602:	00 9c 0a 00 00 c0 0b 	add    %bl,0xbc00000(%edx,%ecx,1)
     609:	00 00                	add    %al,(%eax)
     60b:	b4 0a                	mov    $0xa,%ah
     60d:	00 00                	add    %al,(%eax)
     60f:	c0 0b 00             	rorb   $0x0,(%ebx)
     612:	00 c0                	add    %al,%al
     614:	0b 00                	or     (%eax),%eax
     616:	00 c0                	add    %al,%al
     618:	0b 00                	or     (%eax),%eax
     61a:	00 c0                	add    %al,%al
     61c:	0b 00                	or     (%eax),%eax
     61e:	00 28                	add    %ch,(%eax)
     620:	08 00                	or     %al,(%eax)
     622:	00 c0                	add    %al,%al
     624:	0b 00                	or     (%eax),%eax
     626:	00 c0                	add    %al,%al
     628:	0b 00                	or     (%eax),%eax
     62a:	00 c0                	add    %al,%al
     62c:	0b 00                	or     (%eax),%eax
     62e:	00 c0                	add    %al,%al
     630:	0b 00                	or     (%eax),%eax
     632:	00 c0                	add    %al,%al
     634:	0b 00                	or     (%eax),%eax
     636:	00 c0                	add    %al,%al
     638:	0b 00                	or     (%eax),%eax
     63a:	00 c0                	add    %al,%al
     63c:	0b 00                	or     (%eax),%eax
     63e:	00 c0                	add    %al,%al
     640:	0b 00                	or     (%eax),%eax
     642:	00 c0                	add    %al,%al
     644:	0b 00                	or     (%eax),%eax
     646:	00 c0                	add    %al,%al
     648:	0b 00                	or     (%eax),%eax
     64a:	00 c0                	add    %al,%al
     64c:	0b 00                	or     (%eax),%eax
     64e:	00 78 08             	add    %bh,0x8(%eax)
     651:	00 00                	add    %al,(%eax)
     653:	c0 0b 00             	rorb   $0x0,(%ebx)
     656:	00 c0                	add    %al,%al
     658:	0b 00                	or     (%eax),%eax
     65a:	00 c0                	add    %al,%al
     65c:	0b 00                	or     (%eax),%eax
     65e:	00 c0                	add    %al,%al
     660:	0b 00                	or     (%eax),%eax
     662:	00 c0                	add    %al,%al
     664:	0b 00                	or     (%eax),%eax
     666:	00 c0                	add    %al,%al
     668:	0b 00                	or     (%eax),%eax
     66a:	00 c0                	add    %al,%al
     66c:	0b 00                	or     (%eax),%eax
     66e:	00 c0                	add    %al,%al
     670:	0b 00                	or     (%eax),%eax
     672:	00 c0                	add    %al,%al
     674:	0b 00                	or     (%eax),%eax
     676:	00 c0                	add    %al,%al
     678:	0b 00                	or     (%eax),%eax
     67a:	00 10                	add    %dl,(%eax)
     67c:	0b 00                	or     (%eax),%eax
     67e:	00 cc                	add    %cl,%ah
     680:	08 00                	or     %al,(%eax)
     682:	00 a6 0a 00 00 90    	add    %ah,-0x6ffffff6(%esi)
     688:	0a 00                	or     (%eax),%al
     68a:	00 be 0a 00 00 f8    	add    %bh,-0x7fffff6(%esi)
     690:	07                   	pop    %es
     691:	00 00                	add    %al,(%eax)
     693:	cc                   	int3   
     694:	08 00                	or     %al,(%eax)
     696:	00 c0                	add    %al,%al
     698:	0b 00                	or     (%eax),%eax
     69a:	00 c0                	add    %al,%al
     69c:	0b 00                	or     (%eax),%eax
     69e:	00 10                	add    %dl,(%eax)
     6a0:	08 00                	or     %al,(%eax)
     6a2:	00 c0                	add    %al,%al
     6a4:	0b 00                	or     (%eax),%eax
     6a6:	00 40 08             	add    %al,0x8(%eax)
     6a9:	00 00                	add    %al,(%eax)
     6ab:	b8 08 00 00 64       	mov    $0x64000008,%eax
     6b0:	08 00                	or     %al,(%eax)
     6b2:	00 c0                	add    %al,%al
     6b4:	0b 00                	or     (%eax),%eax
     6b6:	00 c0                	add    %al,%al
     6b8:	0b 00                	or     (%eax),%eax
     6ba:	00 2c 0b             	add    %ch,(%ebx,%ecx,1)
     6bd:	00 00                	add    %al,(%eax)
     6bf:	c0 0b 00             	rorb   $0x0,(%ebx)
     6c2:	00 ac 08 00 00 c0 0b 	add    %ch,0xbc00000(%eax,%ecx,1)
     6c9:	00 00                	add    %al,(%eax)
     6cb:	c0 0b 00             	rorb   $0x0,(%ebx)
     6ce:	00 98 08 00 00 00    	add    %bl,0x8(%eax)
     6d4:	83 8d 50 ff ff ff 01 	orl    $0x1,-0xb0(%ebp)
     6db:	e9 6d fe ff ff       	jmp    54d <___vfprintf+0x31d>
     6e0:	83 8d 50 ff ff ff 02 	orl    $0x2,-0xb0(%ebp)
     6e7:	e9 61 fe ff ff       	jmp    54d <___vfprintf+0x31d>
     6ec:	83 8d 50 ff ff ff 04 	orl    $0x4,-0xb0(%ebp)
     6f3:	e9 55 fe ff ff       	jmp    54d <___vfprintf+0x31d>
     6f8:	83 8d 50 ff ff ff 08 	orl    $0x8,-0xb0(%ebp)
     6ff:	e9 49 fe ff ff       	jmp    54d <___vfprintf+0x31d>
     704:	83 45 10 04          	addl   $0x4,0x10(%ebp)
     708:	8b 45 10             	mov    0x10(%ebp),%eax
     70b:	8b 50 fc             	mov    -0x4(%eax),%edx
     70e:	85 d2                	test   %edx,%edx
     710:	7d 09                	jge    71b <___vfprintf+0x4eb>
     712:	83 8d 50 ff ff ff 01 	orl    $0x1,-0xb0(%ebp)
     719:	f7 da                	neg    %edx
     71b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
     721:	8b 45 80             	mov    -0x80(%ebp),%eax
     724:	0f be 10             	movsbl (%eax),%edx
     727:	ff 45 80             	incl   -0x80(%ebp)
     72a:	eb 38                	jmp    764 <___vfprintf+0x534>
     72c:	c7 45 fc 7c 30 00 00 	movl   $0x307c,-0x4(%ebp)
     733:	eb 21                	jmp    756 <___vfprintf+0x526>
     735:	00 00                	add    %al,(%eax)
     737:	00 83 fa 39 7f 27    	add    %al,0x277f39fa(%ebx)
     73d:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
     743:	8b 8d 6c ff ff ff    	mov    -0x94(%ebp),%ecx
     749:	8d 0c 81             	lea    (%ecx,%eax,4),%ecx
     74c:	8d 44 4a d0          	lea    -0x30(%edx,%ecx,2),%eax
     750:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
     756:	8b 45 80             	mov    -0x80(%ebp),%eax
     759:	0f be 10             	movsbl (%eax),%edx
     75c:	ff 45 80             	incl   -0x80(%ebp)
     75f:	83 fa 2f             	cmp    $0x2f,%edx
     762:	7f d4                	jg     738 <___vfprintf+0x508>
     764:	83 fa 2e             	cmp    $0x2e,%edx
     767:	0f 85 82 00 00 00    	jne    7ef <___vfprintf+0x5bf>
     76d:	8b 45 80             	mov    -0x80(%ebp),%eax
     770:	0f be 10             	movsbl (%eax),%edx
     773:	ff 45 80             	incl   -0x80(%ebp)
     776:	83 fa 2a             	cmp    $0x2a,%edx
     779:	75 25                	jne    7a0 <___vfprintf+0x570>
     77b:	83 45 10 04          	addl   $0x4,0x10(%ebp)
     77f:	8b 45 10             	mov    0x10(%ebp),%eax
     782:	8b 50 fc             	mov    -0x4(%eax),%edx
     785:	85 d2                	test   %edx,%edx
     787:	7c 10                	jl     799 <___vfprintf+0x569>
     789:	81 8d 50 ff ff ff 00 	orl    $0x1000,-0xb0(%ebp)
     790:	10 00 00 
     793:	89 95 68 ff ff ff    	mov    %edx,-0x98(%ebp)
     799:	ff 45 80             	incl   -0x80(%ebp)
     79c:	eb 51                	jmp    7ef <___vfprintf+0x5bf>
     79e:	00 00                	add    %al,(%eax)
     7a0:	83 fa 2f             	cmp    $0x2f,%edx
     7a3:	7e 4a                	jle    7ef <___vfprintf+0x5bf>
     7a5:	83 fa 39             	cmp    $0x39,%edx
     7a8:	7f 45                	jg     7ef <___vfprintf+0x5bf>
     7aa:	81 8d 50 ff ff ff 00 	orl    $0x1000,-0xb0(%ebp)
     7b1:	10 00 00 
     7b4:	c7 85 68 ff ff ff 00 	movl   $0x0,-0x98(%ebp)
     7bb:	00 00 00 
     7be:	83 fa 2f             	cmp    $0x2f,%edx
     7c1:	7e 2c                	jle    7ef <___vfprintf+0x5bf>
     7c3:	83 fa 39             	cmp    $0x39,%edx
     7c6:	7f 27                	jg     7ef <___vfprintf+0x5bf>
     7c8:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
     7ce:	8b 8d 68 ff ff ff    	mov    -0x98(%ebp),%ecx
     7d4:	8d 0c 81             	lea    (%ecx,%eax,4),%ecx
     7d7:	8d 44 4a d0          	lea    -0x30(%edx,%ecx,2),%eax
     7db:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
     7e1:	8b 45 80             	mov    -0x80(%ebp),%eax
     7e4:	0f be 10             	movsbl (%eax),%edx
     7e7:	ff 45 80             	incl   -0x80(%ebp)
     7ea:	83 fa 2f             	cmp    $0x2f,%edx
     7ed:	7f d4                	jg     7c3 <___vfprintf+0x593>
     7ef:	ff 4d 80             	decl   -0x80(%ebp)
     7f2:	e9 56 fd ff ff       	jmp    54d <___vfprintf+0x31d>
     7f7:	00 8b 85 50 ff ff    	add    %cl,-0xaf7b(%ebx)
     7fd:	ff 83 e0 8f 83 c8    	incl   -0x377c7020(%ebx)
     803:	10 89 85 50 ff ff    	adc    %cl,-0xaf7b(%ecx)
     809:	ff                   	(bad)  
     80a:	e9 3e fd ff ff       	jmp    54d <___vfprintf+0x31d>
     80f:	00 8b 85 50 ff ff    	add    %cl,-0xaf7b(%ebx)
     815:	ff 83 e0 8f 83 c8    	incl   -0x377c7020(%ebx)
     81b:	20 89 85 50 ff ff    	and    %cl,-0xaf7b(%ecx)
     821:	ff                   	(bad)  
     822:	e9 26 fd ff ff       	jmp    54d <___vfprintf+0x31d>
     827:	00 8b 85 50 ff ff    	add    %cl,-0xaf7b(%ebx)
     82d:	ff 83 e0 8f 83 c8    	incl   -0x377c7020(%ebx)
     833:	40                   	inc    %eax
     834:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
     83a:	e9 0e fd ff ff       	jmp    54d <___vfprintf+0x31d>
     83f:	00 83 45 10 04 8b    	add    %al,-0x74fbefbb(%ebx)
     845:	45                   	inc    %ebp
     846:	10 89 85 58 ff ff    	adc    %cl,-0xa77b(%ecx)
     84c:	ff 8b 48 fc 89 8d    	decl   -0x727603b8(%ebx)
     852:	58                   	pop    %eax
     853:	ff                   	(bad)  
     854:	ff                   	(bad)  
     855:	ff 8b 85 70 ff ff    	decl   -0x8f7b(%ebx)
     85b:	ff 89 01 e9 37 fa    	decl   -0x5c816ff(%ecx)
     861:	ff                   	(bad)  
     862:	ff 00                	incl   (%eax)
     864:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
     86a:	83 e0 8f             	and    $0xffffff8f,%eax
     86d:	83 c8 20             	or     $0x20,%eax
     870:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
     876:	eb 20                	jmp    898 <___vfprintf+0x668>
     878:	81 8d 50 ff ff ff 80 	orl    $0x80,-0xb0(%ebp)
     87f:	00 00 00 
     882:	c6 85 64 ff ff ff 00 	movb   $0x0,-0x9c(%ebp)
     889:	c7 85 4c ff ff ff 6c 	movl   $0x306c,-0xb4(%ebp)
     890:	30 00 00 
     893:	eb 48                	jmp    8dd <___vfprintf+0x6ad>
     895:	00 00                	add    %al,(%eax)
     897:	00 c6                	add    %al,%dh
     899:	85 64 ff ff          	test   %esp,-0x1(%edi,%edi,8)
     89d:	ff 00                	incl   (%eax)
     89f:	c7 85 4c ff ff ff 64 	movl   $0x3064,-0xb4(%ebp)
     8a6:	30 00 00 
     8a9:	eb 32                	jmp    8dd <___vfprintf+0x6ad>
     8ab:	00 c6                	add    %al,%dh
     8ad:	85 64 ff ff          	test   %esp,-0x1(%edi,%edi,8)
     8b1:	ff 00                	incl   (%eax)
     8b3:	eb 1e                	jmp    8d3 <___vfprintf+0x6a3>
     8b5:	00 00                	add    %al,(%eax)
     8b7:	00 c6                	add    %al,%dh
     8b9:	85 64 ff ff          	test   %esp,-0x1(%edi,%edi,8)
     8bd:	ff 00                	incl   (%eax)
     8bf:	c7 85 4c ff ff ff 74 	movl   $0x3074,-0xb4(%ebp)
     8c6:	30 00 00 
     8c9:	eb 12                	jmp    8dd <___vfprintf+0x6ad>
     8cb:	00 c6                	add    %al,%dh
     8cd:	85 64 ff ff          	test   %esp,-0x1(%edi,%edi,8)
     8d1:	ff 01                	incl   (%ecx)
     8d3:	c7 85 4c ff ff ff 5c 	movl   $0x305c,-0xb4(%ebp)
     8da:	30 00 00 
     8dd:	f7 85 50 ff ff ff 20 	testl  $0x20,-0xb0(%ebp)
     8e4:	00 00 00 
     8e7:	75 3f                	jne    928 <___vfprintf+0x6f8>
     8e9:	f7 85 50 ff ff ff 10 	testl  $0x10,-0xb0(%ebp)
     8f0:	00 00 00 
     8f3:	74 33                	je     928 <___vfprintf+0x6f8>
     8f5:	80 bd 64 ff ff ff 00 	cmpb   $0x0,-0x9c(%ebp)
     8fc:	74 16                	je     914 <___vfprintf+0x6e4>
     8fe:	83 45 10 04          	addl   $0x4,0x10(%ebp)
     902:	8b 45 10             	mov    0x10(%ebp),%eax
     905:	0f bf 40 fc          	movswl -0x4(%eax),%eax
     909:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
     90f:	eb 2d                	jmp    93e <___vfprintf+0x70e>
     911:	00 00                	add    %al,(%eax)
     913:	00 83 45 10 04 8b    	add    %al,-0x74fbefbb(%ebx)
     919:	45                   	inc    %ebp
     91a:	10 0f                	adc    %cl,(%edi)
     91c:	b7 40                	mov    $0x40,%bh
     91e:	fc                   	cld    
     91f:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
     925:	eb 17                	jmp    93e <___vfprintf+0x70e>
     927:	00 83 45 10 04 8b    	add    %al,-0x74fbefbb(%ebx)
     92d:	45                   	inc    %ebp
     92e:	10 89 85 58 ff ff    	adc    %cl,-0xa77b(%ecx)
     934:	ff 8b 48 fc 89 8d    	decl   -0x727603b8(%ebx)
     93a:	54                   	push   %esp
     93b:	ff                   	(bad)  
     93c:	ff                   	(bad)  
     93d:	ff 30                	pushl  (%eax)
     93f:	d2 80 bd 64 ff ff    	rolb   %cl,-0x9b43(%eax)
     945:	ff 00                	incl   (%eax)
     947:	74 0b                	je     954 <___vfprintf+0x724>
     949:	83 bd 54 ff ff ff 00 	cmpl   $0x0,-0xac(%ebp)
     950:	7d 02                	jge    954 <___vfprintf+0x724>
     952:	b2 01                	mov    $0x1,%dl
     954:	88 95 60 ff ff ff    	mov    %dl,-0xa0(%ebp)
     95a:	80 bd 60 ff ff ff 00 	cmpb   $0x0,-0xa0(%ebp)
     961:	74 06                	je     969 <___vfprintf+0x739>
     963:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
     969:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
     96f:	ff 70 04             	pushl  0x4(%eax)
     972:	53                   	push   %ebx
     973:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
     979:	8b 08                	mov    (%eax),%ecx
     97b:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%ebp)
     981:	ff d1                	call   *%ecx
     983:	89 c3                	mov    %eax,%ebx
     985:	83 c4 0c             	add    $0xc,%esp
     988:	f7 85 50 ff ff ff 00 	testl  $0x1000,-0xb0(%ebp)
     98f:	10 00 00 
     992:	74 21                	je     9b5 <___vfprintf+0x785>
     994:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
     99a:	3b 85 68 ff ff ff    	cmp    -0x98(%ebp),%eax
     9a0:	73 13                	jae    9b5 <___vfprintf+0x785>
     9a2:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
     9a8:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
     9ae:	c7 45 fc 7c 30 00 00 	movl   $0x307c,-0x4(%ebp)
     9b5:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     9bc:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
     9c2:	29 d8                	sub    %ebx,%eax
     9c4:	89 45 c8             	mov    %eax,-0x38(%ebp)
     9c7:	89 5d cc             	mov    %ebx,-0x34(%ebp)
     9ca:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
     9d1:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
     9d8:	c7 85 5c ff ff ff 03 	movl   $0x3,-0xa4(%ebp)
     9df:	00 00 00 
     9e2:	80 bd 60 ff ff ff 00 	cmpb   $0x0,-0xa0(%ebp)
     9e9:	74 09                	je     9f4 <___vfprintf+0x7c4>
     9eb:	ff 45 bc             	incl   -0x44(%ebp)
     9ee:	4b                   	dec    %ebx
     9ef:	c6 03 2d             	movb   $0x2d,(%ebx)
     9f2:	eb 33                	jmp    a27 <___vfprintf+0x7f7>
     9f4:	80 bd 64 ff ff ff 00 	cmpb   $0x0,-0x9c(%ebp)
     9fb:	74 2a                	je     a27 <___vfprintf+0x7f7>
     9fd:	f7 85 50 ff ff ff 02 	testl  $0x2,-0xb0(%ebp)
     a04:	00 00 00 
     a07:	74 0b                	je     a14 <___vfprintf+0x7e4>
     a09:	ff 45 bc             	incl   -0x44(%ebp)
     a0c:	4b                   	dec    %ebx
     a0d:	c6 03 2b             	movb   $0x2b,(%ebx)
     a10:	eb 15                	jmp    a27 <___vfprintf+0x7f7>
     a12:	00 00                	add    %al,(%eax)
     a14:	f7 85 50 ff ff ff 04 	testl  $0x4,-0xb0(%ebp)
     a1b:	00 00 00 
     a1e:	74 07                	je     a27 <___vfprintf+0x7f7>
     a20:	ff 45 bc             	incl   -0x44(%ebp)
     a23:	4b                   	dec    %ebx
     a24:	c6 03 20             	movb   $0x20,(%ebx)
     a27:	f7 85 50 ff ff ff 08 	testl  $0x8,-0xb0(%ebp)
     a2e:	00 00 00 
     a31:	74 49                	je     a7c <___vfprintf+0x84c>
     a33:	81 bd 4c ff ff ff 74 	cmpl   $0x3074,-0xb4(%ebp)
     a3a:	30 00 00 
     a3d:	75 05                	jne    a44 <___vfprintf+0x814>
     a3f:	ff 45 bc             	incl   -0x44(%ebp)
     a42:	eb 34                	jmp    a78 <___vfprintf+0x848>
     a44:	ba 64 30 00 00       	mov    $0x3064,%edx
     a49:	3b 95 4c ff ff ff    	cmp    -0xb4(%ebp),%edx
     a4f:	74 0b                	je     a5c <___vfprintf+0x82c>
     a51:	8d 42 08             	lea    0x8(%edx),%eax
     a54:	3b 85 4c ff ff ff    	cmp    -0xb4(%ebp),%eax
     a5a:	75 20                	jne    a7c <___vfprintf+0x84c>
     a5c:	83 45 bc 02          	addl   $0x2,-0x44(%ebp)
     a60:	4b                   	dec    %ebx
     a61:	f7 85 50 ff ff ff 80 	testl  $0x80,-0xb0(%ebp)
     a68:	00 00 00 
     a6b:	74 07                	je     a74 <___vfprintf+0x844>
     a6d:	b2 58                	mov    $0x58,%dl
     a6f:	eb 05                	jmp    a76 <___vfprintf+0x846>
     a71:	00 00                	add    %al,(%eax)
     a73:	00 b2 78 88 13 4b    	add    %dh,0x4b138878(%edx)
     a79:	c6 03 30             	movb   $0x30,(%ebx)
     a7c:	89 5d c0             	mov    %ebx,-0x40(%ebp)
     a7f:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
     a85:	29 d8                	sub    %ebx,%eax
     a87:	89 45 84             	mov    %eax,-0x7c(%ebp)
     a8a:	e9 6d 01 00 00       	jmp    bfc <___vfprintf+0x9cc>
     a8f:	00 81 8d 50 ff ff    	add    %al,-0xaf73(%ecx)
     a95:	ff 00                	incl   (%eax)
     a97:	01 00                	add    %eax,(%eax)
     a99:	00 eb                	add    %ch,%bl
     a9b:	2c 81                	sub    $0x81,%al
     a9d:	8d 50 ff             	lea    -0x1(%eax),%edx
     aa0:	ff                   	(bad)  
     aa1:	ff 00                	incl   (%eax)
     aa3:	08 00                	or     %al,(%eax)
     aa5:	00 81 8d 50 ff ff    	add    %al,-0xaf73(%ecx)
     aab:	ff 00                	incl   (%eax)
     aad:	02 00                	add    (%eax),%al
     aaf:	00 eb                	add    %ch,%bl
     ab1:	16                   	push   %ss
     ab2:	00 00                	add    %al,(%eax)
     ab4:	81 8d 50 ff ff ff 00 	orl    $0x800,-0xb0(%ebp)
     abb:	08 00 00 
     abe:	81 8d 50 ff ff ff 00 	orl    $0x400,-0xb0(%ebp)
     ac5:	04 00 00 
     ac8:	f7 85 50 ff ff ff 00 	testl  $0x1000,-0xb0(%ebp)
     acf:	10 00 00 
     ad2:	75 0a                	jne    ade <___vfprintf+0x8ae>
     ad4:	c7 85 68 ff ff ff 06 	movl   $0x6,-0x98(%ebp)
     adb:	00 00 00 
     ade:	ff b5 50 ff ff ff    	pushl  -0xb0(%ebp)
     ae4:	ff b5 68 ff ff ff    	pushl  -0x98(%ebp)
     aea:	8d 45 10             	lea    0x10(%ebp),%eax
     aed:	50                   	push   %eax
     aee:	8d 45 88             	lea    -0x78(%ebp),%eax
     af1:	50                   	push   %eax
     af2:	8d 45 b8             	lea    -0x48(%ebp),%eax
     af5:	50                   	push   %eax
     af6:	8d 45 84             	lea    -0x7c(%ebp),%eax
     af9:	50                   	push   %eax
     afa:	e8 49 07 00 00       	call   1248 <___cvt>
     aff:	40                   	inc    %eax
     b00:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
     b06:	83 c4 18             	add    $0x18,%esp
     b09:	e9 ee 00 00 00       	jmp    bfc <___vfprintf+0x9cc>
     b0e:	00 00                	add    %al,(%eax)
     b10:	4b                   	dec    %ebx
     b11:	83 45 10 04          	addl   $0x4,0x10(%ebp)
     b15:	8b 45 10             	mov    0x10(%ebp),%eax
     b18:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
     b1e:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
     b24:	8a 41 fc             	mov    -0x4(%ecx),%al
     b27:	e9 9b 00 00 00       	jmp    bc7 <___vfprintf+0x997>
     b2c:	83 45 10 04          	addl   $0x4,0x10(%ebp)
     b30:	8b 45 10             	mov    0x10(%ebp),%eax
     b33:	8b 58 fc             	mov    -0x4(%eax),%ebx
     b36:	85 db                	test   %ebx,%ebx
     b38:	75 05                	jne    b3f <___vfprintf+0x90f>
     b3a:	bb 29 02 00 00       	mov    $0x229,%ebx
     b3f:	f7 85 50 ff ff ff 00 	testl  $0x1000,-0xb0(%ebp)
     b46:	10 00 00 
     b49:	75 1d                	jne    b68 <___vfprintf+0x938>
     b4b:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
     b50:	89 df                	mov    %ebx,%edi
     b52:	31 c0                	xor    %eax,%eax
     b54:	fc                   	cld    
     b55:	f2 ae                	repnz scas %es:(%edi),%al
     b57:	f7 d1                	not    %ecx
     b59:	49                   	dec    %ecx
     b5a:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
     b5d:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
     b63:	eb 64                	jmp    bc9 <___vfprintf+0x999>
     b65:	00 00                	add    %al,(%eax)
     b67:	00 89 9d 4c ff ff    	add    %cl,-0xb363(%ecx)
     b6d:	ff 31                	pushl  (%ecx)
     b6f:	d2 8b 85 68 ff ff    	rorb   %cl,-0x977b(%ebx)
     b75:	ff 89 85 58 ff ff    	decl   -0xa77b(%ecx)
     b7b:	ff 85 c0 75 04 31    	incl   0x310475c0(%ebp)
     b81:	d2 eb                	shr    %cl,%bl
     b83:	1b 88 d0 8b bd 4c    	sbb    0x4cbd8bd0(%eax),%ecx
     b89:	ff                   	(bad)  
     b8a:	ff                   	(bad)  
     b8b:	ff 8b 8d 58 ff ff    	decl   -0xa773(%ebx)
     b91:	ff                   	(bad)  
     b92:	fc                   	cld    
     b93:	f2 ae                	repnz scas %es:(%edi),%al
     b95:	74 05                	je     b9c <___vfprintf+0x96c>
     b97:	bf 01 00 00 00       	mov    $0x1,%edi
     b9c:	4f                   	dec    %edi
     b9d:	89 fa                	mov    %edi,%edx
     b9f:	89 95 74 ff ff ff    	mov    %edx,-0x8c(%ebp)
     ba5:	83 bd 74 ff ff ff 00 	cmpl   $0x0,-0x8c(%ebp)
     bac:	75 1b                	jne    bc9 <___vfprintf+0x999>
     bae:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
     bb4:	8d 0c 18             	lea    (%eax,%ebx,1),%ecx
     bb7:	89 8d 74 ff ff ff    	mov    %ecx,-0x8c(%ebp)
     bbd:	eb 0a                	jmp    bc9 <___vfprintf+0x999>
     bbf:	00 4b 8b             	add    %cl,-0x75(%ebx)
     bc2:	4d                   	dec    %ebp
     bc3:	80 8a 41 ff 88 03 8b 	orb    $0x8b,0x388ff41(%edx)
     bca:	85 74 ff ff          	test   %esi,-0x1(%edi,%edi,8)
     bce:	ff 29                	ljmp   *(%ecx)
     bd0:	d8 89 45 84 c7 45    	fmuls  0x45c78445(%ecx)
     bd6:	c4 00                	les    (%eax),%eax
     bd8:	00 00                	add    %al,(%eax)
     bda:	00 8b 45 84 89 45    	add    %cl,0x45898445(%ebx)
     be0:	c8 89 5d cc          	enter  $0x5d89,$0xcc
     be4:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
     beb:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
     bf2:	c7 85 5c ff ff ff 03 	movl   $0x3,-0xa4(%ebp)
     bf9:	00 00 00 
     bfc:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
     c03:	00 00 00 
     c06:	8d 5d ac             	lea    -0x54(%ebp),%ebx
     c09:	8b 45 84             	mov    -0x7c(%ebp),%eax
     c0c:	01 85 70 ff ff ff    	add    %eax,-0x90(%ebp)
     c12:	3b 85 6c ff ff ff    	cmp    -0x94(%ebp),%eax
     c18:	72 22                	jb     c3c <___vfprintf+0xa0c>
     c1a:	c7 85 6c ff ff ff 00 	movl   $0x0,-0x94(%ebp)
     c21:	00 00 00 
     c24:	8b 45 bc             	mov    -0x44(%ebp),%eax
     c27:	01 45 c8             	add    %eax,-0x38(%ebp)
     c2a:	8b 45 bc             	mov    -0x44(%ebp),%eax
     c2d:	29 45 cc             	sub    %eax,-0x34(%ebp)
     c30:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
     c37:	e9 9f 00 00 00       	jmp    cdb <___vfprintf+0xaab>
     c3c:	8b 45 84             	mov    -0x7c(%ebp),%eax
     c3f:	29 85 6c ff ff ff    	sub    %eax,-0x94(%ebp)
     c45:	f7 85 50 ff ff ff 01 	testl  $0x1,-0xb0(%ebp)
     c4c:	00 00 00 
     c4f:	0f 85 86 00 00 00    	jne    cdb <___vfprintf+0xaab>
     c55:	83 7b 04 00          	cmpl   $0x0,0x4(%ebx)
     c59:	74 0e                	je     c69 <___vfprintf+0xa39>
     c5b:	53                   	push   %ebx
     c5c:	6a 01                	push   $0x1
     c5e:	ff 75 08             	pushl  0x8(%ebp)
     c61:	e8 86 f4 ff ff       	call   ec <___printv>
     c66:	83 c4 0c             	add    $0xc,%esp
     c69:	83 c3 0c             	add    $0xc,%ebx
     c6c:	ff 85 4c ff ff ff    	incl   -0xb4(%ebp)
     c72:	81 7d fc 7c 30 00 00 	cmpl   $0x307c,-0x4(%ebp)
     c79:	75 20                	jne    c9b <___vfprintf+0xa6b>
     c7b:	83 7d bc 00          	cmpl   $0x0,-0x44(%ebp)
     c7f:	74 1a                	je     c9b <___vfprintf+0xa6b>
     c81:	8d 45 b8             	lea    -0x48(%ebp),%eax
     c84:	50                   	push   %eax
     c85:	6a 01                	push   $0x1
     c87:	ff 75 08             	pushl  0x8(%ebp)
     c8a:	e8 5d f4 ff ff       	call   ec <___printv>
     c8f:	ff 85 4c ff ff ff    	incl   -0xb4(%ebp)
     c95:	83 c3 0c             	add    $0xc,%ebx
     c98:	83 c4 0c             	add    $0xc,%esp
     c9b:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
     ca1:	8b 8d 6c ff ff ff    	mov    -0x94(%ebp),%ecx
     ca7:	8d 0c 01             	lea    (%ecx,%eax,1),%ecx
     caa:	89 8d 70 ff ff ff    	mov    %ecx,-0x90(%ebp)
     cb0:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
     cb7:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
     cbd:	89 45 f8             	mov    %eax,-0x8(%ebp)
     cc0:	c7 85 6c ff ff ff 00 	movl   $0x0,-0x94(%ebp)
     cc7:	00 00 00 
     cca:	8d 45 f4             	lea    -0xc(%ebp),%eax
     ccd:	50                   	push   %eax
     cce:	6a 01                	push   $0x1
     cd0:	ff 75 08             	pushl  0x8(%ebp)
     cd3:	e8 14 f4 ff ff       	call   ec <___printv>
     cd8:	83 c4 0c             	add    $0xc,%esp
     cdb:	53                   	push   %ebx
     cdc:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
     ce2:	2b 85 4c ff ff ff    	sub    -0xb4(%ebp),%eax
     ce8:	50                   	push   %eax
     ce9:	ff 75 08             	pushl  0x8(%ebp)
     cec:	e8 fb f3 ff ff       	call   ec <___printv>
     cf1:	83 c4 0c             	add    $0xc,%esp
     cf4:	83 bd 6c ff ff ff 00 	cmpl   $0x0,-0x94(%ebp)
     cfb:	0f 84 99 f5 ff ff    	je     29a <___vfprintf+0x6a>
     d01:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
     d07:	8b 8d 6c ff ff ff    	mov    -0x94(%ebp),%ecx
     d0d:	8d 0c 01             	lea    (%ecx,%eax,1),%ecx
     d10:	89 8d 70 ff ff ff    	mov    %ecx,-0x90(%ebp)
     d16:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
     d1d:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
     d23:	89 45 f8             	mov    %eax,-0x8(%ebp)
     d26:	c7 45 fc 80 30 00 00 	movl   $0x3080,-0x4(%ebp)
     d2d:	8d 45 f4             	lea    -0xc(%ebp),%eax
     d30:	50                   	push   %eax
     d31:	6a 01                	push   $0x1
     d33:	ff 75 08             	pushl  0x8(%ebp)
     d36:	e8 b1 f3 ff ff       	call   ec <___printv>
     d3b:	83 c4 0c             	add    $0xc,%esp
     d3e:	e9 57 f5 ff ff       	jmp    29a <___vfprintf+0x6a>
     d43:	00 8b 45 08 66 f7    	add    %cl,-0x899f7bb(%ebx)
     d49:	40                   	inc    %eax
     d4a:	18 00                	sbb    %al,(%eax)
     d4c:	01 0f                	add    %ecx,(%edi)
     d4e:	84 9a 00 00 00 8b    	test   %bl,-0x75000000(%edx)
     d54:	85 70 ff             	test   %esi,-0x1(%eax)
     d57:	ff                   	(bad)  
     d58:	ff 89 45 84 8b 85    	decl   -0x7a747bbb(%ecx)
     d5e:	7c ff                	jl     d5f <___vfprintf+0xb2f>
     d60:	ff                   	(bad)  
     d61:	ff 8b 8d 70 ff ff    	decl   -0x8f73(%ebx)
     d67:	ff 8d 0c 01 89 8d    	decl   -0x7276fef4(%ebp)
     d6d:	58                   	pop    %eax
     d6e:	ff                   	(bad)  
     d6f:	ff                   	(bad)  
     d70:	ff 8b 45 08 8b 48    	decl   0x488b0845(%ebx)
     d76:	08 3b                	or     %bh,(%ebx)
     d78:	8d 58 ff             	lea    -0x1(%eax),%ebx
     d7b:	ff                   	(bad)  
     d7c:	ff 74 12 8b          	pushl  -0x75(%edx,%edx,1)
     d80:	48                   	dec    %eax
     d81:	10 89 8d 7c ff ff    	adc    %cl,-0x8373(%ecx)
     d87:	ff 8b 48 08 2b 48    	decl   0x482b0848(%ebx)
     d8d:	10 89 4d 84 8b 85    	adc    %cl,-0x7a747bb3(%ecx)
     d93:	7c ff                	jl     d94 <___vfprintf+0xb64>
     d95:	ff                   	(bad)  
     d96:	ff 89 85 4c ff ff    	decl   -0xb37b(%ecx)
     d9c:	ff                   	(bad)  
     d9d:	ba 0a 00 00 00       	mov    $0xa,%edx
     da2:	8b 5d 84             	mov    -0x7c(%ebp),%ebx
     da5:	85 db                	test   %ebx,%ebx
     da7:	75 0f                	jne    db8 <___vfprintf+0xb88>
     da9:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
     db0:	00 00 00 
     db3:	eb 1e                	jmp    dd3 <___vfprintf+0xba3>
     db5:	00 00                	add    %al,(%eax)
     db7:	00 88 d0 8b bd 4c    	add    %cl,0x4cbd8bd0(%eax)
     dbd:	ff                   	(bad)  
     dbe:	ff                   	(bad)  
     dbf:	ff 89 d9 fc f2 ae    	decl   -0x510d0327(%ecx)
     dc5:	74 05                	je     dcc <___vfprintf+0xb9c>
     dc7:	bf 01 00 00 00       	mov    $0x1,%edi
     dcc:	4f                   	dec    %edi
     dcd:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%ebp)
     dd3:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%ebp)
     dda:	74 11                	je     ded <___vfprintf+0xbbd>
     ddc:	ff 75 08             	pushl  0x8(%ebp)
     ddf:	8b 45 08             	mov    0x8(%ebp),%eax
     de2:	8b 48 24             	mov    0x24(%eax),%ecx
     de5:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%ebp)
     deb:	ff d1                	call   *%ecx
     ded:	8b 45 08             	mov    0x8(%ebp),%eax
     df0:	66 f7 40 18 40 00    	testw  $0x40,0x18(%eax)
     df6:	74 08                	je     e00 <___vfprintf+0xbd0>
     df8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
     dfd:	eb 07                	jmp    e06 <___vfprintf+0xbd6>
     dff:	00 8b 95 70 ff ff    	add    %cl,-0x8f6b(%ebx)
     e05:	ff 89 d0 8d a5 40    	decl   0x40a58dd0(%ecx)
     e0b:	ff                   	(bad)  
     e0c:	ff                   	(bad)  
     e0d:	ff 5b 5e             	lcall  *0x5e(%ebx)
     e10:	5f                   	pop    %edi
     e11:	c9                   	leave  
     e12:	c3                   	ret    
	...

00000e14 <_exit>:
     e14:	55                   	push   %ebp
     e15:	89 e5                	mov    %esp,%ebp
     e17:	83 3d c8 38 00 00 00 	cmpl   $0x0,0x38c8
     e1e:	74 07                	je     e27 <_exit+0x13>
     e20:	a1 c8 38 00 00       	mov    0x38c8,%eax
     e25:	ff d0                	call   *%eax
     e27:	83 3d dc 38 00 00 00 	cmpl   $0x0,0x38dc
     e2e:	74 07                	je     e37 <_exit+0x23>
     e30:	a1 dc 38 00 00       	mov    0x38dc,%eax
     e35:	ff d0                	call   *%eax
     e37:	ff 75 08             	pushl  0x8(%ebp)
     e3a:	e8 05 00 00 00       	call   e44 <__exit>
     e3f:	00 c9                	add    %cl,%cl
     e41:	c3                   	ret    
	...

00000e44 <__exit>:
     e44:	53                   	push   %ebx
     e45:	b8 01 00 00 00       	mov    $0x1,%eax
     e4a:	8b 5c 24 08          	mov    0x8(%esp),%ebx
     e4e:	cd 80                	int    $0x80
     e50:	5b                   	pop    %ebx
     e51:	c3                   	ret    
	...

00000e54 <___signmanexp>:
     e54:	55                   	push   %ebp
     e55:	89 e5                	mov    %esp,%ebp
     e57:	83 ec 1c             	sub    $0x1c,%esp
     e5a:	57                   	push   %edi
     e5b:	56                   	push   %esi
     e5c:	53                   	push   %ebx
     e5d:	8b 4d 08             	mov    0x8(%ebp),%ecx
     e60:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     e63:	89 4d f4             	mov    %ecx,-0xc(%ebp)
     e66:	89 5d f8             	mov    %ebx,-0x8(%ebp)
     e69:	8b 75 10             	mov    0x10(%ebp),%esi
     e6c:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
     e72:	6a 00                	push   $0x0
     e74:	6a 00                	push   $0x0
     e76:	ff 75 f8             	pushl  -0x8(%ebp)
     e79:	ff 75 f4             	pushl  -0xc(%ebp)
     e7c:	e8 a3 10 00 00       	call   1f24 <___cmpdf2>
     e81:	83 c4 10             	add    $0x10,%esp
     e84:	85 c0                	test   %eax,%eax
     e86:	7d 1a                	jge    ea2 <___signmanexp+0x4e>
     e88:	c7 06 01 00 00 00    	movl   $0x1,(%esi)
     e8e:	ff 75 f8             	pushl  -0x8(%ebp)
     e91:	ff 75 f4             	pushl  -0xc(%ebp)
     e94:	e8 33 10 00 00       	call   1ecc <___negdf2>
     e99:	83 c4 08             	add    $0x8,%esp
     e9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
     e9f:	89 55 f8             	mov    %edx,-0x8(%ebp)
     ea2:	8d 45 fc             	lea    -0x4(%ebp),%eax
     ea5:	50                   	push   %eax
     ea6:	ff 75 f8             	pushl  -0x8(%ebp)
     ea9:	ff 75 f4             	pushl  -0xc(%ebp)
     eac:	e8 a3 10 00 00       	call   1f54 <_frexp>
     eb1:	83 c4 0c             	add    $0xc,%esp
     eb4:	6a 00                	push   $0x0
     eb6:	6a 00                	push   $0x0
     eb8:	ff 75 f8             	pushl  -0x8(%ebp)
     ebb:	ff 75 f4             	pushl  -0xc(%ebp)
     ebe:	e8 61 10 00 00       	call   1f24 <___cmpdf2>
     ec3:	83 c4 10             	add    $0x10,%esp
     ec6:	85 c0                	test   %eax,%eax
     ec8:	74 03                	je     ecd <___signmanexp+0x79>
     eca:	ff 4d fc             	decl   -0x4(%ebp)
     ecd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
     ed4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
     ed8:	7c 06                	jl     ee0 <___signmanexp+0x8c>
     eda:	8b 45 fc             	mov    -0x4(%ebp),%eax
     edd:	eb 06                	jmp    ee5 <___signmanexp+0x91>
     edf:	00 8b 45 fc f7 d8    	add    %cl,-0x270803bb(%ebx)
     ee5:	50                   	push   %eax
     ee6:	e8 85 0f 00 00       	call   1e70 <___floatsidf>
     eeb:	83 c4 04             	add    $0x4,%esp
     eee:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     ef1:	89 55 e8             	mov    %edx,-0x18(%ebp)
     ef4:	6a 00                	push   $0x0
     ef6:	6a 00                	push   $0x0
     ef8:	ff 75 e8             	pushl  -0x18(%ebp)
     efb:	ff 75 e4             	pushl  -0x1c(%ebp)
     efe:	e8 21 10 00 00       	call   1f24 <___cmpdf2>
     f03:	83 c4 10             	add    $0x10,%esp
     f06:	85 c0                	test   %eax,%eax
     f08:	7d 1b                	jge    f25 <___signmanexp+0xd1>
     f0a:	68 00 00 f0 41       	push   $0x41f00000
     f0f:	6a 00                	push   $0x0
     f11:	ff 75 e8             	pushl  -0x18(%ebp)
     f14:	ff 75 e4             	pushl  -0x1c(%ebp)
     f17:	e8 d0 0f 00 00       	call   1eec <___adddf3>
     f1c:	83 c4 10             	add    $0x10,%esp
     f1f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     f22:	89 55 e8             	mov    %edx,-0x18(%ebp)
     f25:	68 13 44 d3 3f       	push   $0x3fd34413
     f2a:	68 33 d7 fb 50       	push   $0x50fbd733
     f2f:	ff 75 e8             	pushl  -0x18(%ebp)
     f32:	ff 75 e4             	pushl  -0x1c(%ebp)
     f35:	e8 5a 0f 00 00       	call   1e94 <___muldf3>
     f3a:	83 c4 10             	add    $0x10,%esp
     f3d:	52                   	push   %edx
     f3e:	50                   	push   %eax
     f3f:	e8 3c 0f 00 00       	call   1e80 <___fixdfsi>
     f44:	83 c4 08             	add    $0x8,%esp
     f47:	89 45 ec             	mov    %eax,-0x14(%ebp)
     f4a:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
     f4e:	7d 03                	jge    f53 <___signmanexp+0xff>
     f50:	f7 5d ec             	negl   -0x14(%ebp)
     f53:	81 7d ec cd fe ff ff 	cmpl   $0xfffffecd,-0x14(%ebp)
     f5a:	7d 14                	jge    f70 <___signmanexp+0x11c>
     f5c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
     f63:	be 00 00 00 00       	mov    $0x0,%esi
     f68:	bf 00 00 00 00       	mov    $0x0,%edi
     f6d:	eb 7c                	jmp    feb <___signmanexp+0x197>
     f6f:	00 ff                	add    %bh,%bh
     f71:	75 ec                	jne    f5f <___signmanexp+0x10b>
     f73:	e8 5c 0c 00 00       	call   1bd4 <___pow10>
     f78:	52                   	push   %edx
     f79:	50                   	push   %eax
     f7a:	ff 75 f8             	pushl  -0x8(%ebp)
     f7d:	ff 75 f4             	pushl  -0xc(%ebp)
     f80:	e8 2b 0f 00 00       	call   1eb0 <___divdf3>
     f85:	83 c4 10             	add    $0x10,%esp
     f88:	89 c6                	mov    %eax,%esi
     f8a:	89 d7                	mov    %edx,%edi
     f8c:	83 c4 04             	add    $0x4,%esp
     f8f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     f93:	7d 1b                	jge    fb0 <___signmanexp+0x15c>
     f95:	68 00 00 f0 3f       	push   $0x3ff00000
     f9a:	6a 00                	push   $0x0
     f9c:	57                   	push   %edi
     f9d:	56                   	push   %esi
     f9e:	e8 81 0f 00 00       	call   1f24 <___cmpdf2>
     fa3:	83 c4 10             	add    $0x10,%esp
     fa6:	85 c0                	test   %eax,%eax
     fa8:	7d 41                	jge    feb <___signmanexp+0x197>
     faa:	ff 4d ec             	decl   -0x14(%ebp)
     fad:	eb a4                	jmp    f53 <___signmanexp+0xff>
     faf:	00 68 00             	add    %ch,0x0(%eax)
     fb2:	00 24 40             	add    %ah,(%eax,%eax,2)
     fb5:	6a 00                	push   $0x0
     fb7:	57                   	push   %edi
     fb8:	56                   	push   %esi
     fb9:	e8 66 0f 00 00       	call   1f24 <___cmpdf2>
     fbe:	83 c4 10             	add    $0x10,%esp
     fc1:	85 c0                	test   %eax,%eax
     fc3:	7c 26                	jl     feb <___signmanexp+0x197>
     fc5:	ff 45 ec             	incl   -0x14(%ebp)
     fc8:	68 00 00 24 40       	push   $0x40240000
     fcd:	6a 00                	push   $0x0
     fcf:	57                   	push   %edi
     fd0:	56                   	push   %esi
     fd1:	e8 4e 0f 00 00       	call   1f24 <___cmpdf2>
     fd6:	83 c4 10             	add    $0x10,%esp
     fd9:	85 c0                	test   %eax,%eax
     fdb:	0f 8f 72 ff ff ff    	jg     f53 <___signmanexp+0xff>
     fe1:	be 00 00 00 00       	mov    $0x0,%esi
     fe6:	bf 00 00 f0 3f       	mov    $0x3ff00000,%edi
     feb:	8b 5d ec             	mov    -0x14(%ebp),%ebx
     fee:	03 5d f0             	add    -0x10(%ebp),%ebx
     ff1:	8b 4d 18             	mov    0x18(%ebp),%ecx
     ff4:	89 19                	mov    %ebx,(%ecx)
     ff6:	8b 4d 14             	mov    0x14(%ebp),%ecx
     ff9:	89 31                	mov    %esi,(%ecx)
     ffb:	89 79 04             	mov    %edi,0x4(%ecx)
     ffe:	8d 65 d8             	lea    -0x28(%ebp),%esp
    1001:	5b                   	pop    %ebx
    1002:	5e                   	pop    %esi
    1003:	5f                   	pop    %edi
    1004:	c9                   	leave  
    1005:	c3                   	ret    
	...

00001008 <___mantostr>:
    1008:	55                   	push   %ebp
    1009:	89 e5                	mov    %esp,%ebp
    100b:	83 ec 48             	sub    $0x48,%esp
    100e:	57                   	push   %edi
    100f:	56                   	push   %esi
    1010:	53                   	push   %ebx
    1011:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1014:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1017:	89 4d dc             	mov    %ecx,-0x24(%ebp)
    101a:	89 5d e0             	mov    %ebx,-0x20(%ebp)
    101d:	8b 5d 14             	mov    0x14(%ebp),%ebx
    1020:	89 5d d8             	mov    %ebx,-0x28(%ebp)
    1023:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%ebp)
    102a:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    1031:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1034:	89 5d c4             	mov    %ebx,-0x3c(%ebp)
    1037:	8b 5d d8             	mov    -0x28(%ebp),%ebx
    103a:	8b 7d 18             	mov    0x18(%ebp),%edi
    103d:	8d 3c 1f             	lea    (%edi,%ebx,1),%edi
    1040:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    1043:	85 ff                	test   %edi,%edi
    1045:	0f 84 4d 01 00 00    	je     1198 <___mantostr+0x190>
    104b:	8b 35 8c 34 00 00    	mov    0x348c,%esi
    1051:	3b 75 d4             	cmp    -0x2c(%ebp),%esi
    1054:	7e 03                	jle    1059 <___mantostr+0x51>
    1056:	8b 75 d4             	mov    -0x2c(%ebp),%esi
    1059:	29 75 d4             	sub    %esi,-0x2c(%ebp)
    105c:	89 f0                	mov    %esi,%eax
    105e:	2b 45 b8             	sub    -0x48(%ebp),%eax
    1061:	8b 15 60 34 00 00    	mov    0x3460,%edx
    1067:	8b 0c c2             	mov    (%edx,%eax,8),%ecx
    106a:	8b 5c c2 04          	mov    0x4(%edx,%eax,8),%ebx
    106e:	89 4d cc             	mov    %ecx,-0x34(%ebp)
    1071:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    1074:	83 7d b8 00          	cmpl   $0x0,-0x48(%ebp)
    1078:	75 1e                	jne    1098 <___mantostr+0x90>
    107a:	ff 75 d0             	pushl  -0x30(%ebp)
    107d:	ff 75 cc             	pushl  -0x34(%ebp)
    1080:	ff 75 e0             	pushl  -0x20(%ebp)
    1083:	ff 75 dc             	pushl  -0x24(%ebp)
    1086:	e8 09 0e 00 00       	call   1e94 <___muldf3>
    108b:	83 c4 10             	add    $0x10,%esp
    108e:	89 45 dc             	mov    %eax,-0x24(%ebp)
    1091:	89 55 e0             	mov    %edx,-0x20(%ebp)
    1094:	eb 72                	jmp    1108 <___mantostr+0x100>
    1096:	00 00                	add    %al,(%eax)
    1098:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    109b:	8b 5d e0             	mov    -0x20(%ebp),%ebx
    109e:	89 4d ec             	mov    %ecx,-0x14(%ebp)
    10a1:	89 5d f0             	mov    %ebx,-0x10(%ebp)
    10a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    10ab:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    10b2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    10b9:	8d 45 ec             	lea    -0x14(%ebp),%eax
    10bc:	50                   	push   %eax
    10bd:	e8 d6 06 00 00       	call   1798 <___gguard>
    10c2:	ff 75 f0             	pushl  -0x10(%ebp)
    10c5:	ff 75 ec             	pushl  -0x14(%ebp)
    10c8:	ff 75 d0             	pushl  -0x30(%ebp)
    10cb:	ff 75 cc             	pushl  -0x34(%ebp)
    10ce:	e8 c1 0d 00 00       	call   1e94 <___muldf3>
    10d3:	83 c4 10             	add    $0x10,%esp
    10d6:	89 45 ec             	mov    %eax,-0x14(%ebp)
    10d9:	89 55 f0             	mov    %edx,-0x10(%ebp)
    10dc:	ff 75 f8             	pushl  -0x8(%ebp)
    10df:	ff 75 f4             	pushl  -0xc(%ebp)
    10e2:	ff 75 d0             	pushl  -0x30(%ebp)
    10e5:	ff 75 cc             	pushl  -0x34(%ebp)
    10e8:	e8 a7 0d 00 00       	call   1e94 <___muldf3>
    10ed:	83 c4 10             	add    $0x10,%esp
    10f0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    10f3:	89 55 f8             	mov    %edx,-0x8(%ebp)
    10f6:	8d 45 ec             	lea    -0x14(%ebp),%eax
    10f9:	50                   	push   %eax
    10fa:	e8 69 08 00 00       	call   1968 <___gnumber>
    10ff:	89 45 dc             	mov    %eax,-0x24(%ebp)
    1102:	89 55 e0             	mov    %edx,-0x20(%ebp)
    1105:	83 c4 08             	add    $0x8,%esp
    1108:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    110b:	50                   	push   %eax
    110c:	ff 75 e0             	pushl  -0x20(%ebp)
    110f:	ff 75 dc             	pushl  -0x24(%ebp)
    1112:	e8 6d 0e 00 00       	call   1f84 <_modf>
    1117:	89 45 dc             	mov    %eax,-0x24(%ebp)
    111a:	89 55 e0             	mov    %edx,-0x20(%ebp)
    111d:	ff 75 e8             	pushl  -0x18(%ebp)
    1120:	ff 75 e4             	pushl  -0x1c(%ebp)
    1123:	e8 58 0d 00 00       	call   1e80 <___fixdfsi>
    1128:	83 c4 08             	add    $0x8,%esp
    112b:	89 45 bc             	mov    %eax,-0x44(%ebp)
    112e:	83 c4 0c             	add    $0xc,%esp
    1131:	4e                   	dec    %esi
    1132:	83 fe ff             	cmp    $0xffffffff,%esi
    1135:	74 50                	je     1187 <___mantostr+0x17f>
    1137:	8d 1c b5 64 34 00 00 	lea    0x3464(,%esi,4),%ebx
    113e:	89 5d c0             	mov    %ebx,-0x40(%ebp)
    1141:	8b 5d c0             	mov    -0x40(%ebp),%ebx
    1144:	8b 3b                	mov    (%ebx),%edi
    1146:	89 7d b8             	mov    %edi,-0x48(%ebp)
    1149:	8b 45 bc             	mov    -0x44(%ebp),%eax
    114c:	99                   	cltd   
    114d:	f7 ff                	idiv   %edi
    114f:	89 c2                	mov    %eax,%edx
    1151:	85 d2                	test   %edx,%edx
    1153:	75 07                	jne    115c <___mantostr+0x154>
    1155:	ff 45 c8             	incl   -0x38(%ebp)
    1158:	eb 09                	jmp    1163 <___mantostr+0x15b>
    115a:	00 00                	add    %al,(%eax)
    115c:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    1163:	88 d0                	mov    %dl,%al
    1165:	04 30                	add    $0x30,%al
    1167:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
    116a:	88 03                	mov    %al,(%ebx)
    116c:	ff 45 c4             	incl   -0x3c(%ebp)
    116f:	89 d0                	mov    %edx,%eax
    1171:	0f af 45 b8          	imul   -0x48(%ebp),%eax
    1175:	29 45 bc             	sub    %eax,-0x44(%ebp)
    1178:	8b 5d c0             	mov    -0x40(%ebp),%ebx
    117b:	8d 7b fc             	lea    -0x4(%ebx),%edi
    117e:	89 7d c0             	mov    %edi,-0x40(%ebp)
    1181:	4e                   	dec    %esi
    1182:	83 fe ff             	cmp    $0xffffffff,%esi
    1185:	75 ba                	jne    1141 <___mantostr+0x139>
    1187:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    118e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    1192:	0f 85 b3 fe ff ff    	jne    104b <___mantostr+0x43>
    1198:	68 00 00 e0 3f       	push   $0x3fe00000
    119d:	6a 00                	push   $0x0
    119f:	ff 75 e0             	pushl  -0x20(%ebp)
    11a2:	ff 75 dc             	pushl  -0x24(%ebp)
    11a5:	e8 7a 0d 00 00       	call   1f24 <___cmpdf2>
    11aa:	85 c0                	test   %eax,%eax
    11ac:	7c 4a                	jl     11f8 <___mantostr+0x1f0>
    11ae:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    11b5:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    11b8:	eb 36                	jmp    11f0 <___mantostr+0x1e8>
    11ba:	00 00                	add    %al,(%eax)
    11bc:	c6 00 30             	movb   $0x30,(%eax)
    11bf:	ff 45 c8             	incl   -0x38(%ebp)
    11c2:	3b 45 08             	cmp    0x8(%ebp),%eax
    11c5:	75 29                	jne    11f0 <___mantostr+0x1e8>
    11c7:	ff 45 d8             	incl   -0x28(%ebp)
    11ca:	83 7d d8 01          	cmpl   $0x1,-0x28(%ebp)
    11ce:	75 10                	jne    11e0 <___mantostr+0x1d8>
    11d0:	8b 5d 1c             	mov    0x1c(%ebp),%ebx
    11d3:	8b 7d c8             	mov    -0x38(%ebp),%edi
    11d6:	29 3b                	sub    %edi,(%ebx)
    11d8:	b8 01 00 00 00       	mov    $0x1,%eax
    11dd:	eb 5b                	jmp    123a <___mantostr+0x232>
    11df:	00 c6                	add    %al,%dh
    11e1:	00 31                	add    %dh,(%ecx)
    11e3:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
    11e6:	c6 03 30             	movb   $0x30,(%ebx)
    11e9:	ff 45 c4             	incl   -0x3c(%ebp)
    11ec:	eb 0a                	jmp    11f8 <___mantostr+0x1f0>
    11ee:	00 00                	add    %al,(%eax)
    11f0:	48                   	dec    %eax
    11f1:	fe 00                	incb   (%eax)
    11f3:	80 38 39             	cmpb   $0x39,(%eax)
    11f6:	7f c4                	jg     11bc <___mantostr+0x1b4>
    11f8:	8b 5d 18             	mov    0x18(%ebp),%ebx
    11fb:	3b 5d c8             	cmp    -0x38(%ebp),%ebx
    11fe:	7d 03                	jge    1203 <___mantostr+0x1fb>
    1200:	89 5d c8             	mov    %ebx,-0x38(%ebp)
    1203:	8b 5d 1c             	mov    0x1c(%ebp),%ebx
    1206:	8b 7d c8             	mov    -0x38(%ebp),%edi
    1209:	29 3b                	sub    %edi,(%ebx)
    120b:	83 7d 20 00          	cmpl   $0x0,0x20(%ebp)
    120f:	74 26                	je     1237 <___mantostr+0x22f>
    1211:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1214:	8b 5d 18             	mov    0x18(%ebp),%ebx
    1217:	4b                   	dec    %ebx
    1218:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    121b:	83 fb ff             	cmp    $0xffffffff,%ebx
    121e:	74 14                	je     1234 <___mantostr+0x22c>
    1220:	48                   	dec    %eax
    1221:	8a 18                	mov    (%eax),%bl
    1223:	8b 7d c4             	mov    -0x3c(%ebp),%edi
    1226:	88 1f                	mov    %bl,(%edi)
    1228:	ff 4d c4             	decl   -0x3c(%ebp)
    122b:	ff 4d d4             	decl   -0x2c(%ebp)
    122e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
    1232:	75 ec                	jne    1220 <___mantostr+0x218>
    1234:	c6 00 2e             	movb   $0x2e,(%eax)
    1237:	8b 45 d8             	mov    -0x28(%ebp),%eax
    123a:	8d 65 ac             	lea    -0x54(%ebp),%esp
    123d:	5b                   	pop    %ebx
    123e:	5e                   	pop    %esi
    123f:	5f                   	pop    %edi
    1240:	c9                   	leave  
    1241:	c3                   	ret    
    1242:	30 31                	xor    %dh,(%ecx)
    1244:	00 00                	add    %al,(%eax)
	...

00001248 <___cvt>:
    1248:	55                   	push   %ebp
    1249:	89 e5                	mov    %esp,%ebp
    124b:	83 ec 3c             	sub    $0x3c,%esp
    124e:	57                   	push   %edi
    124f:	56                   	push   %esi
    1250:	53                   	push   %ebx
    1251:	31 db                	xor    %ebx,%ebx
    1253:	8b 75 10             	mov    0x10(%ebp),%esi
    1256:	8b 4d 14             	mov    0x14(%ebp),%ecx
    1259:	8b 01                	mov    (%ecx),%eax
    125b:	83 c0 08             	add    $0x8,%eax
    125e:	89 01                	mov    %eax,(%ecx)
    1260:	8b 50 f8             	mov    -0x8(%eax),%edx
    1263:	8b 48 fc             	mov    -0x4(%eax),%ecx
    1266:	89 55 cc             	mov    %edx,-0x34(%ebp)
    1269:	89 4d d0             	mov    %ecx,-0x30(%ebp)
    126c:	8d 45 f0             	lea    -0x10(%ebp),%eax
    126f:	50                   	push   %eax
    1270:	8d 45 f4             	lea    -0xc(%ebp),%eax
    1273:	50                   	push   %eax
    1274:	8d 45 fc             	lea    -0x4(%ebp),%eax
    1277:	50                   	push   %eax
    1278:	ff 75 d0             	pushl  -0x30(%ebp)
    127b:	ff 75 cc             	pushl  -0x34(%ebp)
    127e:	e8 d1 fb ff ff       	call   e54 <___signmanexp>
    1283:	c7 45 c4 11 00 00 00 	movl   $0x11,-0x3c(%ebp)
    128a:	83 c4 14             	add    $0x14,%esp
    128d:	81 7d f0 cc fe ff ff 	cmpl   $0xfffffecc,-0x10(%ebp)
    1294:	7d 16                	jge    12ac <___cvt+0x64>
    1296:	b9 45 01 00 00       	mov    $0x145,%ecx
    129b:	03 4d f0             	add    -0x10(%ebp),%ecx
    129e:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    12a1:	85 c9                	test   %ecx,%ecx
    12a3:	7f 07                	jg     12ac <___cvt+0x64>
    12a5:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    12ac:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    12b0:	74 06                	je     12b8 <___cvt+0x70>
    12b2:	c6 06 2d             	movb   $0x2d,(%esi)
    12b5:	eb 0d                	jmp    12c4 <___cvt+0x7c>
    12b7:	00 f7                	add    %dh,%bh
    12b9:	45                   	inc    %ebp
    12ba:	1c 02                	sbb    $0x2,%al
    12bc:	00 00                	add    %al,(%eax)
    12be:	00 74 04 c6          	add    %dh,-0x3a(%esp,%eax,1)
    12c2:	06                   	push   %es
    12c3:	2b 46 8b             	sub    -0x75(%esi),%eax
    12c6:	4d                   	dec    %ebp
    12c7:	0c c7                	or     $0xc7,%al
    12c9:	01 00                	add    %eax,(%eax)
    12cb:	00 00                	add    %al,(%eax)
    12cd:	00 89 f7 2b 7d 10    	add    %cl,0x107d2bf7(%ecx)
    12d3:	89 79 04             	mov    %edi,0x4(%ecx)
    12d6:	8b 7d 10             	mov    0x10(%ebp),%edi
    12d9:	89 79 08             	mov    %edi,0x8(%ecx)
    12dc:	43                   	inc    %ebx
    12dd:	8b 45 1c             	mov    0x1c(%ebp),%eax
    12e0:	25 08 04 00 00       	and    $0x408,%eax
    12e5:	3d 00 04 00 00       	cmp    $0x400,%eax
    12ea:	75 08                	jne    12f4 <___cvt+0xac>
    12ec:	8d 4d ec             	lea    -0x14(%ebp),%ecx
    12ef:	eb 06                	jmp    12f7 <___cvt+0xaf>
    12f1:	00 00                	add    %al,(%eax)
    12f3:	00 8d 4d e8 89 4d    	add    %cl,0x4d89e84d(%ebp)
    12f9:	d4 8b                	aam    $0x8b
    12fb:	4d                   	dec    %ebp
    12fc:	18 89 4d ec c7 45    	sbb    %cl,0x45c7ec4d(%ecx)
    1302:	e4 00                	in     $0x0,%al
    1304:	00 00                	add    %al,(%eax)
    1306:	00 c7                	add    %al,%bh
    1308:	45                   	inc    %ebp
    1309:	dc 00                	faddl  (%eax)
    130b:	00 00                	add    %al,(%eax)
    130d:	00 c7                	add    %al,%bh
    130f:	45                   	inc    %ebp
    1310:	e0 00                	loopne 1312 <___cvt+0xca>
    1312:	00 00                	add    %al,(%eax)
    1314:	00 f7                	add    %dh,%bh
    1316:	45                   	inc    %ebp
    1317:	1c 00                	sbb    $0x0,%al
    1319:	01 00                	add    %eax,(%eax)
    131b:	00 75 20             	add    %dh,0x20(%ebp)
    131e:	f7 45 1c 00 04 00 00 	testl  $0x400,0x1c(%ebp)
    1325:	0f 84 21 03 00 00    	je     164c <___cvt+0x404>
    132b:	83 7d f0 fc          	cmpl   $0xfffffffc,-0x10(%ebp)
    132f:	0f 8c 17 03 00 00    	jl     164c <___cvt+0x404>
    1335:	3b 4d f0             	cmp    -0x10(%ebp),%ecx
    1338:	0f 8e 0e 03 00 00    	jle    164c <___cvt+0x404>
    133e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1342:	0f 8c cc 00 00 00    	jl     1414 <___cvt+0x1cc>
    1348:	f7 45 1c 00 04 00 00 	testl  $0x400,0x1c(%ebp)
    134f:	74 0f                	je     1360 <___cvt+0x118>
    1351:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    1354:	89 4d d8             	mov    %ecx,-0x28(%ebp)
    1357:	89 c8                	mov    %ecx,%eax
    1359:	48                   	dec    %eax
    135a:	2b 45 f0             	sub    -0x10(%ebp),%eax
    135d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1360:	8b 4d f0             	mov    -0x10(%ebp),%ecx
    1363:	41                   	inc    %ecx
    1364:	89 4d c8             	mov    %ecx,-0x38(%ebp)
    1367:	89 c8                	mov    %ecx,%eax
    1369:	03 45 ec             	add    -0x14(%ebp),%eax
    136c:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
    136f:	7e 3c                	jle    13ad <___cvt+0x165>
    1371:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    1374:	3b 4d c8             	cmp    -0x38(%ebp),%ecx
    1377:	7d 1f                	jge    1398 <___cvt+0x150>
    1379:	8b 4d c8             	mov    -0x38(%ebp),%ecx
    137c:	2b 4d c4             	sub    -0x3c(%ebp),%ecx
    137f:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1382:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    1385:	89 4d c8             	mov    %ecx,-0x38(%ebp)
    1388:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    138b:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    138e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    1395:	eb 16                	jmp    13ad <___cvt+0x165>
    1397:	00 8b 4d c8 03 4d    	add    %cl,0x4d03c84d(%ebx)
    139d:	ec                   	in     (%dx),%al
    139e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    13a1:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    13a4:	29 4d e0             	sub    %ecx,-0x20(%ebp)
    13a7:	2b 4d c8             	sub    -0x38(%ebp),%ecx
    13aa:	89 4d ec             	mov    %ecx,-0x14(%ebp)
    13ad:	6a 01                	push   $0x1
    13af:	ff 75 d4             	pushl  -0x2c(%ebp)
    13b2:	ff 75 ec             	pushl  -0x14(%ebp)
    13b5:	ff 75 c8             	pushl  -0x38(%ebp)
    13b8:	ff 75 f8             	pushl  -0x8(%ebp)
    13bb:	ff 75 f4             	pushl  -0xc(%ebp)
    13be:	56                   	push   %esi
    13bf:	e8 44 fc ff ff       	call   1008 <___mantostr>
    13c4:	89 45 c8             	mov    %eax,-0x38(%ebp)
    13c7:	83 c4 1c             	add    $0x1c,%esp
    13ca:	f7 45 1c 00 04 00 00 	testl  $0x400,0x1c(%ebp)
    13d1:	0f 84 43 01 00 00    	je     151a <___cvt+0x2d2>
    13d7:	8b 4d d8             	mov    -0x28(%ebp),%ecx
    13da:	39 c1                	cmp    %eax,%ecx
    13dc:	0f 8d 38 01 00 00    	jge    151a <___cvt+0x2d2>
    13e2:	ff 45 f0             	incl   -0x10(%ebp)
    13e5:	c6 06 31             	movb   $0x31,(%esi)
    13e8:	c6 46 01 2e          	movb   $0x2e,0x1(%esi)
    13ec:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    13f3:	f7 45 1c 08 00 00 00 	testl  $0x8,0x1c(%ebp)
    13fa:	74 0c                	je     1408 <___cvt+0x1c0>
    13fc:	8b 4d 18             	mov    0x18(%ebp),%ecx
    13ff:	49                   	dec    %ecx
    1400:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    1403:	e9 97 02 00 00       	jmp    169f <___cvt+0x457>
    1408:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    140f:	e9 8b 02 00 00       	jmp    169f <___cvt+0x457>
    1414:	c6 06 30             	movb   $0x30,(%esi)
    1417:	c6 46 01 2e          	movb   $0x2e,0x1(%esi)
    141b:	c7 45 c8 01 00 00 00 	movl   $0x1,-0x38(%ebp)
    1422:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1425:	f7 d8                	neg    %eax
    1427:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    142a:	7f 68                	jg     1494 <___cvt+0x24c>
    142c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1431:	2b 4d f0             	sub    -0x10(%ebp),%ecx
    1434:	89 4d dc             	mov    %ecx,-0x24(%ebp)
    1437:	29 4d ec             	sub    %ecx,-0x14(%ebp)
    143a:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    143d:	3b 4d ec             	cmp    -0x14(%ebp),%ecx
    1440:	7d 0f                	jge    1451 <___cvt+0x209>
    1442:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    1445:	2b 4d c4             	sub    -0x3c(%ebp),%ecx
    1448:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    144b:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    144e:	89 4d ec             	mov    %ecx,-0x14(%ebp)
    1451:	6a 00                	push   $0x0
    1453:	ff 75 d4             	pushl  -0x2c(%ebp)
    1456:	ff 75 ec             	pushl  -0x14(%ebp)
    1459:	6a 00                	push   $0x0
    145b:	ff 75 f8             	pushl  -0x8(%ebp)
    145e:	ff 75 f4             	pushl  -0xc(%ebp)
    1461:	8d 46 02             	lea    0x2(%esi),%eax
    1464:	50                   	push   %eax
    1465:	e8 9e fb ff ff       	call   1008 <___mantostr>
    146a:	85 c0                	test   %eax,%eax
    146c:	0f 84 a8 00 00 00    	je     151a <___cvt+0x2d2>
    1472:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    1476:	74 36                	je     14ae <___cvt+0x266>
    1478:	c6 46 02 31          	movb   $0x31,0x2(%esi)
    147c:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    147f:	01 4d e0             	add    %ecx,-0x20(%ebp)
    1482:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    1489:	ff 4d dc             	decl   -0x24(%ebp)
    148c:	e9 89 00 00 00       	jmp    151a <___cvt+0x2d2>
    1491:	00 00                	add    %al,(%eax)
    1493:	00 ff                	add    %bh,%bh
    1495:	75 f8                	jne    148f <___cvt+0x247>
    1497:	ff 75 f4             	pushl  -0xc(%ebp)
    149a:	e8 e1 09 00 00       	call   1e80 <___fixdfsi>
    149f:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    14a2:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
    14a6:	75 0c                	jne    14b4 <___cvt+0x26c>
    14a8:	83 7d c4 04          	cmpl   $0x4,-0x3c(%ebp)
    14ac:	7e 6c                	jle    151a <___cvt+0x2d2>
    14ae:	c6 06 31             	movb   $0x31,(%esi)
    14b1:	eb 67                	jmp    151a <___cvt+0x2d2>
    14b3:	00 c7                	add    %al,%bh
    14b5:	45                   	inc    %ebp
    14b6:	cc                   	int3   
    14b7:	00 00                	add    %al,(%eax)
    14b9:	00 00                	add    %al,(%eax)
    14bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    14c0:	2b 45 f0             	sub    -0x10(%ebp),%eax
    14c3:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    14c6:	75 0d                	jne    14d5 <___cvt+0x28d>
    14c8:	83 7d c4 04          	cmpl   $0x4,-0x3c(%ebp)
    14cc:	7e 07                	jle    14d5 <___cvt+0x28d>
    14ce:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
    14d5:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    14d8:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    14db:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    14df:	74 15                	je     14f6 <___cvt+0x2ae>
    14e1:	8b 45 1c             	mov    0x1c(%ebp),%eax
    14e4:	25 08 04 00 00       	and    $0x408,%eax
    14e9:	3d 00 04 00 00       	cmp    $0x400,%eax
    14ee:	75 10                	jne    1500 <___cvt+0x2b8>
    14f0:	83 7d c4 00          	cmpl   $0x0,-0x3c(%ebp)
    14f4:	75 0a                	jne    1500 <___cvt+0x2b8>
    14f6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    14fd:	eb 1b                	jmp    151a <___cvt+0x2d2>
    14ff:	00 8b 4d ec 49 89    	add    %cl,-0x76b613b3(%ebx)
    1505:	4d                   	dec    %ebp
    1506:	dc 8b 7d c4 8a 8f    	fmull  -0x70753b83(%ebx)
    150c:	42                   	inc    %edx
    150d:	12 00                	adc    (%eax),%al
    150f:	00 88 4e 02 c7 45    	add    %cl,0x45c7024e(%eax)
    1515:	ec                   	in     (%dx),%al
    1516:	01 00                	add    %eax,(%eax)
    1518:	00 00                	add    %al,(%eax)
    151a:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    151d:	c1 e0 02             	shl    $0x2,%eax
    1520:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1523:	c7 04 08 00 00 00 00 	movl   $0x0,(%eax,%ecx,1)
    152a:	8b 7d c8             	mov    -0x38(%ebp),%edi
    152d:	89 7c 08 04          	mov    %edi,0x4(%eax,%ecx,1)
    1531:	89 74 08 08          	mov    %esi,0x8(%eax,%ecx,1)
    1535:	8d 34 37             	lea    (%edi,%esi,1),%esi
    1538:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    153c:	74 37                	je     1575 <___cvt+0x32d>
    153e:	43                   	inc    %ebx
    153f:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    1542:	c1 e0 02             	shl    $0x2,%eax
    1545:	c7 04 08 01 00 00 00 	movl   $0x1,(%eax,%ecx,1)
    154c:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    154f:	89 7c 08 04          	mov    %edi,0x4(%eax,%ecx,1)
    1553:	c7 44 08 08 7c 30 00 	movl   $0x307c,0x8(%eax,%ecx,1)
    155a:	00 
    155b:	43                   	inc    %ebx
    155c:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    155f:	c1 e0 02             	shl    $0x2,%eax
    1562:	c7 04 08 00 00 00 00 	movl   $0x0,(%eax,%ecx,1)
    1569:	c7 44 08 04 00 00 00 	movl   $0x0,0x4(%eax,%ecx,1)
    1570:	00 
    1571:	89 74 08 08          	mov    %esi,0x8(%eax,%ecx,1)
    1575:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    1579:	75 18                	jne    1593 <___cvt+0x34b>
    157b:	f7 45 1c 08 00 00 00 	testl  $0x8,0x1c(%ebp)
    1582:	75 0f                	jne    1593 <___cvt+0x34b>
    1584:	f7 45 1c 00 01 00 00 	testl  $0x100,0x1c(%ebp)
    158b:	74 11                	je     159e <___cvt+0x356>
    158d:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    1591:	74 0b                	je     159e <___cvt+0x356>
    1593:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    1596:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1599:	ff 44 81 04          	incl   0x4(%ecx,%eax,4)
    159d:	46                   	inc    %esi
    159e:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    15a2:	74 3a                	je     15de <___cvt+0x396>
    15a4:	43                   	inc    %ebx
    15a5:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    15a8:	c1 e0 02             	shl    $0x2,%eax
    15ab:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    15ae:	c7 04 08 01 00 00 00 	movl   $0x1,(%eax,%ecx,1)
    15b5:	8b 7d dc             	mov    -0x24(%ebp),%edi
    15b8:	89 7c 08 04          	mov    %edi,0x4(%eax,%ecx,1)
    15bc:	c7 44 08 08 7c 30 00 	movl   $0x307c,0x8(%eax,%ecx,1)
    15c3:	00 
    15c4:	43                   	inc    %ebx
    15c5:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    15c8:	c1 e0 02             	shl    $0x2,%eax
    15cb:	c7 04 08 00 00 00 00 	movl   $0x0,(%eax,%ecx,1)
    15d2:	c7 44 08 04 00 00 00 	movl   $0x0,0x4(%eax,%ecx,1)
    15d9:	00 
    15da:	89 74 08 08          	mov    %esi,0x8(%eax,%ecx,1)
    15de:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    15e1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    15e4:	8b 7d ec             	mov    -0x14(%ebp),%edi
    15e7:	01 7c 81 04          	add    %edi,0x4(%ecx,%eax,4)
    15eb:	03 75 ec             	add    -0x14(%ebp),%esi
    15ee:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    15f2:	74 0f                	je     1603 <___cvt+0x3bb>
    15f4:	8b 45 1c             	mov    0x1c(%ebp),%eax
    15f7:	25 08 04 00 00       	and    $0x408,%eax
    15fc:	3d 00 04 00 00       	cmp    $0x400,%eax
    1601:	75 09                	jne    160c <___cvt+0x3c4>
    1603:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    160a:	eb 20                	jmp    162c <___cvt+0x3e4>
    160c:	43                   	inc    %ebx
    160d:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    1610:	c1 e0 02             	shl    $0x2,%eax
    1613:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    1616:	c7 04 08 01 00 00 00 	movl   $0x1,(%eax,%ecx,1)
    161d:	8b 7d e0             	mov    -0x20(%ebp),%edi
    1620:	89 7c 08 04          	mov    %edi,0x4(%eax,%ecx,1)
    1624:	c7 44 08 08 7c 30 00 	movl   $0x307c,0x8(%eax,%ecx,1)
    162b:	00 
    162c:	89 f0                	mov    %esi,%eax
    162e:	2b 45 10             	sub    0x10(%ebp),%eax
    1631:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    1634:	8d 04 01             	lea    (%ecx,%eax,1),%eax
    1637:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    163a:	8d 04 01             	lea    (%ecx,%eax,1),%eax
    163d:	03 45 e4             	add    -0x1c(%ebp),%eax
    1640:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1643:	89 01                	mov    %eax,(%ecx)
    1645:	e9 41 01 00 00       	jmp    178b <___cvt+0x543>
    164a:	00 00                	add    %al,(%eax)
    164c:	f7 45 1c 00 04 00 00 	testl  $0x400,0x1c(%ebp)
    1653:	74 09                	je     165e <___cvt+0x416>
    1655:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
    1659:	7e 03                	jle    165e <___cvt+0x416>
    165b:	ff 4d ec             	decl   -0x14(%ebp)
    165e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1661:	48                   	dec    %eax
    1662:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    1665:	7d 0f                	jge    1676 <___cvt+0x42e>
    1667:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    166a:	2b 4d c4             	sub    -0x3c(%ebp),%ecx
    166d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    1670:	ff 45 e0             	incl   -0x20(%ebp)
    1673:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1676:	6a 01                	push   $0x1
    1678:	ff 75 d4             	pushl  -0x2c(%ebp)
    167b:	ff 75 ec             	pushl  -0x14(%ebp)
    167e:	6a 01                	push   $0x1
    1680:	ff 75 f8             	pushl  -0x8(%ebp)
    1683:	ff 75 f4             	pushl  -0xc(%ebp)
    1686:	56                   	push   %esi
    1687:	e8 7c f9 ff ff       	call   1008 <___mantostr>
    168c:	83 c4 1c             	add    $0x1c,%esp
    168f:	83 f8 02             	cmp    $0x2,%eax
    1692:	75 0b                	jne    169f <___cvt+0x457>
    1694:	ff 45 f0             	incl   -0x10(%ebp)
    1697:	c6 46 01 2e          	movb   $0x2e,0x1(%esi)
    169b:	c6 46 02 30          	movb   $0x30,0x2(%esi)
    169f:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    16a2:	c1 e0 02             	shl    $0x2,%eax
    16a5:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    16a8:	c7 04 08 00 00 00 00 	movl   $0x0,(%eax,%ecx,1)
    16af:	8b 7d ec             	mov    -0x14(%ebp),%edi
    16b2:	47                   	inc    %edi
    16b3:	89 7c 08 04          	mov    %edi,0x4(%eax,%ecx,1)
    16b7:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    16bb:	75 18                	jne    16d5 <___cvt+0x48d>
    16bd:	f7 45 1c 08 00 00 00 	testl  $0x8,0x1c(%ebp)
    16c4:	75 0f                	jne    16d5 <___cvt+0x48d>
    16c6:	f7 45 1c 00 04 00 00 	testl  $0x400,0x1c(%ebp)
    16cd:	75 10                	jne    16df <___cvt+0x497>
    16cf:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
    16d3:	7e 0a                	jle    16df <___cvt+0x497>
    16d5:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    16d8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    16db:	ff 44 81 04          	incl   0x4(%ecx,%eax,4)
    16df:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    16e2:	c1 e0 02             	shl    $0x2,%eax
    16e5:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    16e8:	89 74 08 08          	mov    %esi,0x8(%eax,%ecx,1)
    16ec:	03 74 08 04          	add    0x4(%eax,%ecx,1),%esi
    16f0:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    16f4:	74 40                	je     1736 <___cvt+0x4ee>
    16f6:	f7 45 1c 00 02 00 00 	testl  $0x200,0x1c(%ebp)
    16fd:	74 37                	je     1736 <___cvt+0x4ee>
    16ff:	43                   	inc    %ebx
    1700:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    1703:	c1 e0 02             	shl    $0x2,%eax
    1706:	c7 04 08 01 00 00 00 	movl   $0x1,(%eax,%ecx,1)
    170d:	8b 7d e0             	mov    -0x20(%ebp),%edi
    1710:	89 7c 08 04          	mov    %edi,0x4(%eax,%ecx,1)
    1714:	c7 44 08 08 7c 30 00 	movl   $0x307c,0x8(%eax,%ecx,1)
    171b:	00 
    171c:	43                   	inc    %ebx
    171d:	8d 04 5b             	lea    (%ebx,%ebx,2),%eax
    1720:	c1 e0 02             	shl    $0x2,%eax
    1723:	c7 04 08 00 00 00 00 	movl   $0x0,(%eax,%ecx,1)
    172a:	c7 44 08 04 00 00 00 	movl   $0x0,0x4(%eax,%ecx,1)
    1731:	00 
    1732:	89 74 08 08          	mov    %esi,0x8(%eax,%ecx,1)
    1736:	f7 45 1c 00 08 00 00 	testl  $0x800,0x1c(%ebp)
    173d:	74 05                	je     1744 <___cvt+0x4fc>
    173f:	b0 45                	mov    $0x45,%al
    1741:	eb 03                	jmp    1746 <___cvt+0x4fe>
    1743:	00 b0 65 88 06 83    	add    %dh,-0x7cf9779b(%eax)
    1749:	7d f0                	jge    173b <___cvt+0x4f3>
    174b:	00 7c 06 c6          	add    %bh,-0x3a(%esi,%eax,1)
    174f:	46                   	inc    %esi
    1750:	01 2b                	add    %ebp,(%ebx)
    1752:	eb 07                	jmp    175b <___cvt+0x513>
    1754:	c6 46 01 2d          	movb   $0x2d,0x1(%esi)
    1758:	f7 5d f0             	negl   -0x10(%ebp)
    175b:	6a 02                	push   $0x2
    175d:	ff 75 f0             	pushl  -0x10(%ebp)
    1760:	8d 46 02             	lea    0x2(%esi),%eax
    1763:	50                   	push   %eax
    1764:	e8 b7 06 00 00       	call   1e20 <___utoa>
    1769:	29 f0                	sub    %esi,%eax
    176b:	8d 0c 5b             	lea    (%ebx,%ebx,2),%ecx
    176e:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    1771:	8b 7d 0c             	mov    0xc(%ebp),%edi
    1774:	01 44 8f 04          	add    %eax,0x4(%edi,%ecx,4)
    1778:	2b 75 10             	sub    0x10(%ebp),%esi
    177b:	89 75 c4             	mov    %esi,-0x3c(%ebp)
    177e:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
    1781:	89 cf                	mov    %ecx,%edi
    1783:	03 7d e0             	add    -0x20(%ebp),%edi
    1786:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1789:	89 39                	mov    %edi,(%ecx)
    178b:	89 d8                	mov    %ebx,%eax
    178d:	40                   	inc    %eax
    178e:	8d 65 b8             	lea    -0x48(%ebp),%esp
    1791:	5b                   	pop    %ebx
    1792:	5e                   	pop    %esi
    1793:	5f                   	pop    %edi
    1794:	c9                   	leave  
    1795:	c3                   	ret    
	...

00001798 <___gguard>:
    1798:	55                   	push   %ebp
    1799:	89 e5                	mov    %esp,%ebp
    179b:	83 ec 0c             	sub    $0xc,%esp
    179e:	57                   	push   %edi
    179f:	56                   	push   %esi
    17a0:	53                   	push   %ebx
    17a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    17a4:	8d 45 fc             	lea    -0x4(%ebp),%eax
    17a7:	50                   	push   %eax
    17a8:	ff 73 04             	pushl  0x4(%ebx)
    17ab:	ff 33                	pushl  (%ebx)
    17ad:	e8 a2 07 00 00       	call   1f54 <_frexp>
    17b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
    17b5:	89 55 f8             	mov    %edx,-0x8(%ebp)
    17b8:	83 45 fc e6          	addl   $0xffffffe6,-0x4(%ebp)
    17bc:	6a 1a                	push   $0x1a
    17be:	ff 75 f8             	pushl  -0x8(%ebp)
    17c1:	ff 75 f4             	pushl  -0xc(%ebp)
    17c4:	e8 a3 07 00 00       	call   1f6c <_ldexp>
    17c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    17cc:	89 55 f8             	mov    %edx,-0x8(%ebp)
    17cf:	8d 45 f4             	lea    -0xc(%ebp),%eax
    17d2:	50                   	push   %eax
    17d3:	ff 75 f8             	pushl  -0x8(%ebp)
    17d6:	ff 75 f4             	pushl  -0xc(%ebp)
    17d9:	e8 a6 07 00 00       	call   1f84 <_modf>
    17de:	89 c6                	mov    %eax,%esi
    17e0:	89 d7                	mov    %edx,%edi
    17e2:	83 c4 24             	add    $0x24,%esp
    17e5:	ff 75 fc             	pushl  -0x4(%ebp)
    17e8:	ff 75 f8             	pushl  -0x8(%ebp)
    17eb:	ff 75 f4             	pushl  -0xc(%ebp)
    17ee:	e8 79 07 00 00       	call   1f6c <_ldexp>
    17f3:	89 03                	mov    %eax,(%ebx)
    17f5:	89 53 04             	mov    %edx,0x4(%ebx)
    17f8:	ff 75 fc             	pushl  -0x4(%ebp)
    17fb:	57                   	push   %edi
    17fc:	56                   	push   %esi
    17fd:	e8 6a 07 00 00       	call   1f6c <_ldexp>
    1802:	ff 73 0c             	pushl  0xc(%ebx)
    1805:	ff 73 08             	pushl  0x8(%ebx)
    1808:	52                   	push   %edx
    1809:	50                   	push   %eax
    180a:	e8 dd 06 00 00       	call   1eec <___adddf3>
    180f:	89 43 08             	mov    %eax,0x8(%ebx)
    1812:	89 53 0c             	mov    %edx,0xc(%ebx)
    1815:	8d 65 e8             	lea    -0x18(%ebp),%esp
    1818:	5b                   	pop    %ebx
    1819:	5e                   	pop    %esi
    181a:	5f                   	pop    %edi
    181b:	c9                   	leave  
    181c:	c3                   	ret    
    181d:	00 00                	add    %al,(%eax)
	...

00001820 <___gmul>:
    1820:	55                   	push   %ebp
    1821:	57                   	push   %edi
    1822:	56                   	push   %esi
    1823:	53                   	push   %ebx
    1824:	8b 5c 24 14          	mov    0x14(%esp),%ebx
    1828:	8b 74 24 18          	mov    0x18(%esp),%esi
    182c:	ff 76 0c             	pushl  0xc(%esi)
    182f:	ff 76 08             	pushl  0x8(%esi)
    1832:	ff 73 0c             	pushl  0xc(%ebx)
    1835:	ff 73 08             	pushl  0x8(%ebx)
    1838:	e8 57 06 00 00       	call   1e94 <___muldf3>
    183d:	83 c4 10             	add    $0x10,%esp
    1840:	89 c7                	mov    %eax,%edi
    1842:	89 d5                	mov    %edx,%ebp
    1844:	ff 76 0c             	pushl  0xc(%esi)
    1847:	ff 76 08             	pushl  0x8(%esi)
    184a:	ff 73 04             	pushl  0x4(%ebx)
    184d:	ff 33                	pushl  (%ebx)
    184f:	e8 40 06 00 00       	call   1e94 <___muldf3>
    1854:	83 c4 10             	add    $0x10,%esp
    1857:	52                   	push   %edx
    1858:	50                   	push   %eax
    1859:	55                   	push   %ebp
    185a:	57                   	push   %edi
    185b:	e8 8c 06 00 00       	call   1eec <___adddf3>
    1860:	83 c4 10             	add    $0x10,%esp
    1863:	89 c7                	mov    %eax,%edi
    1865:	89 d5                	mov    %edx,%ebp
    1867:	ff 76 04             	pushl  0x4(%esi)
    186a:	ff 36                	pushl  (%esi)
    186c:	ff 73 0c             	pushl  0xc(%ebx)
    186f:	ff 73 08             	pushl  0x8(%ebx)
    1872:	e8 1d 06 00 00       	call   1e94 <___muldf3>
    1877:	83 c4 10             	add    $0x10,%esp
    187a:	52                   	push   %edx
    187b:	50                   	push   %eax
    187c:	55                   	push   %ebp
    187d:	57                   	push   %edi
    187e:	e8 69 06 00 00       	call   1eec <___adddf3>
    1883:	83 c4 10             	add    $0x10,%esp
    1886:	89 c7                	mov    %eax,%edi
    1888:	89 d5                	mov    %edx,%ebp
    188a:	ff 76 04             	pushl  0x4(%esi)
    188d:	ff 36                	pushl  (%esi)
    188f:	ff 73 04             	pushl  0x4(%ebx)
    1892:	ff 33                	pushl  (%ebx)
    1894:	e8 fb 05 00 00       	call   1e94 <___muldf3>
    1899:	83 c4 10             	add    $0x10,%esp
    189c:	52                   	push   %edx
    189d:	50                   	push   %eax
    189e:	55                   	push   %ebp
    189f:	57                   	push   %edi
    18a0:	e8 47 06 00 00       	call   1eec <___adddf3>
    18a5:	83 c4 10             	add    $0x10,%esp
    18a8:	8b 4b 10             	mov    0x10(%ebx),%ecx
    18ab:	03 4e 10             	add    0x10(%esi),%ecx
    18ae:	51                   	push   %ecx
    18af:	52                   	push   %edx
    18b0:	50                   	push   %eax
    18b1:	e8 b6 06 00 00       	call   1f6c <_ldexp>
    18b6:	83 c4 0c             	add    $0xc,%esp
    18b9:	5b                   	pop    %ebx
    18ba:	5e                   	pop    %esi
    18bb:	5f                   	pop    %edi
    18bc:	5d                   	pop    %ebp
    18bd:	c3                   	ret    
	...

000018c0 <___ggmul>:
    18c0:	55                   	push   %ebp
    18c1:	89 e5                	mov    %esp,%ebp
    18c3:	83 ec 10             	sub    $0x10,%esp
    18c6:	57                   	push   %edi
    18c7:	56                   	push   %esi
    18c8:	53                   	push   %ebx
    18c9:	8b 75 08             	mov    0x8(%ebp),%esi
    18cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    18cf:	8b 7d 10             	mov    0x10(%ebp),%edi
    18d2:	ff 77 0c             	pushl  0xc(%edi)
    18d5:	ff 77 08             	pushl  0x8(%edi)
    18d8:	ff 73 0c             	pushl  0xc(%ebx)
    18db:	ff 73 08             	pushl  0x8(%ebx)
    18de:	e8 b1 05 00 00       	call   1e94 <___muldf3>
    18e3:	83 c4 10             	add    $0x10,%esp
    18e6:	89 45 f8             	mov    %eax,-0x8(%ebp)
    18e9:	89 55 fc             	mov    %edx,-0x4(%ebp)
    18ec:	ff 77 0c             	pushl  0xc(%edi)
    18ef:	ff 77 08             	pushl  0x8(%edi)
    18f2:	ff 73 04             	pushl  0x4(%ebx)
    18f5:	ff 33                	pushl  (%ebx)
    18f7:	e8 98 05 00 00       	call   1e94 <___muldf3>
    18fc:	83 c4 10             	add    $0x10,%esp
    18ff:	52                   	push   %edx
    1900:	50                   	push   %eax
    1901:	ff 75 fc             	pushl  -0x4(%ebp)
    1904:	ff 75 f8             	pushl  -0x8(%ebp)
    1907:	e8 e0 05 00 00       	call   1eec <___adddf3>
    190c:	83 c4 10             	add    $0x10,%esp
    190f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1912:	89 55 f4             	mov    %edx,-0xc(%ebp)
    1915:	ff 77 04             	pushl  0x4(%edi)
    1918:	ff 37                	pushl  (%edi)
    191a:	ff 73 0c             	pushl  0xc(%ebx)
    191d:	ff 73 08             	pushl  0x8(%ebx)
    1920:	e8 6f 05 00 00       	call   1e94 <___muldf3>
    1925:	83 c4 10             	add    $0x10,%esp
    1928:	52                   	push   %edx
    1929:	50                   	push   %eax
    192a:	ff 75 f4             	pushl  -0xc(%ebp)
    192d:	ff 75 f0             	pushl  -0x10(%ebp)
    1930:	e8 b7 05 00 00       	call   1eec <___adddf3>
    1935:	83 c4 10             	add    $0x10,%esp
    1938:	89 46 08             	mov    %eax,0x8(%esi)
    193b:	89 56 0c             	mov    %edx,0xc(%esi)
    193e:	ff 77 04             	pushl  0x4(%edi)
    1941:	ff 37                	pushl  (%edi)
    1943:	ff 73 04             	pushl  0x4(%ebx)
    1946:	ff 33                	pushl  (%ebx)
    1948:	e8 47 05 00 00       	call   1e94 <___muldf3>
    194d:	83 c4 10             	add    $0x10,%esp
    1950:	89 06                	mov    %eax,(%esi)
    1952:	89 56 04             	mov    %edx,0x4(%esi)
    1955:	8b 4b 10             	mov    0x10(%ebx),%ecx
    1958:	03 4f 10             	add    0x10(%edi),%ecx
    195b:	89 4e 10             	mov    %ecx,0x10(%esi)
    195e:	8d 65 e4             	lea    -0x1c(%ebp),%esp
    1961:	5b                   	pop    %ebx
    1962:	5e                   	pop    %esi
    1963:	5f                   	pop    %edi
    1964:	c9                   	leave  
    1965:	c3                   	ret    
	...

00001968 <___gnumber>:
    1968:	53                   	push   %ebx
    1969:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    196d:	ff 73 0c             	pushl  0xc(%ebx)
    1970:	ff 73 08             	pushl  0x8(%ebx)
    1973:	ff 73 04             	pushl  0x4(%ebx)
    1976:	ff 33                	pushl  (%ebx)
    1978:	e8 6f 05 00 00       	call   1eec <___adddf3>
    197d:	83 c4 10             	add    $0x10,%esp
    1980:	83 7b 10 00          	cmpl   $0x0,0x10(%ebx)
    1984:	74 0d                	je     1993 <___gnumber+0x2b>
    1986:	ff 73 10             	pushl  0x10(%ebx)
    1989:	52                   	push   %edx
    198a:	50                   	push   %eax
    198b:	e8 dc 05 00 00       	call   1f6c <_ldexp>
    1990:	83 c4 0c             	add    $0xc,%esp
    1993:	5b                   	pop    %ebx
    1994:	c3                   	ret    
    1995:	00 00                	add    %al,(%eax)
	...

00001998 <___gnormal>:
    1998:	53                   	push   %ebx
    1999:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    199d:	83 7b 10 00          	cmpl   $0x0,0x10(%ebx)
    19a1:	74 30                	je     19d3 <___gnormal+0x3b>
    19a3:	ff 73 10             	pushl  0x10(%ebx)
    19a6:	ff 73 04             	pushl  0x4(%ebx)
    19a9:	ff 33                	pushl  (%ebx)
    19ab:	e8 bc 05 00 00       	call   1f6c <_ldexp>
    19b0:	89 03                	mov    %eax,(%ebx)
    19b2:	89 53 04             	mov    %edx,0x4(%ebx)
    19b5:	ff 73 10             	pushl  0x10(%ebx)
    19b8:	ff 73 0c             	pushl  0xc(%ebx)
    19bb:	ff 73 08             	pushl  0x8(%ebx)
    19be:	e8 a9 05 00 00       	call   1f6c <_ldexp>
    19c3:	89 43 08             	mov    %eax,0x8(%ebx)
    19c6:	89 53 0c             	mov    %edx,0xc(%ebx)
    19c9:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
    19d0:	83 c4 18             	add    $0x18,%esp
    19d3:	5b                   	pop    %ebx
    19d4:	c3                   	ret    
    19d5:	00 00                	add    %al,(%eax)
	...

000019d8 <___xpow10>:
    19d8:	55                   	push   %ebp
    19d9:	89 e5                	mov    %esp,%ebp
    19db:	83 ec 34             	sub    $0x34,%esp
    19de:	57                   	push   %edi
    19df:	56                   	push   %esi
    19e0:	53                   	push   %ebx
    19e1:	8b 55 08             	mov    0x8(%ebp),%edx
    19e4:	85 d2                	test   %edx,%edx
    19e6:	7d 08                	jge    19f0 <___xpow10+0x18>
    19e8:	89 d1                	mov    %edx,%ecx
    19ea:	f7 d9                	neg    %ecx
    19ec:	eb 04                	jmp    19f2 <___xpow10+0x1a>
    19ee:	00 00                	add    %al,(%eax)
    19f0:	89 d1                	mov    %edx,%ecx
    19f2:	83 f9 0f             	cmp    $0xf,%ecx
    19f5:	0f 87 91 00 00 00    	ja     1a8c <___xpow10+0xb4>
    19fb:	85 d2                	test   %edx,%edx
    19fd:	7d 02                	jge    1a01 <___xpow10+0x29>
    19ff:	01 d2                	add    %edx,%edx
    1a01:	8d 04 d5 78 31 00 00 	lea    0x3178(,%edx,8),%eax
    1a08:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    1a0c:	75 2a                	jne    1a38 <___xpow10+0x60>
    1a0e:	85 d2                	test   %edx,%edx
    1a10:	7d 16                	jge    1a28 <___xpow10+0x50>
    1a12:	ff 70 0c             	pushl  0xc(%eax)
    1a15:	ff 70 08             	pushl  0x8(%eax)
    1a18:	ff 70 04             	pushl  0x4(%eax)
    1a1b:	ff 30                	pushl  (%eax)
    1a1d:	e8 ca 04 00 00       	call   1eec <___adddf3>
    1a22:	e9 8f 01 00 00       	jmp    1bb6 <___xpow10+0x1de>
    1a27:	00 8b 18 8b 70 04    	add    %cl,0x4708b18(%ebx)
    1a2d:	89 d8                	mov    %ebx,%eax
    1a2f:	89 f2                	mov    %esi,%edx
    1a31:	e9 80 01 00 00       	jmp    1bb6 <___xpow10+0x1de>
    1a36:	00 00                	add    %al,(%eax)
    1a38:	8b 18                	mov    (%eax),%ebx
    1a3a:	8b 70 04             	mov    0x4(%eax),%esi
    1a3d:	8b 7d 0c             	mov    0xc(%ebp),%edi
    1a40:	89 1f                	mov    %ebx,(%edi)
    1a42:	89 77 04             	mov    %esi,0x4(%edi)
    1a45:	85 d2                	test   %edx,%edx
    1a47:	7d 0f                	jge    1a58 <___xpow10+0x80>
    1a49:	8b 58 08             	mov    0x8(%eax),%ebx
    1a4c:	8b 70 0c             	mov    0xc(%eax),%esi
    1a4f:	89 5d cc             	mov    %ebx,-0x34(%ebp)
    1a52:	89 75 d0             	mov    %esi,-0x30(%ebp)
    1a55:	eb 0f                	jmp    1a66 <___xpow10+0x8e>
    1a57:	00 c7                	add    %al,%bh
    1a59:	45                   	inc    %ebp
    1a5a:	cc                   	int3   
    1a5b:	00 00                	add    %al,(%eax)
    1a5d:	00 00                	add    %al,(%eax)
    1a5f:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
    1a66:	8b 5d cc             	mov    -0x34(%ebp),%ebx
    1a69:	8b 75 d0             	mov    -0x30(%ebp),%esi
    1a6c:	8b 7d 0c             	mov    0xc(%ebp),%edi
    1a6f:	89 5f 08             	mov    %ebx,0x8(%edi)
    1a72:	89 77 0c             	mov    %esi,0xc(%edi)
    1a75:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
    1a7c:	83 fa 0b             	cmp    $0xb,%edx
    1a7f:	0f 8e 27 01 00 00    	jle    1bac <___xpow10+0x1d4>
    1a85:	e9 da 00 00 00       	jmp    1b64 <___xpow10+0x18c>
    1a8a:	00 00                	add    %al,(%eax)
    1a8c:	3b 15 58 34 00 00    	cmp    0x3458,%edx
    1a92:	0f 8c d8 00 00 00    	jl     1b70 <___xpow10+0x198>
    1a98:	3b 15 5c 34 00 00    	cmp    0x345c,%edx
    1a9e:	0f 8f cc 00 00 00    	jg     1b70 <___xpow10+0x198>
    1aa4:	89 cf                	mov    %ecx,%edi
    1aa6:	c1 ef 04             	shr    $0x4,%edi
    1aa9:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    1aac:	89 f8                	mov    %edi,%eax
    1aae:	c1 e0 04             	shl    $0x4,%eax
    1ab1:	29 c1                	sub    %eax,%ecx
    1ab3:	85 d2                	test   %edx,%edx
    1ab5:	7c 09                	jl     1ac0 <___xpow10+0xe8>
    1ab7:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    1abe:	eb 16                	jmp    1ad6 <___xpow10+0xfe>
    1ac0:	bf 01 00 00 00       	mov    $0x1,%edi
    1ac5:	2b 7d d4             	sub    -0x2c(%ebp),%edi
    1ac8:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    1acb:	f7 d9                	neg    %ecx
    1acd:	01 c9                	add    %ecx,%ecx
    1acf:	c7 45 e8 b1 ff ff ff 	movl   $0xffffffb1,-0x18(%ebp)
    1ad6:	8d 04 cd 78 31 00 00 	lea    0x3178(,%ecx,8),%eax
    1add:	8b 18                	mov    (%eax),%ebx
    1adf:	8b 70 04             	mov    0x4(%eax),%esi
    1ae2:	89 5d ec             	mov    %ebx,-0x14(%ebp)
    1ae5:	89 75 f0             	mov    %esi,-0x10(%ebp)
    1ae8:	85 c9                	test   %ecx,%ecx
    1aea:	7d 0c                	jge    1af8 <___xpow10+0x120>
    1aec:	8b 58 08             	mov    0x8(%eax),%ebx
    1aef:	8b 70 0c             	mov    0xc(%eax),%esi
    1af2:	89 d8                	mov    %ebx,%eax
    1af4:	89 f2                	mov    %esi,%edx
    1af6:	eb 0a                	jmp    1b02 <___xpow10+0x12a>
    1af8:	b8 00 00 00 00       	mov    $0x0,%eax
    1afd:	ba 00 00 00 00       	mov    $0x0,%edx
    1b02:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1b05:	89 55 f8             	mov    %edx,-0x8(%ebp)
    1b08:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    1b0f:	8d 45 ec             	lea    -0x14(%ebp),%eax
    1b12:	50                   	push   %eax
    1b13:	e8 80 fc ff ff       	call   1798 <___gguard>
    1b18:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1b1b:	c1 e0 04             	shl    $0x4,%eax
    1b1e:	8d 80 18 33 00 00    	lea    0x3318(%eax),%eax
    1b24:	8b 18                	mov    (%eax),%ebx
    1b26:	8b 70 04             	mov    0x4(%eax),%esi
    1b29:	89 5d d8             	mov    %ebx,-0x28(%ebp)
    1b2c:	89 75 dc             	mov    %esi,-0x24(%ebp)
    1b2f:	8b 58 08             	mov    0x8(%eax),%ebx
    1b32:	8b 70 0c             	mov    0xc(%eax),%esi
    1b35:	89 5d e0             	mov    %ebx,-0x20(%ebp)
    1b38:	89 75 e4             	mov    %esi,-0x1c(%ebp)
    1b3b:	83 c4 04             	add    $0x4,%esp
    1b3e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    1b42:	75 10                	jne    1b54 <___xpow10+0x17c>
    1b44:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1b47:	50                   	push   %eax
    1b48:	8d 45 ec             	lea    -0x14(%ebp),%eax
    1b4b:	50                   	push   %eax
    1b4c:	e8 cf fc ff ff       	call   1820 <___gmul>
    1b51:	eb 63                	jmp    1bb6 <___xpow10+0x1de>
    1b53:	00 8d 45 d8 50 8d    	add    %cl,-0x72af27bb(%ebp)
    1b59:	45                   	inc    %ebp
    1b5a:	ec                   	in     (%dx),%al
    1b5b:	50                   	push   %eax
    1b5c:	ff 75 0c             	pushl  0xc(%ebp)
    1b5f:	e8 5c fd ff ff       	call   18c0 <___ggmul>
    1b64:	ff 75 0c             	pushl  0xc(%ebp)
    1b67:	e8 2c fc ff ff       	call   1798 <___gguard>
    1b6c:	eb 3e                	jmp    1bac <___xpow10+0x1d4>
    1b6e:	00 00                	add    %al,(%eax)
    1b70:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    1b74:	75 0e                	jne    1b84 <___xpow10+0x1ac>
    1b76:	b8 cc cc cc cc       	mov    $0xcccccccc,%eax
    1b7b:	ba cc cc 23 40       	mov    $0x4023cccc,%edx
    1b80:	eb 34                	jmp    1bb6 <___xpow10+0x1de>
    1b82:	00 00                	add    %al,(%eax)
    1b84:	8b 7d 0c             	mov    0xc(%ebp),%edi
    1b87:	c7 07 cc cc cc cc    	movl   $0xcccccccc,(%edi)
    1b8d:	c7 47 04 cc cc 23 40 	movl   $0x4023cccc,0x4(%edi)
    1b94:	8b 7d 0c             	mov    0xc(%ebp),%edi
    1b97:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
    1b9e:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    1ba5:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
    1bac:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb1:	ba 00 00 00 00       	mov    $0x0,%edx
    1bb6:	8d 65 c0             	lea    -0x40(%ebp),%esp
    1bb9:	5b                   	pop    %ebx
    1bba:	5e                   	pop    %esi
    1bbb:	5f                   	pop    %edi
    1bbc:	c9                   	leave  
    1bbd:	c3                   	ret    
	...

00001bc0 <___gpow10>:
    1bc0:	8b 44 24 04          	mov    0x4(%esp),%eax
    1bc4:	ff 74 24 08          	pushl  0x8(%esp)
    1bc8:	50                   	push   %eax
    1bc9:	e8 0a fe ff ff       	call   19d8 <___xpow10>
    1bce:	83 c4 08             	add    $0x8,%esp
    1bd1:	c3                   	ret    
	...

00001bd4 <___pow10>:
    1bd4:	8b 44 24 04          	mov    0x4(%esp),%eax
    1bd8:	6a 00                	push   $0x0
    1bda:	50                   	push   %eax
    1bdb:	e8 f8 fd ff ff       	call   19d8 <___xpow10>
    1be0:	83 c4 08             	add    $0x8,%esp
    1be3:	c3                   	ret    

00001be4 <___bffls>:
    1be4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1be9:	c3                   	ret    
	...

00001bec <___bffil>:
    1bec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bf1:	c3                   	ret    
	...

00001bf4 <___btfls>:
    1bf4:	31 c0                	xor    %eax,%eax
    1bf6:	c3                   	ret    
	...

00001bf8 <___ioflush>:
    1bf8:	53                   	push   %ebx
    1bf9:	8b 1d cc 38 00 00    	mov    0x38cc,%ebx
    1bff:	85 db                	test   %ebx,%ebx
    1c01:	74 1a                	je     1c1d <___ioflush+0x25>
    1c03:	53                   	push   %ebx
    1c04:	8b 43 24             	mov    0x24(%ebx),%eax
    1c07:	ff d0                	call   *%eax
    1c09:	0f be 43 1a          	movsbl 0x1a(%ebx),%eax
    1c0d:	50                   	push   %eax
    1c0e:	e8 2d 13 00 00       	call   2f40 <_close>
    1c13:	83 c4 08             	add    $0x8,%esp
    1c16:	8b 5b 28             	mov    0x28(%ebx),%ebx
    1c19:	85 db                	test   %ebx,%ebx
    1c1b:	75 e6                	jne    1c03 <___ioflush+0xb>
    1c1d:	5b                   	pop    %ebx
    1c1e:	c3                   	ret    
	...

00001c20 <___bwr>:
    1c20:	55                   	push   %ebp
    1c21:	89 e5                	mov    %esp,%ebp
    1c23:	83 ec 04             	sub    $0x4,%esp
    1c26:	57                   	push   %edi
    1c27:	56                   	push   %esi
    1c28:	53                   	push   %ebx
    1c29:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    1c2c:	66 8b 43 18          	mov    0x18(%ebx),%ax
    1c30:	66 83 e0 42          	and    $0x42,%ax
    1c34:	66 83 f8 02          	cmp    $0x2,%ax
    1c38:	75 5b                	jne    1c95 <___bwr+0x75>
    1c3a:	8d 73 08             	lea    0x8(%ebx),%esi
    1c3d:	8a 55 08             	mov    0x8(%ebp),%dl
    1c40:	88 55 fc             	mov    %dl,-0x4(%ebp)
    1c43:	0f b6 fa             	movzbl %dl,%edi
    1c46:	8b 43 08             	mov    0x8(%ebx),%eax
    1c49:	2b 43 10             	sub    0x10(%ebx),%eax
    1c4c:	8b 53 14             	mov    0x14(%ebx),%edx
    1c4f:	29 c2                	sub    %eax,%edx
    1c51:	89 d0                	mov    %edx,%eax
    1c53:	85 c0                	test   %eax,%eax
    1c55:	74 31                	je     1c88 <___bwr+0x68>
    1c57:	8b 06                	mov    (%esi),%eax
    1c59:	8a 55 fc             	mov    -0x4(%ebp),%dl
    1c5c:	88 10                	mov    %dl,(%eax)
    1c5e:	ff 06                	incl   (%esi)
    1c60:	80 fa 0a             	cmp    $0xa,%dl
    1c63:	75 08                	jne    1c6d <___bwr+0x4d>
    1c65:	66 f7 43 18 00 01    	testw  $0x100,0x18(%ebx)
    1c6b:	75 08                	jne    1c75 <___bwr+0x55>
    1c6d:	66 f7 43 18 04 00    	testw  $0x4,0x18(%ebx)
    1c73:	74 0d                	je     1c82 <___bwr+0x62>
    1c75:	53                   	push   %ebx
    1c76:	8b 43 24             	mov    0x24(%ebx),%eax
    1c79:	ff d0                	call   *%eax
    1c7b:	83 c4 04             	add    $0x4,%esp
    1c7e:	85 c0                	test   %eax,%eax
    1c80:	75 13                	jne    1c95 <___bwr+0x75>
    1c82:	89 f8                	mov    %edi,%eax
    1c84:	eb 14                	jmp    1c9a <___bwr+0x7a>
    1c86:	00 00                	add    %al,(%eax)
    1c88:	53                   	push   %ebx
    1c89:	8b 43 24             	mov    0x24(%ebx),%eax
    1c8c:	ff d0                	call   *%eax
    1c8e:	83 c4 04             	add    $0x4,%esp
    1c91:	85 c0                	test   %eax,%eax
    1c93:	74 b1                	je     1c46 <___bwr+0x26>
    1c95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1c9a:	8d 65 f0             	lea    -0x10(%ebp),%esp
    1c9d:	5b                   	pop    %ebx
    1c9e:	5e                   	pop    %esi
    1c9f:	5f                   	pop    %edi
    1ca0:	c9                   	leave  
    1ca1:	c3                   	ret    
	...

00001ca4 <___bwrflush>:
    1ca4:	56                   	push   %esi
    1ca5:	53                   	push   %ebx
    1ca6:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    1caa:	66 f7 43 18 40 00    	testw  $0x40,0x18(%ebx)
    1cb0:	75 36                	jne    1ce8 <___bwrflush+0x44>
    1cb2:	8b 73 08             	mov    0x8(%ebx),%esi
    1cb5:	2b 73 10             	sub    0x10(%ebx),%esi
    1cb8:	8b 43 10             	mov    0x10(%ebx),%eax
    1cbb:	89 43 08             	mov    %eax,0x8(%ebx)
    1cbe:	66 f7 43 18 04 01    	testw  $0x104,0x18(%ebx)
    1cc4:	75 03                	jne    1cc9 <___bwrflush+0x25>
    1cc6:	03 43 14             	add    0x14(%ebx),%eax
    1cc9:	89 43 0c             	mov    %eax,0xc(%ebx)
    1ccc:	56                   	push   %esi
    1ccd:	ff 73 10             	pushl  0x10(%ebx)
    1cd0:	0f be 43 1a          	movsbl 0x1a(%ebx),%eax
    1cd4:	50                   	push   %eax
    1cd5:	e8 d6 00 00 00       	call   1db0 <___iowrite>
    1cda:	83 c4 0c             	add    $0xc,%esp
    1cdd:	39 c6                	cmp    %eax,%esi
    1cdf:	75 07                	jne    1ce8 <___bwrflush+0x44>
    1ce1:	31 c0                	xor    %eax,%eax
    1ce3:	eb 0d                	jmp    1cf2 <___bwrflush+0x4e>
    1ce5:	00 00                	add    %al,(%eax)
    1ce7:	00 66 83             	add    %ah,-0x7d(%esi)
    1cea:	4b                   	dec    %ebx
    1ceb:	18 40 b8             	sbb    %al,-0x48(%eax)
    1cee:	ff                   	(bad)  
    1cef:	ff                   	(bad)  
    1cf0:	ff                   	(bad)  
    1cf1:	ff 5b 5e             	lcall  *0x5e(%ebx)
    1cf4:	c3                   	ret    
    1cf5:	00 00                	add    %al,(%eax)
	...

00001cf8 <___bwronly>:
    1cf8:	55                   	push   %ebp
    1cf9:	89 e5                	mov    %esp,%ebp
    1cfb:	56                   	push   %esi
    1cfc:	53                   	push   %ebx
    1cfd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    1d00:	8b 73 0c             	mov    0xc(%ebx),%esi
    1d03:	c7 05 dc 38 00 00 f8 	movl   $0x1bf8,0x38dc
    1d0a:	1b 00 00 
    1d0d:	66 8b 43 18          	mov    0x18(%ebx),%ax
    1d11:	25 00 30 00 00       	and    $0x3000,%eax
    1d16:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1d1b:	75 0b                	jne    1d28 <___bwronly+0x30>
    1d1d:	89 1d d4 38 00 00    	mov    %ebx,0x38d4
    1d23:	eb 10                	jmp    1d35 <___bwronly+0x3d>
    1d25:	00 00                	add    %al,(%eax)
    1d27:	00 3d 00 30 00 00    	add    %bh,0x3000
    1d2d:	75 06                	jne    1d35 <___bwronly+0x3d>
    1d2f:	89 1d d0 38 00 00    	mov    %ebx,0x38d0
    1d35:	66 f7 43 18 00 08    	testw  $0x800,0x18(%ebx)
    1d3b:	74 34                	je     1d71 <___bwronly+0x79>
    1d3d:	66 81 63 18 ff f7    	andw   $0xf7ff,0x18(%ebx)
    1d43:	8b 15 cc 38 00 00    	mov    0x38cc,%edx
    1d49:	89 53 28             	mov    %edx,0x28(%ebx)
    1d4c:	89 1d cc 38 00 00    	mov    %ebx,0x38cc
    1d52:	3b 1d d4 38 00 00    	cmp    0x38d4,%ebx
    1d58:	75 17                	jne    1d71 <___bwronly+0x79>
    1d5a:	0f be 43 1a          	movsbl 0x1a(%ebx),%eax
    1d5e:	50                   	push   %eax
    1d5f:	e8 24 12 00 00       	call   2f88 <_isatty>
    1d64:	83 c4 04             	add    $0x4,%esp
    1d67:	85 c0                	test   %eax,%eax
    1d69:	74 06                	je     1d71 <___bwronly+0x79>
    1d6b:	66 81 4b 18 00 01    	orw    $0x100,0x18(%ebx)
    1d71:	8b 43 10             	mov    0x10(%ebx),%eax
    1d74:	89 43 08             	mov    %eax,0x8(%ebx)
    1d77:	66 f7 43 18 04 01    	testw  $0x104,0x18(%ebx)
    1d7d:	75 03                	jne    1d82 <___bwronly+0x8a>
    1d7f:	03 43 14             	add    0x14(%ebx),%eax
    1d82:	89 43 0c             	mov    %eax,0xc(%ebx)
    1d85:	c7 43 20 20 1c 00 00 	movl   $0x1c20,0x20(%ebx)
    1d8c:	c7 43 24 a4 1c 00 00 	movl   $0x1ca4,0x24(%ebx)
    1d93:	85 f6                	test   %esi,%esi
    1d95:	74 05                	je     1d9c <___bwronly+0xa4>
    1d97:	31 c0                	xor    %eax,%eax
    1d99:	eb 0d                	jmp    1da8 <___bwronly+0xb0>
    1d9b:	00 53 ff             	add    %dl,-0x1(%ebx)
    1d9e:	75 08                	jne    1da8 <___bwronly+0xb0>
    1da0:	e8 7b fe ff ff       	call   1c20 <___bwr>
    1da5:	83 c4 08             	add    $0x8,%esp
    1da8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1dab:	5b                   	pop    %ebx
    1dac:	5e                   	pop    %esi
    1dad:	c9                   	leave  
    1dae:	c3                   	ret    
	...

00001db0 <___iowrite>:
    1db0:	55                   	push   %ebp
    1db1:	89 e5                	mov    %esp,%ebp
    1db3:	83 ec 04             	sub    $0x4,%esp
    1db6:	57                   	push   %edi
    1db7:	56                   	push   %esi
    1db8:	53                   	push   %ebx
    1db9:	8b 75 0c             	mov    0xc(%ebp),%esi
    1dbc:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1dbf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    1dc6:	89 df                	mov    %ebx,%edi
    1dc8:	81 fb ff ff ff 7f    	cmp    $0x7fffffff,%ebx
    1dce:	76 1a                	jbe    1dea <___iowrite+0x3a>
    1dd0:	bf ff ff ff 7f       	mov    $0x7fffffff,%edi
    1dd5:	eb 13                	jmp    1dea <___iowrite+0x3a>
    1dd7:	00 83 3d d8 38 00    	add    %al,0x38d83d(%ebx)
    1ddd:	00 04 74             	add    %al,(%esp,%esi,2)
    1de0:	09 83 3d d8 38 00    	or     %eax,0x38d83d(%ebx)
    1de6:	00 0b                	add    %cl,(%ebx)
    1de8:	75 12                	jne    1dfc <___iowrite+0x4c>
    1dea:	57                   	push   %edi
    1deb:	56                   	push   %esi
    1dec:	ff 75 08             	pushl  0x8(%ebp)
    1def:	e8 6c 11 00 00       	call   2f60 <_write>
    1df4:	83 c4 0c             	add    $0xc,%esp
    1df7:	83 f8 ff             	cmp    $0xffffffff,%eax
    1dfa:	74 dc                	je     1dd8 <___iowrite+0x28>
    1dfc:	83 f8 ff             	cmp    $0xffffffff,%eax
    1dff:	74 13                	je     1e14 <___iowrite+0x64>
    1e01:	8b 55 fc             	mov    -0x4(%ebp),%edx
    1e04:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
    1e07:	89 4d fc             	mov    %ecx,-0x4(%ebp)
    1e0a:	29 c3                	sub    %eax,%ebx
    1e0c:	74 06                	je     1e14 <___iowrite+0x64>
    1e0e:	8d 34 30             	lea    (%eax,%esi,1),%esi
    1e11:	eb b3                	jmp    1dc6 <___iowrite+0x16>
    1e13:	00 8b 45 fc 8d 65    	add    %cl,0x658dfc45(%ebx)
    1e19:	f0 5b                	lock pop %ebx
    1e1b:	5e                   	pop    %esi
    1e1c:	5f                   	pop    %edi
    1e1d:	c9                   	leave  
    1e1e:	c3                   	ret    
	...

00001e20 <___utoa>:
    1e20:	57                   	push   %edi
    1e21:	56                   	push   %esi
    1e22:	53                   	push   %ebx
    1e23:	8b 74 24 10          	mov    0x10(%esp),%esi
    1e27:	8b 7c 24 14          	mov    0x14(%esp),%edi
    1e2b:	31 db                	xor    %ebx,%ebx
    1e2d:	8b 44 24 18          	mov    0x18(%esp),%eax
    1e31:	48                   	dec    %eax
    1e32:	85 c0                	test   %eax,%eax
    1e34:	7f 05                	jg     1e3b <___utoa+0x1b>
    1e36:	83 ff 09             	cmp    $0x9,%edi
    1e39:	76 1a                	jbe    1e55 <___utoa+0x35>
    1e3b:	50                   	push   %eax
    1e3c:	89 f8                	mov    %edi,%eax
    1e3e:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1e43:	31 d2                	xor    %edx,%edx
    1e45:	f7 f1                	div    %ecx
    1e47:	89 c3                	mov    %eax,%ebx
    1e49:	53                   	push   %ebx
    1e4a:	56                   	push   %esi
    1e4b:	e8 d0 ff ff ff       	call   1e20 <___utoa>
    1e50:	89 c6                	mov    %eax,%esi
    1e52:	83 c4 0c             	add    $0xc,%esp
    1e55:	66 89 f8             	mov    %di,%ax
    1e58:	88 da                	mov    %bl,%dl
    1e5a:	c0 e2 02             	shl    $0x2,%dl
    1e5d:	88 d9                	mov    %bl,%cl
    1e5f:	00 ca                	add    %cl,%dl
    1e61:	d0 e2                	shl    %dl
    1e63:	28 d0                	sub    %dl,%al
    1e65:	04 30                	add    $0x30,%al
    1e67:	88 06                	mov    %al,(%esi)
    1e69:	89 f0                	mov    %esi,%eax
    1e6b:	40                   	inc    %eax
    1e6c:	5b                   	pop    %ebx
    1e6d:	5e                   	pop    %esi
    1e6e:	5f                   	pop    %edi
    1e6f:	c3                   	ret    

00001e70 <___floatsidf>:
    1e70:	ff 74 24 04          	pushl  0x4(%esp)
    1e74:	e8 47 01 00 00       	call   1fc0 <___long2double>
    1e79:	83 c4 04             	add    $0x4,%esp
    1e7c:	c3                   	ret    
    1e7d:	00 00                	add    %al,(%eax)
	...

00001e80 <___fixdfsi>:
    1e80:	ff 74 24 08          	pushl  0x8(%esp)
    1e84:	ff 74 24 08          	pushl  0x8(%esp)
    1e88:	e8 97 01 00 00       	call   2024 <___double2long>
    1e8d:	83 c4 08             	add    $0x8,%esp
    1e90:	c3                   	ret    
    1e91:	00 00                	add    %al,(%eax)
	...

00001e94 <___muldf3>:
    1e94:	8b 44 24 04          	mov    0x4(%esp),%eax
    1e98:	8b 54 24 08          	mov    0x8(%esp),%edx
    1e9c:	ff 74 24 10          	pushl  0x10(%esp)
    1ea0:	ff 74 24 10          	pushl  0x10(%esp)
    1ea4:	52                   	push   %edx
    1ea5:	50                   	push   %eax
    1ea6:	e8 61 07 00 00       	call   260c <___multiply>
    1eab:	83 c4 10             	add    $0x10,%esp
    1eae:	c3                   	ret    
	...

00001eb0 <___divdf3>:
    1eb0:	8b 44 24 04          	mov    0x4(%esp),%eax
    1eb4:	8b 54 24 08          	mov    0x8(%esp),%edx
    1eb8:	ff 74 24 10          	pushl  0x10(%esp)
    1ebc:	ff 74 24 10          	pushl  0x10(%esp)
    1ec0:	52                   	push   %edx
    1ec1:	50                   	push   %eax
    1ec2:	e8 09 09 00 00       	call   27d0 <___divide>
    1ec7:	83 c4 10             	add    $0x10,%esp
    1eca:	c3                   	ret    
	...

00001ecc <___negdf2>:
    1ecc:	ff 74 24 08          	pushl  0x8(%esp)
    1ed0:	ff 74 24 08          	pushl  0x8(%esp)
    1ed4:	ff 35 94 34 00 00    	pushl  0x3494
    1eda:	ff 35 90 34 00 00    	pushl  0x3490
    1ee0:	e8 53 05 00 00       	call   2438 <___subtract>
    1ee5:	83 c4 10             	add    $0x10,%esp
    1ee8:	c3                   	ret    
    1ee9:	00 00                	add    %al,(%eax)
	...

00001eec <___adddf3>:
    1eec:	8b 44 24 04          	mov    0x4(%esp),%eax
    1ef0:	8b 54 24 08          	mov    0x8(%esp),%edx
    1ef4:	ff 74 24 10          	pushl  0x10(%esp)
    1ef8:	ff 74 24 10          	pushl  0x10(%esp)
    1efc:	52                   	push   %edx
    1efd:	50                   	push   %eax
    1efe:	e8 59 05 00 00       	call   245c <___add>
    1f03:	83 c4 10             	add    $0x10,%esp
    1f06:	c3                   	ret    
	...

00001f08 <___subdf3>:
    1f08:	8b 44 24 04          	mov    0x4(%esp),%eax
    1f0c:	8b 54 24 08          	mov    0x8(%esp),%edx
    1f10:	ff 74 24 10          	pushl  0x10(%esp)
    1f14:	ff 74 24 10          	pushl  0x10(%esp)
    1f18:	52                   	push   %edx
    1f19:	50                   	push   %eax
    1f1a:	e8 19 05 00 00       	call   2438 <___subtract>
    1f1f:	83 c4 10             	add    $0x10,%esp
    1f22:	c3                   	ret    
	...

00001f24 <___cmpdf2>:
    1f24:	8b 44 24 04          	mov    0x4(%esp),%eax
    1f28:	8b 54 24 08          	mov    0x8(%esp),%edx
    1f2c:	ff 74 24 10          	pushl  0x10(%esp)
    1f30:	ff 74 24 10          	pushl  0x10(%esp)
    1f34:	52                   	push   %edx
    1f35:	50                   	push   %eax
    1f36:	e8 65 04 00 00       	call   23a0 <___compare>
    1f3b:	83 c4 10             	add    $0x10,%esp
    1f3e:	c3                   	ret    
	...

00001f40 <___fixunsdfsi>:
    1f40:	ff 74 24 08          	pushl  0x8(%esp)
    1f44:	ff 74 24 08          	pushl  0x8(%esp)
    1f48:	e8 33 ff ff ff       	call   1e80 <___fixdfsi>
    1f4d:	83 c4 08             	add    $0x8,%esp
    1f50:	c3                   	ret    
    1f51:	00 00                	add    %al,(%eax)
	...

00001f54 <_frexp>:
    1f54:	8b 44 24 04          	mov    0x4(%esp),%eax
    1f58:	8b 54 24 08          	mov    0x8(%esp),%edx
    1f5c:	ff 74 24 0c          	pushl  0xc(%esp)
    1f60:	52                   	push   %edx
    1f61:	50                   	push   %eax
    1f62:	e8 85 0a 00 00       	call   29ec <___frexp>
    1f67:	83 c4 0c             	add    $0xc,%esp
    1f6a:	c3                   	ret    
	...

00001f6c <_ldexp>:
    1f6c:	8b 44 24 04          	mov    0x4(%esp),%eax
    1f70:	8b 54 24 08          	mov    0x8(%esp),%edx
    1f74:	ff 74 24 0c          	pushl  0xc(%esp)
    1f78:	52                   	push   %edx
    1f79:	50                   	push   %eax
    1f7a:	e8 f1 0a 00 00       	call   2a70 <___ldexp>
    1f7f:	83 c4 0c             	add    $0xc,%esp
    1f82:	c3                   	ret    
	...

00001f84 <_modf>:
    1f84:	8b 44 24 04          	mov    0x4(%esp),%eax
    1f88:	8b 54 24 08          	mov    0x8(%esp),%edx
    1f8c:	ff 74 24 0c          	pushl  0xc(%esp)
    1f90:	52                   	push   %edx
    1f91:	50                   	push   %eax
    1f92:	e8 4d 0b 00 00       	call   2ae4 <___modf>
    1f97:	83 c4 0c             	add    $0xc,%esp
    1f9a:	c3                   	ret    
	...

00001f9c <___truncdfsf2>:
    1f9c:	ff 74 24 08          	pushl  0x8(%esp)
    1fa0:	ff 74 24 08          	pushl  0x8(%esp)
    1fa4:	e8 47 0e 00 00       	call   2df0 <___double2float>
    1fa9:	83 c4 08             	add    $0x8,%esp
    1fac:	c3                   	ret    
    1fad:	00 00                	add    %al,(%eax)
	...

00001fb0 <___extendsfdf2>:
    1fb0:	ff 74 24 04          	pushl  0x4(%esp)
    1fb4:	e8 df 0c 00 00       	call   2c98 <___float2double>
    1fb9:	83 c4 04             	add    $0x4,%esp
    1fbc:	c3                   	ret    
    1fbd:	00 00                	add    %al,(%eax)
	...

00001fc0 <___long2double>:
    1fc0:	55                   	push   %ebp
    1fc1:	89 e5                	mov    %esp,%ebp
    1fc3:	83 ec 0c             	sub    $0xc,%esp
    1fc6:	57                   	push   %edi
    1fc7:	56                   	push   %esi
    1fc8:	8b 55 08             	mov    0x8(%ebp),%edx
    1fcb:	85 d2                	test   %edx,%edx
    1fcd:	75 0d                	jne    1fdc <___long2double+0x1c>
    1fcf:	a1 90 34 00 00       	mov    0x3490,%eax
    1fd4:	8b 15 94 34 00 00    	mov    0x3494,%edx
    1fda:	eb 41                	jmp    201d <___long2double+0x5d>
    1fdc:	66 c7 45 fc 00 00    	movw   $0x0,-0x4(%ebp)
    1fe2:	85 d2                	test   %edx,%edx
    1fe4:	0f 9c c0             	setl   %al
    1fe7:	66 83 e0 01          	and    $0x1,%ax
    1feb:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
    1fef:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%ebp)
    1ff4:	74 06                	je     1ffc <___long2double+0x3c>
    1ff6:	89 d0                	mov    %edx,%eax
    1ff8:	f7 d8                	neg    %eax
    1ffa:	eb 02                	jmp    1ffe <___long2double+0x3e>
    1ffc:	89 d0                	mov    %edx,%eax
    1ffe:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2001:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    2008:	83 ec 0c             	sub    $0xc,%esp
    200b:	89 e7                	mov    %esp,%edi
    200d:	8d 75 f4             	lea    -0xc(%ebp),%esi
    2010:	b9 03 00 00 00       	mov    $0x3,%ecx
    2015:	fc                   	cld    
    2016:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2018:	e8 bf 00 00 00       	call   20dc <___pack_double>
    201d:	8d 65 ec             	lea    -0x14(%ebp),%esp
    2020:	5e                   	pop    %esi
    2021:	5f                   	pop    %edi
    2022:	c9                   	leave  
    2023:	c3                   	ret    

00002024 <___double2long>:
    2024:	55                   	push   %ebp
    2025:	89 e5                	mov    %esp,%ebp
    2027:	83 ec 0c             	sub    $0xc,%esp
    202a:	56                   	push   %esi
    202b:	53                   	push   %ebx
    202c:	8b 4d 08             	mov    0x8(%ebp),%ecx
    202f:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    2032:	89 de                	mov    %ebx,%esi
    2034:	c1 ee 18             	shr    $0x18,%esi
    2037:	89 f0                	mov    %esi,%eax
    2039:	84 c0                	test   %al,%al
    203b:	75 0b                	jne    2048 <___double2long+0x24>
    203d:	89 de                	mov    %ebx,%esi
    203f:	c1 ee 10             	shr    $0x10,%esi
    2042:	89 f0                	mov    %esi,%eax
    2044:	84 c0                	test   %al,%al
    2046:	74 3a                	je     2082 <___double2long+0x5e>
    2048:	89 de                	mov    %ebx,%esi
    204a:	c1 ee 18             	shr    $0x18,%esi
    204d:	89 f2                	mov    %esi,%edx
    204f:	88 d0                	mov    %dl,%al
    2051:	24 7f                	and    $0x7f,%al
    2053:	3c 7f                	cmp    $0x7f,%al
    2055:	75 19                	jne    2070 <___double2long+0x4c>
    2057:	89 de                	mov    %ebx,%esi
    2059:	c1 ee 10             	shr    $0x10,%esi
    205c:	89 f0                	mov    %esi,%eax
    205e:	3c f0                	cmp    $0xf0,%al
    2060:	75 0e                	jne    2070 <___double2long+0x4c>
    2062:	f6 c2 80             	test   $0x80,%dl
    2065:	74 39                	je     20a0 <___double2long+0x7c>
    2067:	b8 00 00 00 80       	mov    $0x80000000,%eax
    206c:	eb 64                	jmp    20d2 <___double2long+0xae>
    206e:	00 00                	add    %al,(%eax)
    2070:	53                   	push   %ebx
    2071:	51                   	push   %ecx
    2072:	8d 45 f4             	lea    -0xc(%ebp),%eax
    2075:	50                   	push   %eax
    2076:	e8 45 02 00 00       	call   22c0 <___unpack_double>
    207b:	66 83 7d fc cc       	cmpw   $0xffcc,-0x4(%ebp)
    2080:	7d 06                	jge    2088 <___double2long+0x64>
    2082:	31 c0                	xor    %eax,%eax
    2084:	eb 4c                	jmp    20d2 <___double2long+0xae>
    2086:	00 00                	add    %al,(%eax)
    2088:	66 83 7d fc ea       	cmpw   $0xffea,-0x4(%ebp)
    208d:	7e 19                	jle    20a8 <___double2long+0x84>
    208f:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%ebp)
    2094:	74 0a                	je     20a0 <___double2long+0x7c>
    2096:	b8 00 00 00 80       	mov    $0x80000000,%eax
    209b:	eb 35                	jmp    20d2 <___double2long+0xae>
    209d:	00 00                	add    %al,(%eax)
    209f:	00 b8 ff ff ff 7f    	add    %bh,0x7fffffff(%eax)
    20a5:	eb 2b                	jmp    20d2 <___double2long+0xae>
    20a7:	00 8b 45 f8 c1 e0    	add    %cl,-0x1f3e07bb(%ebx)
    20ad:	0a 8b 55 f4 c1 ea    	or     -0x153e0bab(%ebx),%cl
    20b3:	16                   	push   %ss
    20b4:	09 c2                	or     %eax,%edx
    20b6:	0f bf 45 fc          	movswl -0x4(%ebp),%eax
    20ba:	b9 ea ff ff ff       	mov    $0xffffffea,%ecx
    20bf:	29 c1                	sub    %eax,%ecx
    20c1:	d3 fa                	sar    %cl,%edx
    20c3:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%ebp)
    20c8:	74 06                	je     20d0 <___double2long+0xac>
    20ca:	89 d0                	mov    %edx,%eax
    20cc:	f7 d8                	neg    %eax
    20ce:	eb 02                	jmp    20d2 <___double2long+0xae>
    20d0:	89 d0                	mov    %edx,%eax
    20d2:	8d 65 ec             	lea    -0x14(%ebp),%esp
    20d5:	5b                   	pop    %ebx
    20d6:	5e                   	pop    %esi
    20d7:	c9                   	leave  
    20d8:	c3                   	ret    
    20d9:	00 00                	add    %al,(%eax)
	...

000020dc <___pack_double>:
    20dc:	55                   	push   %ebp
    20dd:	89 e5                	mov    %esp,%ebp
    20df:	83 ec 04             	sub    $0x4,%esp
    20e2:	56                   	push   %esi
    20e3:	53                   	push   %ebx
    20e4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    20e8:	75 06                	jne    20f0 <___pack_double+0x14>
    20ea:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    20ee:	74 5d                	je     214d <___pack_double+0x71>
    20f0:	66 83 45 10 3f       	addw   $0x3f,0x10(%ebp)
    20f5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    20f9:	75 13                	jne    210e <___pack_double+0x32>
    20fb:	66 81 45 10 e0 ff    	addw   $0xffe0,0x10(%ebp)
    2101:	8b 4d 08             	mov    0x8(%ebp),%ecx
    2104:	89 4d 0c             	mov    %ecx,0xc(%ebp)
    2107:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
    210e:	31 d2                	xor    %edx,%edx
    2110:	f7 45 0c 00 00 00 80 	testl  $0x80000000,0xc(%ebp)
    2117:	75 0d                	jne    2126 <___pack_double+0x4a>
    2119:	d1 65 0c             	shll   0xc(%ebp)
    211c:	42                   	inc    %edx
    211d:	f7 45 0c 00 00 00 80 	testl  $0x80000000,0xc(%ebp)
    2124:	74 f3                	je     2119 <___pack_double+0x3d>
    2126:	85 d2                	test   %edx,%edx
    2128:	7e 1b                	jle    2145 <___pack_double+0x69>
    212a:	b9 20 00 00 00       	mov    $0x20,%ecx
    212f:	29 d1                	sub    %edx,%ecx
    2131:	8b 45 08             	mov    0x8(%ebp),%eax
    2134:	d3 e8                	shr    %cl,%eax
    2136:	89 d1                	mov    %edx,%ecx
    2138:	d3 65 08             	shll   %cl,0x8(%ebp)
    213b:	09 45 0c             	or     %eax,0xc(%ebp)
    213e:	66 89 d0             	mov    %dx,%ax
    2141:	66 29 45 10          	sub    %ax,0x10(%ebp)
    2145:	66 81 7d 10 02 fc    	cmpw   $0xfc02,0x10(%ebp)
    214b:	7d 13                	jge    2160 <___pack_double+0x84>
    214d:	a1 90 34 00 00       	mov    0x3490,%eax
    2152:	8b 15 94 34 00 00    	mov    0x3494,%edx
    2158:	e9 5a 01 00 00       	jmp    22b7 <___pack_double+0x1db>
    215d:	00 00                	add    %al,(%eax)
    215f:	00 66 81             	add    %ah,-0x7f(%esi)
    2162:	7d 10                	jge    2174 <___pack_double+0x98>
    2164:	ff 03                	incl   (%ebx)
    2166:	7e 28                	jle    2190 <___pack_double+0xb4>
    2168:	66 83 7d 12 00       	cmpw   $0x0,0x12(%ebp)
    216d:	74 11                	je     2180 <___pack_double+0xa4>
    216f:	a1 a0 34 00 00       	mov    0x34a0,%eax
    2174:	8b 15 a4 34 00 00    	mov    0x34a4,%edx
    217a:	e9 38 01 00 00       	jmp    22b7 <___pack_double+0x1db>
    217f:	00 a1 98 34 00 00    	add    %ah,0x3498(%ecx)
    2185:	8b 15 9c 34 00 00    	mov    0x349c,%edx
    218b:	e9 27 01 00 00       	jmp    22b7 <___pack_double+0x1db>
    2190:	66 81 45 10 ff 03    	addw   $0x3ff,0x10(%ebp)
    2196:	66 8b 45 10          	mov    0x10(%ebp),%ax
    219a:	66 c1 f8 04          	sar    $0x4,%ax
    219e:	0f b6 c0             	movzbl %al,%eax
    21a1:	c1 e0 18             	shl    $0x18,%eax
    21a4:	81 e6 ff ff ff 00    	and    $0xffffff,%esi
    21aa:	09 c6                	or     %eax,%esi
    21ac:	66 83 7d 12 00       	cmpw   $0x0,0x12(%ebp)
    21b1:	74 17                	je     21ca <___pack_double+0xee>
    21b3:	89 f1                	mov    %esi,%ecx
    21b5:	c1 e9 18             	shr    $0x18,%ecx
    21b8:	89 c8                	mov    %ecx,%eax
    21ba:	0c 80                	or     $0x80,%al
    21bc:	0f b6 c0             	movzbl %al,%eax
    21bf:	c1 e0 18             	shl    $0x18,%eax
    21c2:	81 e6 ff ff ff 00    	and    $0xffffff,%esi
    21c8:	09 c6                	or     %eax,%esi
    21ca:	8a 45 10             	mov    0x10(%ebp),%al
    21cd:	24 0f                	and    $0xf,%al
    21cf:	c0 e0 04             	shl    $0x4,%al
    21d2:	0f b6 c0             	movzbl %al,%eax
    21d5:	c1 e0 10             	shl    $0x10,%eax
    21d8:	81 e6 ff ff 00 ff    	and    $0xff00ffff,%esi
    21de:	09 c6                	or     %eax,%esi
    21e0:	89 f1                	mov    %esi,%ecx
    21e2:	c1 e9 10             	shr    $0x10,%ecx
    21e5:	89 c8                	mov    %ecx,%eax
    21e7:	8b 55 0c             	mov    0xc(%ebp),%edx
    21ea:	81 e2 00 00 00 78    	and    $0x78000000,%edx
    21f0:	c1 ea 1b             	shr    $0x1b,%edx
    21f3:	08 d0                	or     %dl,%al
    21f5:	0f b6 c0             	movzbl %al,%eax
    21f8:	c1 e0 10             	shl    $0x10,%eax
    21fb:	81 e6 ff ff 00 ff    	and    $0xff00ffff,%esi
    2201:	09 c6                	or     %eax,%esi
    2203:	8b 45 0c             	mov    0xc(%ebp),%eax
    2206:	25 00 00 f8 07       	and    $0x7f80000,%eax
    220b:	c1 e8 13             	shr    $0x13,%eax
    220e:	0f b6 c0             	movzbl %al,%eax
    2211:	c1 e0 08             	shl    $0x8,%eax
    2214:	81 e6 ff 00 ff ff    	and    $0xffff00ff,%esi
    221a:	09 c6                	or     %eax,%esi
    221c:	8b 45 0c             	mov    0xc(%ebp),%eax
    221f:	25 00 f8 07 00       	and    $0x7f800,%eax
    2224:	c1 e8 0b             	shr    $0xb,%eax
    2227:	0f b6 c0             	movzbl %al,%eax
    222a:	81 e6 00 ff ff ff    	and    $0xffffff00,%esi
    2230:	09 c6                	or     %eax,%esi
    2232:	8b 45 0c             	mov    0xc(%ebp),%eax
    2235:	25 f8 07 00 00       	and    $0x7f8,%eax
    223a:	c1 e8 03             	shr    $0x3,%eax
    223d:	0f b6 c0             	movzbl %al,%eax
    2240:	c1 e0 18             	shl    $0x18,%eax
    2243:	81 e3 ff ff ff 00    	and    $0xffffff,%ebx
    2249:	09 c3                	or     %eax,%ebx
    224b:	8a 45 0c             	mov    0xc(%ebp),%al
    224e:	24 07                	and    $0x7,%al
    2250:	c0 e0 05             	shl    $0x5,%al
    2253:	0f b6 c0             	movzbl %al,%eax
    2256:	c1 e0 10             	shl    $0x10,%eax
    2259:	81 e3 ff ff 00 ff    	and    $0xff00ffff,%ebx
    225f:	09 c3                	or     %eax,%ebx
    2261:	89 d9                	mov    %ebx,%ecx
    2263:	c1 e9 10             	shr    $0x10,%ecx
    2266:	89 c8                	mov    %ecx,%eax
    2268:	8b 55 08             	mov    0x8(%ebp),%edx
    226b:	81 e2 00 00 00 f8    	and    $0xf8000000,%edx
    2271:	c1 ea 1b             	shr    $0x1b,%edx
    2274:	08 d0                	or     %dl,%al
    2276:	0f b6 c0             	movzbl %al,%eax
    2279:	c1 e0 10             	shl    $0x10,%eax
    227c:	81 e3 ff ff 00 ff    	and    $0xff00ffff,%ebx
    2282:	09 c3                	or     %eax,%ebx
    2284:	8b 45 08             	mov    0x8(%ebp),%eax
    2287:	25 00 00 f8 07       	and    $0x7f80000,%eax
    228c:	c1 e8 13             	shr    $0x13,%eax
    228f:	0f b6 c0             	movzbl %al,%eax
    2292:	c1 e0 08             	shl    $0x8,%eax
    2295:	81 e3 ff 00 ff ff    	and    $0xffff00ff,%ebx
    229b:	09 c3                	or     %eax,%ebx
    229d:	8b 45 08             	mov    0x8(%ebp),%eax
    22a0:	25 00 f8 07 00       	and    $0x7f800,%eax
    22a5:	c1 e8 0b             	shr    $0xb,%eax
    22a8:	0f b6 c0             	movzbl %al,%eax
    22ab:	81 e3 00 ff ff ff    	and    $0xffffff00,%ebx
    22b1:	09 c3                	or     %eax,%ebx
    22b3:	89 d8                	mov    %ebx,%eax
    22b5:	89 f2                	mov    %esi,%edx
    22b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
    22ba:	5b                   	pop    %ebx
    22bb:	5e                   	pop    %esi
    22bc:	c9                   	leave  
    22bd:	c3                   	ret    
	...

000022c0 <___unpack_double>:
    22c0:	55                   	push   %ebp
    22c1:	89 e5                	mov    %esp,%ebp
    22c3:	83 ec 10             	sub    $0x10,%esp
    22c6:	57                   	push   %edi
    22c7:	56                   	push   %esi
    22c8:	53                   	push   %ebx
    22c9:	8b 45 08             	mov    0x8(%ebp),%eax
    22cc:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    22cf:	8b 5d 10             	mov    0x10(%ebp),%ebx
    22d2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
    22d5:	89 5d f8             	mov    %ebx,-0x8(%ebp)
    22d8:	81 65 f8 ff ff 0f 00 	andl   $0xfffff,-0x8(%ebp)
    22df:	81 4d f8 00 00 10 00 	orl    $0x100000,-0x8(%ebp)
    22e6:	8b 4d 10             	mov    0x10(%ebp),%ecx
    22e9:	c1 e9 18             	shr    $0x18,%ecx
    22ec:	89 ca                	mov    %ecx,%edx
    22ee:	f6 c2 80             	test   $0x80,%dl
    22f1:	0f 95 c1             	setne  %cl
    22f4:	66 89 ce             	mov    %cx,%si
    22f7:	66 83 e6 01          	and    $0x1,%si
    22fb:	66 89 75 fe          	mov    %si,-0x2(%ebp)
    22ff:	66 83 e2 7f          	and    $0x7f,%dx
    2303:	66 c1 e2 04          	shl    $0x4,%dx
    2307:	8b 4d 10             	mov    0x10(%ebp),%ecx
    230a:	c1 e9 10             	shr    $0x10,%ecx
    230d:	89 4d f0             	mov    %ecx,-0x10(%ebp)
    2310:	8a 4d f0             	mov    -0x10(%ebp),%cl
    2313:	c0 e9 04             	shr    $0x4,%cl
    2316:	88 4d f0             	mov    %cl,-0x10(%ebp)
    2319:	66 0f b6 4d f0       	movzbw -0x10(%ebp),%cx
    231e:	66 01 ca             	add    %cx,%dx
    2321:	66 89 55 fc          	mov    %dx,-0x4(%ebp)
    2325:	66 81 45 fc 01 fc    	addw   $0xfc01,-0x4(%ebp)
    232b:	66 81 45 fc cc ff    	addw   $0xffcc,-0x4(%ebp)
    2331:	89 c7                	mov    %eax,%edi
    2333:	8d 75 f4             	lea    -0xc(%ebp),%esi
    2336:	b9 03 00 00 00       	mov    $0x3,%ecx
    233b:	fc                   	cld    
    233c:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    233e:	8d 65 e4             	lea    -0x1c(%ebp),%esp
    2341:	5b                   	pop    %ebx
    2342:	5e                   	pop    %esi
    2343:	5f                   	pop    %edi
    2344:	c9                   	leave  
    2345:	c2 04 00             	ret    $0x4

00002348 <___Icompare>:
    2348:	66 8b 54 24 18       	mov    0x18(%esp),%dx
    234d:	66 3b 54 24 0c       	cmp    0xc(%esp),%dx
    2352:	7c 2a                	jl     237e <___Icompare+0x36>
    2354:	66 8b 54 24 18       	mov    0x18(%esp),%dx
    2359:	66 3b 54 24 0c       	cmp    0xc(%esp),%dx
    235e:	7f 32                	jg     2392 <___Icompare+0x4a>
    2360:	8b 54 24 14          	mov    0x14(%esp),%edx
    2364:	3b 54 24 08          	cmp    0x8(%esp),%edx
    2368:	72 14                	jb     237e <___Icompare+0x36>
    236a:	8b 54 24 14          	mov    0x14(%esp),%edx
    236e:	3b 54 24 08          	cmp    0x8(%esp),%edx
    2372:	77 1e                	ja     2392 <___Icompare+0x4a>
    2374:	8b 54 24 10          	mov    0x10(%esp),%edx
    2378:	3b 54 24 04          	cmp    0x4(%esp),%edx
    237c:	73 0a                	jae    2388 <___Icompare+0x40>
    237e:	b8 01 00 00 00       	mov    $0x1,%eax
    2383:	eb 19                	jmp    239e <___Icompare+0x56>
    2385:	00 00                	add    %al,(%eax)
    2387:	00 8b 54 24 10 3b    	add    %cl,0x3b102454(%ebx)
    238d:	54                   	push   %esp
    238e:	24 04                	and    $0x4,%al
    2390:	76 0a                	jbe    239c <___Icompare+0x54>
    2392:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2397:	eb 05                	jmp    239e <___Icompare+0x56>
    2399:	00 00                	add    %al,(%eax)
    239b:	00 31                	add    %dh,(%ecx)
    239d:	c0 c3 00             	rol    $0x0,%bl

000023a0 <___compare>:
    23a0:	55                   	push   %ebp
    23a1:	89 e5                	mov    %esp,%ebp
    23a3:	83 ec 04             	sub    $0x4,%esp
    23a6:	57                   	push   %edi
    23a7:	56                   	push   %esi
    23a8:	53                   	push   %ebx
    23a9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    23ac:	c1 e9 18             	shr    $0x18,%ecx
    23af:	89 c8                	mov    %ecx,%eax
    23b1:	24 80                	and    $0x80,%al
    23b3:	88 45 fc             	mov    %al,-0x4(%ebp)
    23b6:	0f 95 c2             	setne  %dl
    23b9:	83 e2 01             	and    $0x1,%edx
    23bc:	8b 4d 14             	mov    0x14(%ebp),%ecx
    23bf:	c1 e9 18             	shr    $0x18,%ecx
    23c2:	89 c8                	mov    %ecx,%eax
    23c4:	a8 80                	test   $0x80,%al
    23c6:	0f 95 c0             	setne  %al
    23c9:	83 e0 01             	and    $0x1,%eax
    23cc:	39 d0                	cmp    %edx,%eax
    23ce:	74 18                	je     23e8 <___compare+0x48>
    23d0:	80 7d fc 00          	cmpb   $0x0,-0x4(%ebp)
    23d4:	74 0a                	je     23e0 <___compare+0x40>
    23d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23db:	eb 51                	jmp    242e <___compare+0x8e>
    23dd:	00 00                	add    %al,(%eax)
    23df:	00 b8 01 00 00 00    	add    %bh,0x1(%eax)
    23e5:	eb 47                	jmp    242e <___compare+0x8e>
    23e7:	00 83 ec 18 8d 44    	add    %al,0x448d18ec(%ebx)
    23ed:	24 0c                	and    $0xc,%al
    23ef:	ff 75 14             	pushl  0x14(%ebp)
    23f2:	ff 75 10             	pushl  0x10(%ebp)
    23f5:	50                   	push   %eax
    23f6:	e8 c5 fe ff ff       	call   22c0 <___unpack_double>
    23fb:	83 c4 08             	add    $0x8,%esp
    23fe:	89 e0                	mov    %esp,%eax
    2400:	ff 75 0c             	pushl  0xc(%ebp)
    2403:	ff 75 08             	pushl  0x8(%ebp)
    2406:	50                   	push   %eax
    2407:	e8 b4 fe ff ff       	call   22c0 <___unpack_double>
    240c:	83 c4 08             	add    $0x8,%esp
    240f:	e8 34 ff ff ff       	call   2348 <___Icompare>
    2414:	89 c2                	mov    %eax,%edx
    2416:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2419:	c1 e9 18             	shr    $0x18,%ecx
    241c:	89 c8                	mov    %ecx,%eax
    241e:	83 c4 18             	add    $0x18,%esp
    2421:	a8 80                	test   $0x80,%al
    2423:	74 07                	je     242c <___compare+0x8c>
    2425:	89 d0                	mov    %edx,%eax
    2427:	f7 d8                	neg    %eax
    2429:	eb 03                	jmp    242e <___compare+0x8e>
    242b:	00 89 d0 8d 65 f0    	add    %cl,-0xf9a7230(%ecx)
    2431:	5b                   	pop    %ebx
    2432:	5e                   	pop    %esi
    2433:	5f                   	pop    %edi
    2434:	c9                   	leave  
    2435:	c3                   	ret    
	...

00002438 <___subtract>:
    2438:	8b 44 24 04          	mov    0x4(%esp),%eax
    243c:	8b 54 24 08          	mov    0x8(%esp),%edx
    2440:	81 74 24 10 00 00 00 	xorl   $0x80000000,0x10(%esp)
    2447:	80 
    2448:	ff 74 24 10          	pushl  0x10(%esp)
    244c:	ff 74 24 10          	pushl  0x10(%esp)
    2450:	52                   	push   %edx
    2451:	50                   	push   %eax
    2452:	e8 05 00 00 00       	call   245c <___add>
    2457:	83 c4 10             	add    $0x10,%esp
    245a:	c3                   	ret    
	...

0000245c <___add>:
    245c:	55                   	push   %ebp
    245d:	89 e5                	mov    %esp,%ebp
    245f:	83 ec 2c             	sub    $0x2c,%esp
    2462:	57                   	push   %edi
    2463:	56                   	push   %esi
    2464:	53                   	push   %ebx
    2465:	8b 5d 10             	mov    0x10(%ebp),%ebx
    2468:	8b 75 14             	mov    0x14(%ebp),%esi
    246b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    246e:	c1 e9 18             	shr    $0x18,%ecx
    2471:	89 c8                	mov    %ecx,%eax
    2473:	84 c0                	test   %al,%al
    2475:	75 0c                	jne    2483 <___add+0x27>
    2477:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    247a:	c1 e9 10             	shr    $0x10,%ecx
    247d:	89 c8                	mov    %ecx,%eax
    247f:	84 c0                	test   %al,%al
    2481:	74 55                	je     24d8 <___add+0x7c>
    2483:	89 f1                	mov    %esi,%ecx
    2485:	c1 e9 18             	shr    $0x18,%ecx
    2488:	89 c8                	mov    %ecx,%eax
    248a:	84 c0                	test   %al,%al
    248c:	75 0b                	jne    2499 <___add+0x3d>
    248e:	89 f1                	mov    %esi,%ecx
    2490:	c1 e9 10             	shr    $0x10,%ecx
    2493:	89 c8                	mov    %ecx,%eax
    2495:	84 c0                	test   %al,%al
    2497:	74 1a                	je     24b3 <___add+0x57>
    2499:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    249c:	c1 e9 18             	shr    $0x18,%ecx
    249f:	89 c8                	mov    %ecx,%eax
    24a1:	24 7f                	and    $0x7f,%al
    24a3:	3c 7f                	cmp    $0x7f,%al
    24a5:	75 19                	jne    24c0 <___add+0x64>
    24a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    24aa:	c1 e9 10             	shr    $0x10,%ecx
    24ad:	89 c8                	mov    %ecx,%eax
    24af:	3c f0                	cmp    $0xf0,%al
    24b1:	75 0d                	jne    24c0 <___add+0x64>
    24b3:	8b 45 08             	mov    0x8(%ebp),%eax
    24b6:	8b 55 0c             	mov    0xc(%ebp),%edx
    24b9:	e9 45 01 00 00       	jmp    2603 <___add+0x1a7>
    24be:	00 00                	add    %al,(%eax)
    24c0:	89 f1                	mov    %esi,%ecx
    24c2:	c1 e9 18             	shr    $0x18,%ecx
    24c5:	89 c8                	mov    %ecx,%eax
    24c7:	24 7f                	and    $0x7f,%al
    24c9:	3c 7f                	cmp    $0x7f,%al
    24cb:	75 17                	jne    24e4 <___add+0x88>
    24cd:	89 f1                	mov    %esi,%ecx
    24cf:	c1 e9 10             	shr    $0x10,%ecx
    24d2:	89 c8                	mov    %ecx,%eax
    24d4:	3c f0                	cmp    $0xf0,%al
    24d6:	75 0c                	jne    24e4 <___add+0x88>
    24d8:	89 d8                	mov    %ebx,%eax
    24da:	89 f2                	mov    %esi,%edx
    24dc:	e9 22 01 00 00       	jmp    2603 <___add+0x1a7>
    24e1:	00 00                	add    %al,(%eax)
    24e3:	00 ff                	add    %bh,%bh
    24e5:	75 0c                	jne    24f3 <___add+0x97>
    24e7:	ff 75 08             	pushl  0x8(%ebp)
    24ea:	8d 45 f4             	lea    -0xc(%ebp),%eax
    24ed:	50                   	push   %eax
    24ee:	e8 cd fd ff ff       	call   22c0 <___unpack_double>
    24f3:	56                   	push   %esi
    24f4:	53                   	push   %ebx
    24f5:	8d 45 e8             	lea    -0x18(%ebp),%eax
    24f8:	50                   	push   %eax
    24f9:	e8 c2 fd ff ff       	call   22c0 <___unpack_double>
    24fe:	83 c4 10             	add    $0x10,%esp
    2501:	66 8b 4d f2          	mov    -0xe(%ebp),%cx
    2505:	66 3b 4d fe          	cmp    -0x2(%ebp),%cx
    2509:	0f 95 c0             	setne  %al
    250c:	83 e0 01             	and    $0x1,%eax
    250f:	89 45 d8             	mov    %eax,-0x28(%ebp)
    2512:	83 ec 0c             	sub    $0xc,%esp
    2515:	89 e7                	mov    %esp,%edi
    2517:	8d 75 e8             	lea    -0x18(%ebp),%esi
    251a:	b9 03 00 00 00       	mov    $0x3,%ecx
    251f:	fc                   	cld    
    2520:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2522:	83 ec 0c             	sub    $0xc,%esp
    2525:	89 e7                	mov    %esp,%edi
    2527:	8d 75 f4             	lea    -0xc(%ebp),%esi
    252a:	b9 03 00 00 00       	mov    $0x3,%ecx
    252f:	fc                   	cld    
    2530:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2532:	e8 11 fe ff ff       	call   2348 <___Icompare>
    2537:	83 c4 18             	add    $0x18,%esp
    253a:	83 f8 ff             	cmp    $0xffffffff,%eax
    253d:	75 2a                	jne    2569 <___add+0x10d>
    253f:	8d 7d dc             	lea    -0x24(%ebp),%edi
    2542:	8d 75 f4             	lea    -0xc(%ebp),%esi
    2545:	b9 03 00 00 00       	mov    $0x3,%ecx
    254a:	fc                   	cld    
    254b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    254d:	8d 7d f4             	lea    -0xc(%ebp),%edi
    2550:	8d 75 e8             	lea    -0x18(%ebp),%esi
    2553:	b9 03 00 00 00       	mov    $0x3,%ecx
    2558:	fc                   	cld    
    2559:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    255b:	8d 7d e8             	lea    -0x18(%ebp),%edi
    255e:	8d 75 dc             	lea    -0x24(%ebp),%esi
    2561:	b9 03 00 00 00       	mov    $0x3,%ecx
    2566:	fc                   	cld    
    2567:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2569:	0f bf 5d fe          	movswl -0x2(%ebp),%ebx
    256d:	0f bf 45 fc          	movswl -0x4(%ebp),%eax
    2571:	0f bf 55 f0          	movswl -0x10(%ebp),%edx
    2575:	29 d0                	sub    %edx,%eax
    2577:	89 c2                	mov    %eax,%edx
    2579:	83 fa 34             	cmp    $0x34,%edx
    257c:	7f 69                	jg     25e7 <___add+0x18b>
    257e:	83 fa 1f             	cmp    $0x1f,%edx
    2581:	7e 10                	jle    2593 <___add+0x137>
    2583:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    2586:	89 4d e8             	mov    %ecx,-0x18(%ebp)
    2589:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    2590:	83 c2 e0             	add    $0xffffffe0,%edx
    2593:	85 d2                	test   %edx,%edx
    2595:	7e 19                	jle    25b0 <___add+0x154>
    2597:	89 d1                	mov    %edx,%ecx
    2599:	d3 6d e8             	shrl   %cl,-0x18(%ebp)
    259c:	b9 20 00 00 00       	mov    $0x20,%ecx
    25a1:	29 d1                	sub    %edx,%ecx
    25a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    25a6:	d3 e0                	shl    %cl,%eax
    25a8:	09 45 e8             	or     %eax,-0x18(%ebp)
    25ab:	89 d1                	mov    %edx,%ecx
    25ad:	d3 6d ec             	shrl   %cl,-0x14(%ebp)
    25b0:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
    25b4:	74 1a                	je     25d0 <___add+0x174>
    25b6:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    25b9:	3b 4d f4             	cmp    -0xc(%ebp),%ecx
    25bc:	76 03                	jbe    25c1 <___add+0x165>
    25be:	ff 4d f8             	decl   -0x8(%ebp)
    25c1:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    25c4:	29 4d f4             	sub    %ecx,-0xc(%ebp)
    25c7:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    25ca:	29 4d f8             	sub    %ecx,-0x8(%ebp)
    25cd:	eb 18                	jmp    25e7 <___add+0x18b>
    25cf:	00 8b 45 f4 8b 4d    	add    %cl,0x4d8bf445(%ebx)
    25d5:	e8 01 4d f4 3b       	call   3bf472db <__end+0x3bf439fb>
    25da:	45                   	inc    %ebp
    25db:	f4                   	hlt    
    25dc:	76 03                	jbe    25e1 <___add+0x185>
    25de:	ff 45 f8             	incl   -0x8(%ebp)
    25e1:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    25e4:	01 4d f8             	add    %ecx,-0x8(%ebp)
    25e7:	66 89 d8             	mov    %bx,%ax
    25ea:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
    25ee:	83 ec 0c             	sub    $0xc,%esp
    25f1:	89 e7                	mov    %esp,%edi
    25f3:	8d 75 f4             	lea    -0xc(%ebp),%esi
    25f6:	b9 03 00 00 00       	mov    $0x3,%ecx
    25fb:	fc                   	cld    
    25fc:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    25fe:	e8 d9 fa ff ff       	call   20dc <___pack_double>
    2603:	8d 65 c8             	lea    -0x38(%ebp),%esp
    2606:	5b                   	pop    %ebx
    2607:	5e                   	pop    %esi
    2608:	5f                   	pop    %edi
    2609:	c9                   	leave  
    260a:	c3                   	ret    
	...

0000260c <___multiply>:
    260c:	55                   	push   %ebp
    260d:	89 e5                	mov    %esp,%ebp
    260f:	83 ec 48             	sub    $0x48,%esp
    2612:	57                   	push   %edi
    2613:	56                   	push   %esi
    2614:	53                   	push   %ebx
    2615:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2618:	c1 e9 18             	shr    $0x18,%ecx
    261b:	89 c8                	mov    %ecx,%eax
    261d:	84 c0                	test   %al,%al
    261f:	75 0c                	jne    262d <___multiply+0x21>
    2621:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2624:	c1 e9 10             	shr    $0x10,%ecx
    2627:	89 c8                	mov    %ecx,%eax
    2629:	84 c0                	test   %al,%al
    262b:	74 18                	je     2645 <___multiply+0x39>
    262d:	8b 4d 14             	mov    0x14(%ebp),%ecx
    2630:	c1 e9 18             	shr    $0x18,%ecx
    2633:	89 c8                	mov    %ecx,%eax
    2635:	84 c0                	test   %al,%al
    2637:	75 1f                	jne    2658 <___multiply+0x4c>
    2639:	8b 4d 14             	mov    0x14(%ebp),%ecx
    263c:	c1 e9 10             	shr    $0x10,%ecx
    263f:	89 c8                	mov    %ecx,%eax
    2641:	84 c0                	test   %al,%al
    2643:	75 13                	jne    2658 <___multiply+0x4c>
    2645:	a1 90 34 00 00       	mov    0x3490,%eax
    264a:	8b 15 94 34 00 00    	mov    0x3494,%edx
    2650:	e9 70 01 00 00       	jmp    27c5 <___multiply+0x1b9>
    2655:	00 00                	add    %al,(%eax)
    2657:	00 8b 4d 0c c1 e9    	add    %cl,-0x163ef3b3(%ebx)
    265d:	18 89 c8 24 7f 3c    	sbb    %cl,0x3c7f24c8(%ecx)
    2663:	7f 75                	jg     26da <___multiply+0xce>
    2665:	0c 8b                	or     $0x8b,%al
    2667:	4d                   	dec    %ebp
    2668:	0c c1                	or     $0xc1,%al
    266a:	e9 10 89 c8 3c       	jmp    3cc8af7f <__end+0x3cc8769f>
    266f:	f0 74 1a             	lock je 268c <___multiply+0x80>
    2672:	8b 4d 14             	mov    0x14(%ebp),%ecx
    2675:	c1 e9 18             	shr    $0x18,%ecx
    2678:	89 c8                	mov    %ecx,%eax
    267a:	24 7f                	and    $0x7f,%al
    267c:	3c 7f                	cmp    $0x7f,%al
    267e:	75 50                	jne    26d0 <___multiply+0xc4>
    2680:	8b 4d 14             	mov    0x14(%ebp),%ecx
    2683:	c1 e9 10             	shr    $0x10,%ecx
    2686:	89 c8                	mov    %ecx,%eax
    2688:	3c f0                	cmp    $0xf0,%al
    268a:	75 44                	jne    26d0 <___multiply+0xc4>
    268c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    268f:	c1 e9 18             	shr    $0x18,%ecx
    2692:	89 c8                	mov    %ecx,%eax
    2694:	a8 80                	test   $0x80,%al
    2696:	0f 95 c2             	setne  %dl
    2699:	83 e2 01             	and    $0x1,%edx
    269c:	8b 4d 14             	mov    0x14(%ebp),%ecx
    269f:	c1 e9 18             	shr    $0x18,%ecx
    26a2:	89 c8                	mov    %ecx,%eax
    26a4:	a8 80                	test   $0x80,%al
    26a6:	0f 95 c0             	setne  %al
    26a9:	83 e0 01             	and    $0x1,%eax
    26ac:	39 d0                	cmp    %edx,%eax
    26ae:	75 10                	jne    26c0 <___multiply+0xb4>
    26b0:	a1 98 34 00 00       	mov    0x3498,%eax
    26b5:	8b 15 9c 34 00 00    	mov    0x349c,%edx
    26bb:	e9 05 01 00 00       	jmp    27c5 <___multiply+0x1b9>
    26c0:	a1 a0 34 00 00       	mov    0x34a0,%eax
    26c5:	8b 15 a4 34 00 00    	mov    0x34a4,%edx
    26cb:	e9 f5 00 00 00       	jmp    27c5 <___multiply+0x1b9>
    26d0:	ff 75 0c             	pushl  0xc(%ebp)
    26d3:	ff 75 08             	pushl  0x8(%ebp)
    26d6:	8d 45 f4             	lea    -0xc(%ebp),%eax
    26d9:	50                   	push   %eax
    26da:	e8 e1 fb ff ff       	call   22c0 <___unpack_double>
    26df:	ff 75 14             	pushl  0x14(%ebp)
    26e2:	ff 75 10             	pushl  0x10(%ebp)
    26e5:	8d 45 e8             	lea    -0x18(%ebp),%eax
    26e8:	50                   	push   %eax
    26e9:	e8 d2 fb ff ff       	call   22c0 <___unpack_double>
    26ee:	83 c4 10             	add    $0x10,%esp
    26f1:	bb 07 00 00 00       	mov    $0x7,%ebx
    26f6:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    26f9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    26ff:	83 c0 fc             	add    $0xfffffffc,%eax
    2702:	4b                   	dec    %ebx
    2703:	79 f4                	jns    26f9 <___multiply+0xed>
    2705:	31 db                	xor    %ebx,%ebx
    2707:	8d 4d f4             	lea    -0xc(%ebp),%ecx
    270a:	89 4d c0             	mov    %ecx,-0x40(%ebp)
    270d:	31 ff                	xor    %edi,%edi
    270f:	89 d9                	mov    %ebx,%ecx
    2711:	41                   	inc    %ecx
    2712:	89 4d b8             	mov    %ecx,-0x48(%ebp)
    2715:	8d 4d e8             	lea    -0x18(%ebp),%ecx
    2718:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    271b:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    271e:	0f b7 01             	movzwl (%ecx),%eax
    2721:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    2724:	0f b7 11             	movzwl (%ecx),%edx
    2727:	0f af c2             	imul   %edx,%eax
    272a:	8d 14 1f             	lea    (%edi,%ebx,1),%edx
    272d:	89 c1                	mov    %eax,%ecx
    272f:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
    2735:	01 4c 95 c8          	add    %ecx,-0x38(%ebp,%edx,4)
    2739:	c1 e8 10             	shr    $0x10,%eax
    273c:	8b 4d b8             	mov    -0x48(%ebp),%ecx
    273f:	01 44 8d c8          	add    %eax,-0x38(%ebp,%ecx,4)
    2743:	ff 45 b8             	incl   -0x48(%ebp)
    2746:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    2749:	8d 71 02             	lea    0x2(%ecx),%esi
    274c:	89 75 c4             	mov    %esi,-0x3c(%ebp)
    274f:	47                   	inc    %edi
    2750:	83 ff 03             	cmp    $0x3,%edi
    2753:	7e c6                	jle    271b <___multiply+0x10f>
    2755:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    2758:	8d 71 02             	lea    0x2(%ecx),%esi
    275b:	89 75 c0             	mov    %esi,-0x40(%ebp)
    275e:	43                   	inc    %ebx
    275f:	83 fb 03             	cmp    $0x3,%ebx
    2762:	7e a9                	jle    270d <___multiply+0x101>
    2764:	31 db                	xor    %ebx,%ebx
    2766:	89 d8                	mov    %ebx,%eax
    2768:	40                   	inc    %eax
    2769:	8b 54 9d c8          	mov    -0x38(%ebp,%ebx,4),%edx
    276d:	c1 ea 10             	shr    $0x10,%edx
    2770:	01 54 85 c8          	add    %edx,-0x38(%ebp,%eax,4)
    2774:	89 c3                	mov    %eax,%ebx
    2776:	83 fb 06             	cmp    $0x6,%ebx
    2779:	7e eb                	jle    2766 <___multiply+0x15a>
    277b:	31 db                	xor    %ebx,%ebx
    277d:	8d 55 f4             	lea    -0xc(%ebp),%edx
    2780:	8d 45 d4             	lea    -0x2c(%ebp),%eax
    2783:	66 8b 08             	mov    (%eax),%cx
    2786:	66 89 0a             	mov    %cx,(%edx)
    2789:	83 c2 02             	add    $0x2,%edx
    278c:	83 c0 04             	add    $0x4,%eax
    278f:	43                   	inc    %ebx
    2790:	83 fb 03             	cmp    $0x3,%ebx
    2793:	7e ee                	jle    2783 <___multiply+0x177>
    2795:	66 8b 4d f0          	mov    -0x10(%ebp),%cx
    2799:	66 01 4d fc          	add    %cx,-0x4(%ebp)
    279d:	66 83 45 fc 30       	addw   $0x30,-0x4(%ebp)
    27a2:	66 8b 4d f2          	mov    -0xe(%ebp),%cx
    27a6:	66 31 4d fe          	xor    %cx,-0x2(%ebp)
    27aa:	83 ec 0c             	sub    $0xc,%esp
    27ad:	89 e7                	mov    %esp,%edi
    27af:	8d 4d f4             	lea    -0xc(%ebp),%ecx
    27b2:	89 4d b8             	mov    %ecx,-0x48(%ebp)
    27b5:	8b 75 b8             	mov    -0x48(%ebp),%esi
    27b8:	b9 03 00 00 00       	mov    $0x3,%ecx
    27bd:	fc                   	cld    
    27be:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    27c0:	e8 17 f9 ff ff       	call   20dc <___pack_double>
    27c5:	8d 65 ac             	lea    -0x54(%ebp),%esp
    27c8:	5b                   	pop    %ebx
    27c9:	5e                   	pop    %esi
    27ca:	5f                   	pop    %edi
    27cb:	c9                   	leave  
    27cc:	c3                   	ret    
    27cd:	00 00                	add    %al,(%eax)
	...

000027d0 <___divide>:
    27d0:	55                   	push   %ebp
    27d1:	89 e5                	mov    %esp,%ebp
    27d3:	83 ec 40             	sub    $0x40,%esp
    27d6:	57                   	push   %edi
    27d7:	56                   	push   %esi
    27d8:	53                   	push   %ebx
    27d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
    27dc:	8b 75 0c             	mov    0xc(%ebp),%esi
    27df:	89 f1                	mov    %esi,%ecx
    27e1:	c1 e9 18             	shr    $0x18,%ecx
    27e4:	89 c8                	mov    %ecx,%eax
    27e6:	84 c0                	test   %al,%al
    27e8:	75 1e                	jne    2808 <___divide+0x38>
    27ea:	89 f1                	mov    %esi,%ecx
    27ec:	c1 e9 10             	shr    $0x10,%ecx
    27ef:	89 c8                	mov    %ecx,%eax
    27f1:	84 c0                	test   %al,%al
    27f3:	75 13                	jne    2808 <___divide+0x38>
    27f5:	a1 90 34 00 00       	mov    0x3490,%eax
    27fa:	8b 15 94 34 00 00    	mov    0x3494,%edx
    2800:	e9 dd 01 00 00       	jmp    29e2 <___divide+0x212>
    2805:	00 00                	add    %al,(%eax)
    2807:	00 89 f1 c1 e9 18    	add    %cl,0x18e9c1f1(%ecx)
    280d:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    2810:	8a 45 c4             	mov    -0x3c(%ebp),%al
    2813:	24 7f                	and    $0x7f,%al
    2815:	3c 7f                	cmp    $0x7f,%al
    2817:	75 3b                	jne    2854 <___divide+0x84>
    2819:	89 f1                	mov    %esi,%ecx
    281b:	c1 e9 10             	shr    $0x10,%ecx
    281e:	89 c8                	mov    %ecx,%eax
    2820:	3c f0                	cmp    $0xf0,%al
    2822:	75 30                	jne    2854 <___divide+0x84>
    2824:	f6 45 c4 80          	testb  $0x80,-0x3c(%ebp)
    2828:	0f 95 c2             	setne  %dl
    282b:	83 e2 01             	and    $0x1,%edx
    282e:	8b 4d 14             	mov    0x14(%ebp),%ecx
    2831:	c1 e9 18             	shr    $0x18,%ecx
    2834:	89 c8                	mov    %ecx,%eax
    2836:	a8 80                	test   $0x80,%al
    2838:	0f 95 c0             	setne  %al
    283b:	83 e0 01             	and    $0x1,%eax
    283e:	39 d0                	cmp    %edx,%eax
    2840:	75 5a                	jne    289c <___divide+0xcc>
    2842:	a1 98 34 00 00       	mov    0x3498,%eax
    2847:	8b 15 9c 34 00 00    	mov    0x349c,%edx
    284d:	e9 90 01 00 00       	jmp    29e2 <___divide+0x212>
    2852:	00 00                	add    %al,(%eax)
    2854:	8b 4d 14             	mov    0x14(%ebp),%ecx
    2857:	c1 e9 18             	shr    $0x18,%ecx
    285a:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    285d:	80 7d c4 00          	cmpb   $0x0,-0x3c(%ebp)
    2861:	75 49                	jne    28ac <___divide+0xdc>
    2863:	8b 4d 14             	mov    0x14(%ebp),%ecx
    2866:	c1 e9 10             	shr    $0x10,%ecx
    2869:	89 c8                	mov    %ecx,%eax
    286b:	84 c0                	test   %al,%al
    286d:	75 3d                	jne    28ac <___divide+0xdc>
    286f:	89 f1                	mov    %esi,%ecx
    2871:	c1 e9 18             	shr    $0x18,%ecx
    2874:	89 c8                	mov    %ecx,%eax
    2876:	a8 80                	test   $0x80,%al
    2878:	0f 95 c2             	setne  %dl
    287b:	83 e2 01             	and    $0x1,%edx
    287e:	f6 45 c4 80          	testb  $0x80,-0x3c(%ebp)
    2882:	0f 95 c0             	setne  %al
    2885:	83 e0 01             	and    $0x1,%eax
    2888:	39 d0                	cmp    %edx,%eax
    288a:	75 10                	jne    289c <___divide+0xcc>
    288c:	a1 98 34 00 00       	mov    0x3498,%eax
    2891:	8b 15 9c 34 00 00    	mov    0x349c,%edx
    2897:	e9 46 01 00 00       	jmp    29e2 <___divide+0x212>
    289c:	a1 a0 34 00 00       	mov    0x34a0,%eax
    28a1:	8b 15 a4 34 00 00    	mov    0x34a4,%edx
    28a7:	e9 36 01 00 00       	jmp    29e2 <___divide+0x212>
    28ac:	56                   	push   %esi
    28ad:	53                   	push   %ebx
    28ae:	8d 45 f4             	lea    -0xc(%ebp),%eax
    28b1:	50                   	push   %eax
    28b2:	e8 09 fa ff ff       	call   22c0 <___unpack_double>
    28b7:	ff 75 14             	pushl  0x14(%ebp)
    28ba:	ff 75 10             	pushl  0x10(%ebp)
    28bd:	8d 45 e8             	lea    -0x18(%ebp),%eax
    28c0:	50                   	push   %eax
    28c1:	e8 fa f9 ff ff       	call   22c0 <___unpack_double>
    28c6:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    28cd:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    28d4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    28db:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    28e2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    28e5:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    28e8:	8b 4d f8             	mov    -0x8(%ebp),%ecx
    28eb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    28ee:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    28f1:	89 4d d0             	mov    %ecx,-0x30(%ebp)
    28f4:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    28f7:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    28fa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    2901:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    2908:	31 f6                	xor    %esi,%esi
    290a:	83 c4 10             	add    $0x10,%esp
    290d:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    2914:	ba 03 00 00 00       	mov    $0x3,%edx
    2919:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
    291c:	8d 45 d4             	lea    -0x2c(%ebp),%eax
    291f:	8b 08                	mov    (%eax),%ecx
    2921:	3b 0b                	cmp    (%ebx),%ecx
    2923:	72 0b                	jb     2930 <___divide+0x160>
    2925:	77 42                	ja     2969 <___divide+0x199>
    2927:	83 c3 fc             	add    $0xfffffffc,%ebx
    292a:	83 c0 fc             	add    $0xfffffffc,%eax
    292d:	4a                   	dec    %edx
    292e:	79 ef                	jns    291f <___divide+0x14f>
    2930:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%ebp)
    2937:	31 d2                	xor    %edx,%edx
    2939:	8d 45 d8             	lea    -0x28(%ebp),%eax
    293c:	8d 5d c8             	lea    -0x38(%ebp),%ebx
    293f:	8d 4d dc             	lea    -0x24(%ebp),%ecx
    2942:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
    2945:	8b 0b                	mov    (%ebx),%ecx
    2947:	3b 08                	cmp    (%eax),%ecx
    2949:	76 05                	jbe    2950 <___divide+0x180>
    294b:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    294e:	ff 09                	decl   (%ecx)
    2950:	8b 0b                	mov    (%ebx),%ecx
    2952:	29 08                	sub    %ecx,(%eax)
    2954:	83 c0 04             	add    $0x4,%eax
    2957:	83 c3 04             	add    $0x4,%ebx
    295a:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    295d:	8d 79 04             	lea    0x4(%ecx),%edi
    2960:	89 7d c4             	mov    %edi,-0x3c(%ebp)
    2963:	42                   	inc    %edx
    2964:	83 fa 03             	cmp    $0x3,%edx
    2967:	7e dc                	jle    2945 <___divide+0x175>
    2969:	31 d2                	xor    %edx,%edx
    296b:	8d 45 c8             	lea    -0x38(%ebp),%eax
    296e:	8d 5d cc             	lea    -0x34(%ebp),%ebx
    2971:	d1 28                	shrl   (%eax)
    2973:	f7 03 01 00 00 00    	testl  $0x1,(%ebx)
    2979:	74 06                	je     2981 <___divide+0x1b1>
    297b:	81 08 00 00 00 80    	orl    $0x80000000,(%eax)
    2981:	83 c0 04             	add    $0x4,%eax
    2984:	83 c3 04             	add    $0x4,%ebx
    2987:	42                   	inc    %edx
    2988:	83 fa 02             	cmp    $0x2,%edx
    298b:	7e e4                	jle    2971 <___divide+0x1a1>
    298d:	d1 6d d4             	shrl   -0x2c(%ebp)
    2990:	d1 65 f8             	shll   -0x8(%ebp)
    2993:	f7 45 f4 00 00 00 80 	testl  $0x80000000,-0xc(%ebp)
    299a:	74 04                	je     29a0 <___divide+0x1d0>
    299c:	83 4d f8 01          	orl    $0x1,-0x8(%ebp)
    29a0:	d1 65 f4             	shll   -0xc(%ebp)
    29a3:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    29a6:	09 4d f4             	or     %ecx,-0xc(%ebp)
    29a9:	46                   	inc    %esi
    29aa:	83 fe 34             	cmp    $0x34,%esi
    29ad:	0f 8e 5a ff ff ff    	jle    290d <___divide+0x13d>
    29b3:	66 8b 4d f0          	mov    -0x10(%ebp),%cx
    29b7:	66 29 4d fc          	sub    %cx,-0x4(%ebp)
    29bb:	66 81 45 fc cc ff    	addw   $0xffcc,-0x4(%ebp)
    29c1:	66 8b 4d f2          	mov    -0xe(%ebp),%cx
    29c5:	66 31 4d fe          	xor    %cx,-0x2(%ebp)
    29c9:	83 ec 0c             	sub    $0xc,%esp
    29cc:	89 65 c0             	mov    %esp,-0x40(%ebp)
    29cf:	8d 75 f4             	lea    -0xc(%ebp),%esi
    29d2:	8b 7d c0             	mov    -0x40(%ebp),%edi
    29d5:	b9 03 00 00 00       	mov    $0x3,%ecx
    29da:	fc                   	cld    
    29db:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    29dd:	e8 fa f6 ff ff       	call   20dc <___pack_double>
    29e2:	8d 65 b4             	lea    -0x4c(%ebp),%esp
    29e5:	5b                   	pop    %ebx
    29e6:	5e                   	pop    %esi
    29e7:	5f                   	pop    %edi
    29e8:	c9                   	leave  
    29e9:	c3                   	ret    
	...

000029ec <___frexp>:
    29ec:	55                   	push   %ebp
    29ed:	89 e5                	mov    %esp,%ebp
    29ef:	83 ec 0c             	sub    $0xc,%esp
    29f2:	57                   	push   %edi
    29f3:	56                   	push   %esi
    29f4:	53                   	push   %ebx
    29f5:	8b 75 08             	mov    0x8(%ebp),%esi
    29f8:	8b 7d 0c             	mov    0xc(%ebp),%edi
    29fb:	8b 5d 10             	mov    0x10(%ebp),%ebx
    29fe:	89 f9                	mov    %edi,%ecx
    2a00:	c1 e9 18             	shr    $0x18,%ecx
    2a03:	89 c8                	mov    %ecx,%eax
    2a05:	84 c0                	test   %al,%al
    2a07:	75 0b                	jne    2a14 <___frexp+0x28>
    2a09:	89 f9                	mov    %edi,%ecx
    2a0b:	c1 e9 10             	shr    $0x10,%ecx
    2a0e:	89 c8                	mov    %ecx,%eax
    2a10:	84 c0                	test   %al,%al
    2a12:	74 18                	je     2a2c <___frexp+0x40>
    2a14:	89 f9                	mov    %edi,%ecx
    2a16:	c1 e9 18             	shr    $0x18,%ecx
    2a19:	89 c8                	mov    %ecx,%eax
    2a1b:	24 7f                	and    $0x7f,%al
    2a1d:	3c 7f                	cmp    $0x7f,%al
    2a1f:	75 17                	jne    2a38 <___frexp+0x4c>
    2a21:	89 f9                	mov    %edi,%ecx
    2a23:	c1 e9 10             	shr    $0x10,%ecx
    2a26:	89 c8                	mov    %ecx,%eax
    2a28:	3c f0                	cmp    $0xf0,%al
    2a2a:	75 0c                	jne    2a38 <___frexp+0x4c>
    2a2c:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
    2a32:	89 f0                	mov    %esi,%eax
    2a34:	89 fa                	mov    %edi,%edx
    2a36:	eb 2f                	jmp    2a67 <___frexp+0x7b>
    2a38:	57                   	push   %edi
    2a39:	56                   	push   %esi
    2a3a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    2a3d:	50                   	push   %eax
    2a3e:	e8 7d f8 ff ff       	call   22c0 <___unpack_double>
    2a43:	0f bf 45 fc          	movswl -0x4(%ebp),%eax
    2a47:	83 c0 35             	add    $0x35,%eax
    2a4a:	89 03                	mov    %eax,(%ebx)
    2a4c:	66 c7 45 fc cb ff    	movw   $0xffcb,-0x4(%ebp)
    2a52:	83 ec 0c             	sub    $0xc,%esp
    2a55:	89 e7                	mov    %esp,%edi
    2a57:	8d 75 f4             	lea    -0xc(%ebp),%esi
    2a5a:	b9 03 00 00 00       	mov    $0x3,%ecx
    2a5f:	fc                   	cld    
    2a60:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2a62:	e8 75 f6 ff ff       	call   20dc <___pack_double>
    2a67:	8d 65 e8             	lea    -0x18(%ebp),%esp
    2a6a:	5b                   	pop    %ebx
    2a6b:	5e                   	pop    %esi
    2a6c:	5f                   	pop    %edi
    2a6d:	c9                   	leave  
    2a6e:	c3                   	ret    
	...

00002a70 <___ldexp>:
    2a70:	55                   	push   %ebp
    2a71:	89 e5                	mov    %esp,%ebp
    2a73:	83 ec 0c             	sub    $0xc,%esp
    2a76:	57                   	push   %edi
    2a77:	56                   	push   %esi
    2a78:	53                   	push   %ebx
    2a79:	8b 5d 08             	mov    0x8(%ebp),%ebx
    2a7c:	8b 75 0c             	mov    0xc(%ebp),%esi
    2a7f:	89 f1                	mov    %esi,%ecx
    2a81:	c1 e9 18             	shr    $0x18,%ecx
    2a84:	89 c8                	mov    %ecx,%eax
    2a86:	84 c0                	test   %al,%al
    2a88:	75 0b                	jne    2a95 <___ldexp+0x25>
    2a8a:	89 f1                	mov    %esi,%ecx
    2a8c:	c1 e9 10             	shr    $0x10,%ecx
    2a8f:	89 c8                	mov    %ecx,%eax
    2a91:	84 c0                	test   %al,%al
    2a93:	74 18                	je     2aad <___ldexp+0x3d>
    2a95:	89 f1                	mov    %esi,%ecx
    2a97:	c1 e9 18             	shr    $0x18,%ecx
    2a9a:	89 c8                	mov    %ecx,%eax
    2a9c:	24 7f                	and    $0x7f,%al
    2a9e:	3c 7f                	cmp    $0x7f,%al
    2aa0:	75 12                	jne    2ab4 <___ldexp+0x44>
    2aa2:	89 f1                	mov    %esi,%ecx
    2aa4:	c1 e9 10             	shr    $0x10,%ecx
    2aa7:	89 c8                	mov    %ecx,%eax
    2aa9:	3c f0                	cmp    $0xf0,%al
    2aab:	75 07                	jne    2ab4 <___ldexp+0x44>
    2aad:	89 d8                	mov    %ebx,%eax
    2aaf:	89 f2                	mov    %esi,%edx
    2ab1:	eb 29                	jmp    2adc <___ldexp+0x6c>
    2ab3:	00 56 53             	add    %dl,0x53(%esi)
    2ab6:	8d 45 f4             	lea    -0xc(%ebp),%eax
    2ab9:	50                   	push   %eax
    2aba:	e8 01 f8 ff ff       	call   22c0 <___unpack_double>
    2abf:	66 8b 45 10          	mov    0x10(%ebp),%ax
    2ac3:	66 01 45 fc          	add    %ax,-0x4(%ebp)
    2ac7:	83 ec 0c             	sub    $0xc,%esp
    2aca:	89 e7                	mov    %esp,%edi
    2acc:	8d 75 f4             	lea    -0xc(%ebp),%esi
    2acf:	b9 03 00 00 00       	mov    $0x3,%ecx
    2ad4:	fc                   	cld    
    2ad5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2ad7:	e8 00 f6 ff ff       	call   20dc <___pack_double>
    2adc:	8d 65 e8             	lea    -0x18(%ebp),%esp
    2adf:	5b                   	pop    %ebx
    2ae0:	5e                   	pop    %esi
    2ae1:	5f                   	pop    %edi
    2ae2:	c9                   	leave  
    2ae3:	c3                   	ret    

00002ae4 <___modf>:
    2ae4:	55                   	push   %ebp
    2ae5:	89 e5                	mov    %esp,%ebp
    2ae7:	83 ec 20             	sub    $0x20,%esp
    2aea:	57                   	push   %edi
    2aeb:	56                   	push   %esi
    2aec:	53                   	push   %ebx
    2aed:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2af0:	c1 e9 18             	shr    $0x18,%ecx
    2af3:	89 c8                	mov    %ecx,%eax
    2af5:	84 c0                	test   %al,%al
    2af7:	75 0c                	jne    2b05 <___modf+0x21>
    2af9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2afc:	c1 e9 10             	shr    $0x10,%ecx
    2aff:	89 c8                	mov    %ecx,%eax
    2b01:	84 c0                	test   %al,%al
    2b03:	74 33                	je     2b38 <___modf+0x54>
    2b05:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2b08:	c1 e9 18             	shr    $0x18,%ecx
    2b0b:	89 c8                	mov    %ecx,%eax
    2b0d:	24 7f                	and    $0x7f,%al
    2b0f:	3c 7f                	cmp    $0x7f,%al
    2b11:	75 0c                	jne    2b1f <___modf+0x3b>
    2b13:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    2b16:	c1 e9 10             	shr    $0x10,%ecx
    2b19:	89 c8                	mov    %ecx,%eax
    2b1b:	3c f0                	cmp    $0xf0,%al
    2b1d:	74 19                	je     2b38 <___modf+0x54>
    2b1f:	ff 75 0c             	pushl  0xc(%ebp)
    2b22:	ff 75 08             	pushl  0x8(%ebp)
    2b25:	8d 45 f4             	lea    -0xc(%ebp),%eax
    2b28:	50                   	push   %eax
    2b29:	e8 92 f7 ff ff       	call   22c0 <___unpack_double>
    2b2e:	83 c4 08             	add    $0x8,%esp
    2b31:	66 83 7d fc 00       	cmpw   $0x0,-0x4(%ebp)
    2b36:	7c 20                	jl     2b58 <___modf+0x74>
    2b38:	8b 4d 08             	mov    0x8(%ebp),%ecx
    2b3b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    2b3e:	8b 7d 10             	mov    0x10(%ebp),%edi
    2b41:	89 0f                	mov    %ecx,(%edi)
    2b43:	89 5f 04             	mov    %ebx,0x4(%edi)
    2b46:	a1 90 34 00 00       	mov    0x3490,%eax
    2b4b:	8b 15 94 34 00 00    	mov    0x3494,%edx
    2b51:	e9 38 01 00 00       	jmp    2c8e <___modf+0x1aa>
    2b56:	00 00                	add    %al,(%eax)
    2b58:	66 83 7d fc cb       	cmpw   $0xffcb,-0x4(%ebp)
    2b5d:	7f 59                	jg     2bb8 <___modf+0xd4>
    2b5f:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%ebp)
    2b64:	74 0e                	je     2b74 <___modf+0x90>
    2b66:	a1 b0 34 00 00       	mov    0x34b0,%eax
    2b6b:	8b 15 b4 34 00 00    	mov    0x34b4,%edx
    2b71:	eb 0c                	jmp    2b7f <___modf+0x9b>
    2b73:	00 a1 90 34 00 00    	add    %ah,0x3490(%ecx)
    2b79:	8b 15 94 34 00 00    	mov    0x3494,%edx
    2b7f:	8b 4d 10             	mov    0x10(%ebp),%ecx
    2b82:	89 01                	mov    %eax,(%ecx)
    2b84:	89 51 04             	mov    %edx,0x4(%ecx)
    2b87:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%ebp)
    2b8c:	74 1e                	je     2bac <___modf+0xc8>
    2b8e:	ff 35 ac 34 00 00    	pushl  0x34ac
    2b94:	ff 35 a8 34 00 00    	pushl  0x34a8
    2b9a:	ff 75 0c             	pushl  0xc(%ebp)
    2b9d:	ff 75 08             	pushl  0x8(%ebp)
    2ba0:	e8 b7 f8 ff ff       	call   245c <___add>
    2ba5:	e9 e4 00 00 00       	jmp    2c8e <___modf+0x1aa>
    2baa:	00 00                	add    %al,(%eax)
    2bac:	8b 45 08             	mov    0x8(%ebp),%eax
    2baf:	8b 55 0c             	mov    0xc(%ebp),%edx
    2bb2:	e9 d7 00 00 00       	jmp    2c8e <___modf+0x1aa>
    2bb7:	00 0f                	add    %cl,(%edi)
    2bb9:	bf 55 fc f7 da       	mov    $0xdaf7fc55,%edi
    2bbe:	83 fa 1f             	cmp    $0x1f,%edx
    2bc1:	7e 19                	jle    2bdc <___modf+0xf8>
    2bc3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    2bca:	8d 4a e0             	lea    -0x20(%edx),%ecx
    2bcd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bd2:	d3 e0                	shl    %cl,%eax
    2bd4:	21 45 f8             	and    %eax,-0x8(%ebp)
    2bd7:	eb 0f                	jmp    2be8 <___modf+0x104>
    2bd9:	00 00                	add    %al,(%eax)
    2bdb:	00 b8 ff ff ff ff    	add    %bh,-0x1(%eax)
    2be1:	89 d1                	mov    %edx,%ecx
    2be3:	d3 e0                	shl    %cl,%eax
    2be5:	21 45 f4             	and    %eax,-0xc(%ebp)
    2be8:	83 ec 0c             	sub    $0xc,%esp
    2beb:	89 65 e0             	mov    %esp,-0x20(%ebp)
    2bee:	8d 75 f4             	lea    -0xc(%ebp),%esi
    2bf1:	8b 7d e0             	mov    -0x20(%ebp),%edi
    2bf4:	b9 03 00 00 00       	mov    $0x3,%ecx
    2bf9:	fc                   	cld    
    2bfa:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2bfc:	e8 db f4 ff ff       	call   20dc <___pack_double>
    2c01:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2c04:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2c07:	ff 75 f0             	pushl  -0x10(%ebp)
    2c0a:	ff 75 ec             	pushl  -0x14(%ebp)
    2c0d:	ff 75 0c             	pushl  0xc(%ebp)
    2c10:	ff 75 08             	pushl  0x8(%ebp)
    2c13:	e8 20 f8 ff ff       	call   2438 <___subtract>
    2c18:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    2c1b:	89 55 e8             	mov    %edx,-0x18(%ebp)
    2c1e:	83 c4 1c             	add    $0x1c,%esp
    2c21:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%ebp)
    2c26:	74 52                	je     2c7a <___modf+0x196>
    2c28:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    2c2b:	c1 e9 18             	shr    $0x18,%ecx
    2c2e:	89 c8                	mov    %ecx,%eax
    2c30:	84 c0                	test   %al,%al
    2c32:	75 0c                	jne    2c40 <___modf+0x15c>
    2c34:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    2c37:	c1 e9 10             	shr    $0x10,%ecx
    2c3a:	89 c8                	mov    %ecx,%eax
    2c3c:	84 c0                	test   %al,%al
    2c3e:	74 3a                	je     2c7a <___modf+0x196>
    2c40:	ff 35 b4 34 00 00    	pushl  0x34b4
    2c46:	ff 35 b0 34 00 00    	pushl  0x34b0
    2c4c:	ff 75 f0             	pushl  -0x10(%ebp)
    2c4f:	ff 75 ec             	pushl  -0x14(%ebp)
    2c52:	e8 05 f8 ff ff       	call   245c <___add>
    2c57:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2c5a:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2c5d:	ff 35 ac 34 00 00    	pushl  0x34ac
    2c63:	ff 35 a8 34 00 00    	pushl  0x34a8
    2c69:	ff 75 e8             	pushl  -0x18(%ebp)
    2c6c:	ff 75 e4             	pushl  -0x1c(%ebp)
    2c6f:	e8 e8 f7 ff ff       	call   245c <___add>
    2c74:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    2c77:	89 55 e8             	mov    %edx,-0x18(%ebp)
    2c7a:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    2c7d:	8b 5d f0             	mov    -0x10(%ebp),%ebx
    2c80:	8b 7d 10             	mov    0x10(%ebp),%edi
    2c83:	89 0f                	mov    %ecx,(%edi)
    2c85:	89 5f 04             	mov    %ebx,0x4(%edi)
    2c88:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2c8b:	8b 55 e8             	mov    -0x18(%ebp),%edx
    2c8e:	8d 65 d4             	lea    -0x2c(%ebp),%esp
    2c91:	5b                   	pop    %ebx
    2c92:	5e                   	pop    %esi
    2c93:	5f                   	pop    %edi
    2c94:	c9                   	leave  
    2c95:	c3                   	ret    
	...

00002c98 <___float2double>:
    2c98:	55                   	push   %ebp
    2c99:	57                   	push   %edi
    2c9a:	56                   	push   %esi
    2c9b:	53                   	push   %ebx
    2c9c:	8b 6c 24 14          	mov    0x14(%esp),%ebp
    2ca0:	89 ea                	mov    %ebp,%edx
    2ca2:	c1 ea 18             	shr    $0x18,%edx
    2ca5:	88 d0                	mov    %dl,%al
    2ca7:	24 7f                	and    $0x7f,%al
    2ca9:	3c 7f                	cmp    $0x7f,%al
    2cab:	75 2f                	jne    2cdc <___float2double+0x44>
    2cad:	89 e8                	mov    %ebp,%eax
    2caf:	c1 e8 10             	shr    $0x10,%eax
    2cb2:	3c 80                	cmp    $0x80,%al
    2cb4:	75 26                	jne    2cdc <___float2double+0x44>
    2cb6:	f6 c2 80             	test   $0x80,%dl
    2cb9:	74 11                	je     2ccc <___float2double+0x34>
    2cbb:	a1 a0 34 00 00       	mov    0x34a0,%eax
    2cc0:	8b 15 a4 34 00 00    	mov    0x34a4,%edx
    2cc6:	e9 1f 01 00 00       	jmp    2dea <___float2double+0x152>
    2ccb:	00 a1 98 34 00 00    	add    %ah,0x3498(%ecx)
    2cd1:	8b 15 9c 34 00 00    	mov    0x349c,%edx
    2cd7:	e9 0e 01 00 00       	jmp    2dea <___float2double+0x152>
    2cdc:	89 e8                	mov    %ebp,%eax
    2cde:	c1 e8 18             	shr    $0x18,%eax
    2ce1:	84 c0                	test   %al,%al
    2ce3:	75 1b                	jne    2d00 <___float2double+0x68>
    2ce5:	89 e8                	mov    %ebp,%eax
    2ce7:	c1 e8 10             	shr    $0x10,%eax
    2cea:	84 c0                	test   %al,%al
    2cec:	75 12                	jne    2d00 <___float2double+0x68>
    2cee:	a1 90 34 00 00       	mov    0x3490,%eax
    2cf3:	8b 15 94 34 00 00    	mov    0x3494,%edx
    2cf9:	e9 ec 00 00 00       	jmp    2dea <___float2double+0x152>
    2cfe:	00 00                	add    %al,(%eax)
    2d00:	89 e8                	mov    %ebp,%eax
    2d02:	c1 e8 18             	shr    $0x18,%eax
    2d05:	89 c2                	mov    %eax,%edx
    2d07:	83 e2 7f             	and    $0x7f,%edx
    2d0a:	89 e9                	mov    %ebp,%ecx
    2d0c:	c1 e9 10             	shr    $0x10,%ecx
    2d0f:	c0 e9 07             	shr    $0x7,%cl
    2d12:	0f b6 c9             	movzbl %cl,%ecx
    2d15:	8d 8c 51 80 03 00 00 	lea    0x380(%ecx,%edx,2),%ecx
    2d1c:	89 ca                	mov    %ecx,%edx
    2d1e:	c1 fa 04             	sar    $0x4,%edx
    2d21:	0f b6 d2             	movzbl %dl,%edx
    2d24:	c1 e2 18             	shl    $0x18,%edx
    2d27:	81 e6 ff ff ff 00    	and    $0xffffff,%esi
    2d2d:	09 d6                	or     %edx,%esi
    2d2f:	a8 80                	test   $0x80,%al
    2d31:	74 17                	je     2d4a <___float2double+0xb2>
    2d33:	89 f7                	mov    %esi,%edi
    2d35:	c1 ef 18             	shr    $0x18,%edi
    2d38:	89 f8                	mov    %edi,%eax
    2d3a:	0c 80                	or     $0x80,%al
    2d3c:	0f b6 c0             	movzbl %al,%eax
    2d3f:	c1 e0 18             	shl    $0x18,%eax
    2d42:	81 e6 ff ff ff 00    	and    $0xffffff,%esi
    2d48:	09 c6                	or     %eax,%esi
    2d4a:	88 ca                	mov    %cl,%dl
    2d4c:	80 e2 0f             	and    $0xf,%dl
    2d4f:	c0 e2 04             	shl    $0x4,%dl
    2d52:	89 e8                	mov    %ebp,%eax
    2d54:	c1 e8 10             	shr    $0x10,%eax
    2d57:	88 c1                	mov    %al,%cl
    2d59:	80 e1 78             	and    $0x78,%cl
    2d5c:	c0 e9 03             	shr    $0x3,%cl
    2d5f:	08 ca                	or     %cl,%dl
    2d61:	0f b6 d2             	movzbl %dl,%edx
    2d64:	c1 e2 10             	shl    $0x10,%edx
    2d67:	81 e6 ff ff 00 ff    	and    $0xff00ffff,%esi
    2d6d:	09 d6                	or     %edx,%esi
    2d6f:	24 07                	and    $0x7,%al
    2d71:	c0 e0 05             	shl    $0x5,%al
    2d74:	89 ea                	mov    %ebp,%edx
    2d76:	c1 ea 08             	shr    $0x8,%edx
    2d79:	88 d1                	mov    %dl,%cl
    2d7b:	c0 e9 03             	shr    $0x3,%cl
    2d7e:	08 c8                	or     %cl,%al
    2d80:	0f b6 c0             	movzbl %al,%eax
    2d83:	c1 e0 08             	shl    $0x8,%eax
    2d86:	81 e6 ff 00 ff ff    	and    $0xffff00ff,%esi
    2d8c:	09 c6                	or     %eax,%esi
    2d8e:	80 e2 07             	and    $0x7,%dl
    2d91:	c0 e2 05             	shl    $0x5,%dl
    2d94:	66 89 e8             	mov    %bp,%ax
    2d97:	c0 e8 03             	shr    $0x3,%al
    2d9a:	08 c2                	or     %al,%dl
    2d9c:	0f b6 c2             	movzbl %dl,%eax
    2d9f:	81 e6 00 ff ff ff    	and    $0xffffff00,%esi
    2da5:	09 c6                	or     %eax,%esi
    2da7:	66 89 e8             	mov    %bp,%ax
    2daa:	24 07                	and    $0x7,%al
    2dac:	c0 e0 05             	shl    $0x5,%al
    2daf:	0f b6 c0             	movzbl %al,%eax
    2db2:	c1 e0 18             	shl    $0x18,%eax
    2db5:	81 e3 ff ff ff 00    	and    $0xffffff,%ebx
    2dbb:	09 c3                	or     %eax,%ebx
    2dbd:	81 e3 00 ff ff ff    	and    $0xffffff00,%ebx
    2dc3:	0f b6 c3             	movzbl %bl,%eax
    2dc6:	c1 e0 08             	shl    $0x8,%eax
    2dc9:	81 e3 ff 00 ff ff    	and    $0xffff00ff,%ebx
    2dcf:	09 c3                	or     %eax,%ebx
    2dd1:	89 df                	mov    %ebx,%edi
    2dd3:	c1 ef 08             	shr    $0x8,%edi
    2dd6:	89 f8                	mov    %edi,%eax
    2dd8:	0f b6 c0             	movzbl %al,%eax
    2ddb:	c1 e0 10             	shl    $0x10,%eax
    2dde:	81 e3 ff ff 00 ff    	and    $0xff00ffff,%ebx
    2de4:	09 c3                	or     %eax,%ebx
    2de6:	89 d8                	mov    %ebx,%eax
    2de8:	89 f2                	mov    %esi,%edx
    2dea:	5b                   	pop    %ebx
    2deb:	5e                   	pop    %esi
    2dec:	5f                   	pop    %edi
    2ded:	5d                   	pop    %ebp
    2dee:	c3                   	ret    
	...

00002df0 <___double2float>:
    2df0:	55                   	push   %ebp
    2df1:	89 e5                	mov    %esp,%ebp
    2df3:	83 ec 04             	sub    $0x4,%esp
    2df6:	57                   	push   %edi
    2df7:	56                   	push   %esi
    2df8:	53                   	push   %ebx
    2df9:	8b 75 08             	mov    0x8(%ebp),%esi
    2dfc:	8b 7d 0c             	mov    0xc(%ebp),%edi
    2dff:	89 f9                	mov    %edi,%ecx
    2e01:	c1 e9 18             	shr    $0x18,%ecx
    2e04:	89 ca                	mov    %ecx,%edx
    2e06:	88 d0                	mov    %dl,%al
    2e08:	24 7f                	and    $0x7f,%al
    2e0a:	3c 7f                	cmp    $0x7f,%al
    2e0c:	75 1a                	jne    2e28 <___double2float+0x38>
    2e0e:	89 f9                	mov    %edi,%ecx
    2e10:	c1 e9 10             	shr    $0x10,%ecx
    2e13:	89 c8                	mov    %ecx,%eax
    2e15:	3c f0                	cmp    $0xf0,%al
    2e17:	75 0f                	jne    2e28 <___double2float+0x38>
    2e19:	f6 c2 80             	test   $0x80,%dl
    2e1c:	74 6e                	je     2e8c <___double2float+0x9c>
    2e1e:	a1 c0 34 00 00       	mov    0x34c0,%eax
    2e23:	e9 0d 01 00 00       	jmp    2f35 <___double2float+0x145>
    2e28:	89 f9                	mov    %edi,%ecx
    2e2a:	c1 e9 18             	shr    $0x18,%ecx
    2e2d:	89 c8                	mov    %ecx,%eax
    2e2f:	84 c0                	test   %al,%al
    2e31:	75 15                	jne    2e48 <___double2float+0x58>
    2e33:	89 f9                	mov    %edi,%ecx
    2e35:	c1 e9 10             	shr    $0x10,%ecx
    2e38:	89 c8                	mov    %ecx,%eax
    2e3a:	84 c0                	test   %al,%al
    2e3c:	75 0a                	jne    2e48 <___double2float+0x58>
    2e3e:	a1 b8 34 00 00       	mov    0x34b8,%eax
    2e43:	e9 ed 00 00 00       	jmp    2f35 <___double2float+0x145>
    2e48:	89 f9                	mov    %edi,%ecx
    2e4a:	c1 e9 18             	shr    $0x18,%ecx
    2e4d:	89 c8                	mov    %ecx,%eax
    2e4f:	83 e0 7f             	and    $0x7f,%eax
    2e52:	c1 e0 04             	shl    $0x4,%eax
    2e55:	89 f9                	mov    %edi,%ecx
    2e57:	c1 e9 10             	shr    $0x10,%ecx
    2e5a:	89 ca                	mov    %ecx,%edx
    2e5c:	c0 ea 04             	shr    $0x4,%dl
    2e5f:	0f b6 d2             	movzbl %dl,%edx
    2e62:	8d 94 02 80 fc ff ff 	lea    -0x380(%edx,%eax,1),%edx
    2e69:	81 fa fe 00 00 00    	cmp    $0xfe,%edx
    2e6f:	7f 04                	jg     2e75 <___double2float+0x85>
    2e71:	85 d2                	test   %edx,%edx
    2e73:	7f 23                	jg     2e98 <___double2float+0xa8>
    2e75:	89 f9                	mov    %edi,%ecx
    2e77:	c1 e9 18             	shr    $0x18,%ecx
    2e7a:	89 c8                	mov    %ecx,%eax
    2e7c:	a8 80                	test   $0x80,%al
    2e7e:	74 0c                	je     2e8c <___double2float+0x9c>
    2e80:	a1 c0 34 00 00       	mov    0x34c0,%eax
    2e85:	e9 ab 00 00 00       	jmp    2f35 <___double2float+0x145>
    2e8a:	00 00                	add    %al,(%eax)
    2e8c:	a1 bc 34 00 00       	mov    0x34bc,%eax
    2e91:	e9 9f 00 00 00       	jmp    2f35 <___double2float+0x145>
    2e96:	00 00                	add    %al,(%eax)
    2e98:	89 d0                	mov    %edx,%eax
    2e9a:	d1 f8                	sar    %eax
    2e9c:	0f b6 c0             	movzbl %al,%eax
    2e9f:	c1 e0 18             	shl    $0x18,%eax
    2ea2:	81 e3 ff ff ff 00    	and    $0xffffff,%ebx
    2ea8:	09 c3                	or     %eax,%ebx
    2eaa:	89 d8                	mov    %ebx,%eax
    2eac:	c1 e8 18             	shr    $0x18,%eax
    2eaf:	a8 80                	test   $0x80,%al
    2eb1:	74 10                	je     2ec3 <___double2float+0xd3>
    2eb3:	0c 80                	or     $0x80,%al
    2eb5:	0f b6 c0             	movzbl %al,%eax
    2eb8:	c1 e0 18             	shl    $0x18,%eax
    2ebb:	81 e3 ff ff ff 00    	and    $0xffffff,%ebx
    2ec1:	09 c3                	or     %eax,%ebx
    2ec3:	88 d0                	mov    %dl,%al
    2ec5:	24 01                	and    $0x1,%al
    2ec7:	c0 e0 07             	shl    $0x7,%al
    2eca:	89 f9                	mov    %edi,%ecx
    2ecc:	c1 e9 10             	shr    $0x10,%ecx
    2ecf:	89 ca                	mov    %ecx,%edx
    2ed1:	80 e2 0f             	and    $0xf,%dl
    2ed4:	c0 e2 03             	shl    $0x3,%dl
    2ed7:	08 d0                	or     %dl,%al
    2ed9:	89 f9                	mov    %edi,%ecx
    2edb:	c1 e9 08             	shr    $0x8,%ecx
    2ede:	89 ca                	mov    %ecx,%edx
    2ee0:	88 d1                	mov    %dl,%cl
    2ee2:	c0 e9 05             	shr    $0x5,%cl
    2ee5:	08 c8                	or     %cl,%al
    2ee7:	0f b6 c0             	movzbl %al,%eax
    2eea:	c1 e0 10             	shl    $0x10,%eax
    2eed:	81 e3 ff ff 00 ff    	and    $0xff00ffff,%ebx
    2ef3:	09 c3                	or     %eax,%ebx
    2ef5:	80 e2 1f             	and    $0x1f,%dl
    2ef8:	c0 e2 03             	shl    $0x3,%dl
    2efb:	66 89 f9             	mov    %di,%cx
    2efe:	c0 e9 05             	shr    $0x5,%cl
    2f01:	88 c8                	mov    %cl,%al
    2f03:	08 c2                	or     %al,%dl
    2f05:	0f b6 c2             	movzbl %dl,%eax
    2f08:	c1 e0 08             	shl    $0x8,%eax
    2f0b:	81 e3 ff 00 ff ff    	and    $0xffff00ff,%ebx
    2f11:	09 c3                	or     %eax,%ebx
    2f13:	66 89 f9             	mov    %di,%cx
    2f16:	80 e1 1f             	and    $0x1f,%cl
    2f19:	88 c8                	mov    %cl,%al
    2f1b:	c0 e0 03             	shl    $0x3,%al
    2f1e:	89 f1                	mov    %esi,%ecx
    2f20:	c1 e9 18             	shr    $0x18,%ecx
    2f23:	89 ca                	mov    %ecx,%edx
    2f25:	c0 ea 05             	shr    $0x5,%dl
    2f28:	08 d0                	or     %dl,%al
    2f2a:	0f b6 c0             	movzbl %al,%eax
    2f2d:	81 e3 00 ff ff ff    	and    $0xffffff00,%ebx
    2f33:	09 d8                	or     %ebx,%eax
    2f35:	8d 65 f0             	lea    -0x10(%ebp),%esp
    2f38:	5b                   	pop    %ebx
    2f39:	5e                   	pop    %esi
    2f3a:	5f                   	pop    %edi
    2f3b:	c9                   	leave  
    2f3c:	c3                   	ret    
    2f3d:	00 00                	add    %al,(%eax)
	...

00002f40 <_close>:
    2f40:	53                   	push   %ebx
    2f41:	b8 06 00 00 00       	mov    $0x6,%eax
    2f46:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    2f4a:	cd 80                	int    $0x80
    2f4c:	85 c0                	test   %eax,%eax
    2f4e:	7d 0c                	jge    2f5c <_close+0x1c>
    2f50:	f7 d8                	neg    %eax
    2f52:	a3 d8 38 00 00       	mov    %eax,0x38d8
    2f57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f5c:	5b                   	pop    %ebx
    2f5d:	c3                   	ret    
	...

00002f60 <_write>:
    2f60:	53                   	push   %ebx
    2f61:	b8 04 00 00 00       	mov    $0x4,%eax
    2f66:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    2f6a:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    2f6e:	8b 54 24 10          	mov    0x10(%esp),%edx
    2f72:	cd 80                	int    $0x80
    2f74:	85 c0                	test   %eax,%eax
    2f76:	7d 0c                	jge    2f84 <_write+0x24>
    2f78:	f7 d8                	neg    %eax
    2f7a:	a3 d8 38 00 00       	mov    %eax,0x38d8
    2f7f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f84:	5b                   	pop    %ebx
    2f85:	c3                   	ret    
	...

00002f88 <_isatty>:
    2f88:	55                   	push   %ebp
    2f89:	89 e5                	mov    %esp,%ebp
    2f8b:	83 ec 24             	sub    $0x24,%esp
    2f8e:	8d 45 dc             	lea    -0x24(%ebp),%eax
    2f91:	50                   	push   %eax
    2f92:	68 01 54 00 00       	push   $0x5401
    2f97:	ff 75 08             	pushl  0x8(%ebp)
    2f9a:	e8 11 00 00 00       	call   2fb0 <_ioctl>
    2f9f:	85 c0                	test   %eax,%eax
    2fa1:	7d 05                	jge    2fa8 <_isatty+0x20>
    2fa3:	31 c0                	xor    %eax,%eax
    2fa5:	eb 06                	jmp    2fad <_isatty+0x25>
    2fa7:	00 b8 01 00 00 00    	add    %bh,0x1(%eax)
    2fad:	c9                   	leave  
    2fae:	c3                   	ret    
	...

00002fb0 <_ioctl>:
    2fb0:	53                   	push   %ebx
    2fb1:	b8 36 00 00 00       	mov    $0x36,%eax
    2fb6:	8b 5c 24 08          	mov    0x8(%esp),%ebx
    2fba:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    2fbe:	8b 54 24 10          	mov    0x10(%esp),%edx
    2fc2:	cd 80                	int    $0x80
    2fc4:	85 c0                	test   %eax,%eax
    2fc6:	7d 0c                	jge    2fd4 <_ioctl+0x24>
    2fc8:	f7 d8                	neg    %eax
    2fca:	a3 d8 38 00 00       	mov    %eax,0x38d8
    2fcf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fd4:	5b                   	pop    %ebx
    2fd5:	c3                   	ret    
	...

Disassembly of section .data:

00003000 <_environ>:
    3000:	00 00                	add    %al,(%eax)
	...

00003004 <_g>:
    3004:	0a 00                	or     (%eax),%al
	...

00003008 <_linkage>:
    3008:	84 30                	test   %dh,(%eax)
	...

0000300c <___stdout>:
	...
    301c:	c8 34 00 00          	enter  $0x34,$0x0
    3020:	00 04 00             	add    %al,(%eax,%eax,1)
    3023:	00 12                	add    %dl,(%edx)
    3025:	28 01                	sub    %al,(%ecx)
    3027:	00 ec                	add    %ch,%ah
    3029:	1b 00                	sbb    (%eax),%eax
    302b:	00 f8                	add    %bh,%al
    302d:	1c 00                	sbb    $0x0,%al
    302f:	00 f4                	add    %dh,%ah
    3031:	1b 00                	sbb    (%eax),%eax
    3033:	00 00                	add    %al,(%eax)
    3035:	00 00                	add    %al,(%eax)
	...

00003038 <___lconv>:
    3038:	30 31                	xor    %dh,(%ecx)
    303a:	32 33                	xor    (%ebx),%dh
    303c:	34 35                	xor    $0x35,%al
    303e:	36 37                	ss aaa 
    3040:	38 39                	cmp    %bh,(%ecx)
    3042:	61                   	popa   
    3043:	62 63 64             	bound  %esp,0x64(%ebx)
    3046:	65 66 00           	data16 add %dh,%gs:(%eax)

00003049 <___uconv>:
    3049:	30 31                	xor    %dh,(%ecx)
    304b:	32 33                	xor    (%ebx),%dh
    304d:	34 35                	xor    $0x35,%al
    304f:	36 37                	ss aaa 
    3051:	38 39                	cmp    %bh,(%ecx)
    3053:	41                   	inc    %ecx
    3054:	42                   	inc    %edx
    3055:	43                   	inc    %ebx
    3056:	44                   	inc    %esp
    3057:	45                   	inc    %ebp
    3058:	46                   	inc    %esi
    3059:	00 00                	add    %al,(%eax)
	...

0000305c <___radix>:
    305c:	7c 00                	jl     305e <___radix+0x2>
    305e:	00 00                	add    %al,(%eax)
    3060:	00 00                	add    %al,(%eax)
    3062:	00 00                	add    %al,(%eax)
    3064:	c8 00 00 00          	enter  $0x0,$0x0
    3068:	38 30                	cmp    %dh,(%eax)
    306a:	00 00                	add    %al,(%eax)
    306c:	c8 00 00 00          	enter  $0x0,$0x0
    3070:	49                   	dec    %ecx
    3071:	30 00                	xor    %al,(%eax)
    3073:	00 ac 00 00 00 00 00 	add    %ch,0x0(%eax,%eax,1)
	...

0000307c <___zfill>:
    307c:	30 30                	xor    %dh,(%eax)
    307e:	30 30                	xor    %dh,(%eax)

00003080 <___bfill>:
    3080:	20 20                	and    %ah,(%eax)
    3082:	20 20                	and    %ah,(%eax)

00003084 <___xfpcvt>:
    3084:	00 00                	add    %al,(%eax)
	...

00003088 <_smallpowers>:
    3088:	00 00                	add    %al,(%eax)
    308a:	00 98 af 03 d2 3c    	add    %bl,0x3cd203af(%eax)
    3090:	ce                   	into   
    3091:	87 6c 56 58          	xchg   %ebp,0x58(%esi,%edx,2)
    3095:	9d                   	popf   
    3096:	3b 3b                	cmp    (%ebx),%edi
    3098:	00 00                	add    %al,(%eax)
    309a:	00 80 9b 84 06 3d    	add    %al,0x3d06849b(%eax)
    30a0:	c2 a9 07             	ret    $0x7a9
    30a3:	6c                   	insb   (%dx),%es:(%edi)
    30a4:	ae                   	scas   %es:(%edi),%al
    30a5:	84 6a 3b             	test   %ch,0x3b(%edx)
    30a8:	00 00                	add    %al,(%eax)
    30aa:	00 68 c2             	add    %ch,-0x3e(%eax)
    30ad:	25 3c 3d 2d 43       	and    $0x432d3d3c,%eax
    30b2:	99                   	cltd   
    30b3:	70 a0                	jo     3055 <___uconv+0xc>
    30b5:	5d                   	pop    %ebp
    30b6:	52                   	push   %edx
    30b7:	3b 00                	cmp    (%eax),%eax
    30b9:	00 00                	add    %al,(%eax)
    30bb:	80 99 97 71 3d 7f f2 	sbbb   $0xf2,0x7f3d7197(%ecx)
    30c2:	97                   	xchg   %eax,%edi
    30c3:	11 a1 de b2 3b 00    	adc    %esp,0x3bb2de(%ecx)
    30c9:	00 00                	add    %al,(%eax)
    30cb:	e0 7f                	loopne 314c <_smallpowers+0xc4>
    30cd:	fd                   	std    
    30ce:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    30cf:	3d 1f ef fd 55       	cmp    $0x55fdef1f,%eax
    30d4:	49                   	dec    %ecx
    30d5:	96                   	xchg   %eax,%esi
    30d6:	e7 3b                	out    %eax,$0x3b
    30d8:	00 00                	add    %al,(%eax)
    30da:	00 d8                	add    %bl,%al
    30dc:	df 7c db 3d          	fistpll 0x3d(%ebx,%ebx,8)
    30e0:	e7 6a                	out    %eax,$0x6a
    30e2:	7d ab                	jge    308f <_smallpowers+0x7>
    30e4:	db 7b 1d             	fstpt  0x1d(%ebx)
    30e7:	3c 00                	cmp    $0x0,%al
    30e9:	00 00                	add    %al,(%eax)
    30eb:	e8 0b 2e 11 3e       	call   3e115efb <__end+0x3e11261b>
    30f0:	81 16 73 59 4a 6b    	adcl   $0x6b4a5973,(%esi)
    30f6:	23 3c 00             	and    (%eax,%eax,1),%edi
    30f9:	00 00                	add    %al,(%eax)
    30fb:	e0 8e                	loopne 308b <_smallpowers+0x3>
    30fd:	79 45                	jns    3144 <_smallpowers+0xbc>
    30ff:	3e c2 fd fc          	ds ret $0xfcfd
    3103:	ce                   	into   
    3104:	61                   	popa   
    3105:	84 91 3c 00 00 00    	test   %dl,0x3c(%ecx)
    310b:	98                   	cwtl   
    310c:	f2 d7                	repnz xlat %ds:(%ebx)
    310e:	7a 3e                	jp     314e <_smallpowers+0xc6>
    3110:	33 3d bc 42 7a e5    	xor    0xe57a42bc,%edi
    3116:	c5 3c 00             	lds    (%eax,%eax,1),%edi
    3119:	00 00                	add    %al,(%eax)
    311b:	a0 f7 c6 b0 3e       	mov    0x3eb0c6f7,%al
    3120:	fe                   	(bad)  
    3121:	98                   	cwtl   
    3122:	d6                   	(bad)  
    3123:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
    3124:	b1 bd                	mov    $0xbd,%cl
    3126:	e6 3c                	out    %al,$0x3c
    3128:	00 00                	add    %al,(%eax)
    312a:	00 88 b5 f8 e4 3e    	add    %cl,0x3ee4f8b5(%eax)
    3130:	3e 3f                	ds aas 
    3132:	8c 10                	mov    %ss,(%eax)
    3134:	1e                   	push   %ds
    3135:	6d                   	insl   (%dx),%es:(%edi)
    3136:	1c 3d                	sbb    $0x3d,%al
    3138:	00 00                	add    %al,(%eax)
    313a:	00 e8                	add    %ch,%al
    313c:	e2 36                	loop   3174 <_smallpowers+0xec>
    313e:	1a 3f                	sbb    (%edi),%bh
    3140:	c3                   	ret    
    3141:	d3 2b                	shrl   %cl,(%ebx)
    3143:	65 19 e2             	gs sbb %esp,%edx
    3146:	68 3d 00 00 00       	push   $0x3d
    314b:	d0 4d 62             	rorb   0x62(%ebp)
    314e:	50                   	push   %eax
    314f:	3f                   	aas    
    3150:	5a                   	pop    %edx
    3151:	64 3b df             	fs cmp %edi,%ebx
    3154:	4f                   	dec    %edi
    3155:	8d a7 3d 00 00 00    	lea    0x3d(%edi),%esp
    315b:	40                   	inc    %eax
    315c:	e1 7a                	loope  31d8 <_smallpowers+0x150>
    315e:	84 3f                	test   %bh,(%edi)
    3160:	b8 1e 85 eb 51       	mov    $0x51eb851e,%eax
    3165:	b8 ee 3d 00 00       	mov    $0x3dee,%eax
    316a:	00 98 99 99 b9 3f    	add    %bl,0x3fb99999(%eax)
    3170:	9a 99 99 99 99 99 f9 	lcall  $0xf999,$0x99999999
    3177:	3d 00 00 00 00       	cmp    $0x0,%eax
    317c:	00 00                	add    %al,(%eax)
    317e:	f0 3f                	lock aas 
    3180:	00 00                	add    %al,(%eax)
    3182:	00 00                	add    %al,(%eax)
    3184:	00 00                	add    %al,(%eax)
    3186:	24 40                	and    $0x40,%al
    3188:	00 00                	add    %al,(%eax)
    318a:	00 00                	add    %al,(%eax)
    318c:	00 00                	add    %al,(%eax)
    318e:	59                   	pop    %ecx
    318f:	40                   	inc    %eax
    3190:	00 00                	add    %al,(%eax)
    3192:	00 00                	add    %al,(%eax)
    3194:	00 40 8f             	add    %al,-0x71(%eax)
    3197:	40                   	inc    %eax
    3198:	00 00                	add    %al,(%eax)
    319a:	00 00                	add    %al,(%eax)
    319c:	00 88 c3 40 00 00    	add    %cl,0x40c3(%eax)
    31a2:	00 00                	add    %al,(%eax)
    31a4:	00 6a f8             	add    %ch,-0x8(%edx)
    31a7:	40                   	inc    %eax
    31a8:	00 00                	add    %al,(%eax)
    31aa:	00 00                	add    %al,(%eax)
    31ac:	80 84 2e 41 00 00 00 	addb   $0x0,0x41(%esi,%ebp,1)
    31b3:	00 
    31b4:	d0 12                	rclb   (%edx)
    31b6:	63 41 00             	arpl   %ax,0x0(%ecx)
    31b9:	00 00                	add    %al,(%eax)
    31bb:	00 84 d7 97 41 00 00 	add    %al,0x4197(%edi,%edx,8)
    31c2:	00 00                	add    %al,(%eax)
    31c4:	65 cd cd             	gs int $0xcd
    31c7:	41                   	inc    %ecx
    31c8:	00 00                	add    %al,(%eax)
    31ca:	00 20                	add    %ah,(%eax)
    31cc:	5f                   	pop    %edi
    31cd:	a0 02 42 00 00       	mov    0x4202,%al
    31d2:	00 e8                	add    %ch,%al
    31d4:	76 48                	jbe    321e <_largepowers+0x26>
    31d6:	37                   	aaa    
    31d7:	42                   	inc    %edx
    31d8:	00 00                	add    %al,(%eax)
    31da:	00 a2 94 1a 6d 42    	add    %ah,0x426d1a94(%edx)
    31e0:	00 00                	add    %al,(%eax)
    31e2:	40                   	inc    %eax
    31e3:	e5 9c                	in     $0x9c,%eax
    31e5:	30 a2 42 00 00 90    	xor    %ah,-0x6fffffbe(%edx)
    31eb:	1e                   	push   %ds
    31ec:	c4 bc d6 42 00 00 34 	les    0x34000042(%esi,%edx,8),%edi
    31f3:	26 f5                	es cmc 
    31f5:	6b 0c 43           	imul   $0x0,(%ebx,%eax,2),%ecx

000031f8 <_largepowers>:
    31f8:	00 00                	add    %al,(%eax)
    31fa:	00 98 3b 8e 21 04    	add    %bl,0x4218e3b(%eax)
    3200:	f1                   	icebp  
    3201:	9f                   	lahf   
    3202:	25 49 0b ba 79       	and    $0x79ba0b49,%eax
    3207:	02 00                	add    (%eax),%al
    3209:	00 00                	add    %al,(%eax)
    320b:	c8 99 7d 73          	enter  $0x7d99,$0x73
    320f:	07                   	pop    %es
    3210:	72 a7                	jb     31b9 <_smallpowers+0x131>
    3212:	bb 62 b5 41 d1       	mov    $0xd141b562,%ebx
    3217:	05 00 00 00 d0       	add    $0xd0000000,%eax
    321c:	91                   	xchg   %eax,%ecx
    321d:	a3 c5 0a 19 6d       	mov    %eax,0x6d190ac5
    3222:	b3 1d                	mov    $0x1d,%bl
    3224:	72 af                	jb     31d5 <_smallpowers+0x14d>
    3226:	25 09 00 00 00       	and    $0x9,%eax
    322b:	60                   	pusha  
    322c:	28 06                	sub    %al,(%esi)
    322e:	18 0e                	sbb    %cl,(%esi)
    3230:	49                   	dec    %ecx
    3231:	fd                   	std    
    3232:	9c                   	pushf  
    3233:	0c bd                	or     $0xbd,%al
    3235:	b1 72                	mov    $0x72,%cl
    3237:	0c 00                	or     $0x0,%al
    3239:	00 00                	add    %al,(%eax)
    323b:	f8                   	clc    
    323c:	0b ac 6a 11 3d f6 ad 	or     -0x5209c2ef(%edx,%ebp,2),%ebp
    3243:	c3                   	ret    
    3244:	65 9e                	gs sahf 
    3246:	ab                   	stos   %eax,%es:(%edi)
    3247:	0f 00 00             	sldt   (%eax)
    324a:	00 98 a7 9c bd 14    	add    %bl,0x14bd9ca7(%eax)
    3250:	7c d2                	jl     3224 <_largepowers+0x2c>
    3252:	5e                   	pop    %esi
    3253:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    3254:	18 25 16 13 00 00    	sbb    %ah,0x1316
    325a:	00 d0                	add    %dl,%al
    325c:	1b 70 10             	sbb    0x10(%eax),%esi
    325f:	18 24 21             	sbb    %ah,(%ecx,%eiz,1)
    3262:	30 5e d2             	xor    %bl,-0x2e(%esi)
    3265:	9e                   	sahf   
    3266:	74 16                	je     327e <_largepowers+0x86>
    3268:	00 00                	add    %al,(%eax)
    326a:	00 68 f0             	add    %ch,-0x10(%eax)
    326d:	3f                   	aas    
    326e:	62 1b                	bound  %ebx,(%ebx)
    3270:	b2 3d                	mov    $0x3d,%dl
    3272:	03 e6                	add    %esi,%esp
    3274:	11 aa cb 19 00 00    	adc    %ebp,0x19cb(%edx)
    327a:	00 f8                	add    %bh,%al
    327c:	e4 42                	in     $0x42,%al
    327e:	b4 1e                	mov    $0x1e,%ah
    3280:	ae                   	scas   %es:(%edi),%al
    3281:	b8 2f 00 cb 38       	mov    $0x38cb002f,%eax
    3286:	0b 1d 00 00 00 10    	or     0x10000000,%ebx
    328c:	9c                   	pushf  
    328d:	7e 06                	jle    3295 <_largepowers+0x9d>
    328f:	22 ed                	and    %ch,%ch
    3291:	59                   	pop    %ecx
    3292:	93                   	xchg   %eax,%ebx
    3293:	a0 73 db 53 20       	mov    0x2053db73,%al
    3298:	00 00                	add    %al,(%eax)
    329a:	00 48 57             	add    %cl,0x57(%eax)
    329d:	f9                   	stc    
    329e:	58                   	pop    %eax
    329f:	25 32 7f 64 c1       	and    $0xc1647f32,%eax
    32a4:	29 3e                	sub    %edi,(%esi)
    32a6:	b7 23                	mov    $0x23,%bh
    32a8:	00 00                	add    %al,(%eax)
    32aa:	00 c8                	add    %cl,%al
    32ac:	08 ba ab 28 3e 56    	or     %bh,0x563e28ab(%edx)
    32b2:	50                   	push   %eax
    32b3:	72 5e                	jb     3313 <_largepowers+0x11b>
    32b5:	32 0e                	xor    (%esi),%cl
    32b7:	27                   	daa    
    32b8:	00 00                	add    %al,(%eax)
    32ba:	00 b0 66 c8 fe 2b    	add    %dh,0x2bfec866(%eax)
    32c0:	a3 a6 be e9 32       	mov    %eax,0x32e9bea6
    32c5:	78 5e                	js     3325 <_largepowers+0x12d>
    32c7:	2a 00                	sub    (%eax),%al
    32c9:	00 00                	add    %al,(%eax)
    32cb:	58                   	pop    %eax
    32cc:	80 16 51             	adcb   $0x51,(%esi)
    32cf:	2f                   	das    
    32d0:	ee                   	out    %al,(%dx)
    32d1:	88 cd                	mov    %cl,%ch
    32d3:	a9 ba fe bb 2d       	test   $0x2dbbfeba,%eax
    32d8:	00 00                	add    %al,(%eax)
    32da:	00 10                	add    %dl,(%eax)
    32dc:	ac                   	lods   %ds:(%esi),%al
    32dd:	f8                   	clc    
    32de:	a2 32 67 ee d2       	mov    %al,0xd2ee6732
    32e3:	8c 84 35 0d 31 00 00 	mov    %es,0x310d(%ebp,%esi,1)
    32ea:	00 40 fd             	add    %al,-0x3(%eax)
    32ed:	0f f5 35 92 9f d2 f4 	pmaddwd 0xf4d29f92,%mm6
    32f4:	9c                   	pushf  
    32f5:	d2 53 34             	rclb   %cl,0x34(%ebx)
    32f8:	00 00                	add    %al,(%eax)
    32fa:	00 88 4f 62 47 39    	add    %cl,0x3947624f(%eax)
    3300:	61                   	popa   
    3301:	55                   	push   %ebp
    3302:	59                   	pop    %ecx
    3303:	c1 7e b1 93          	sarl   $0x93,-0x4f(%esi)
    3307:	37                   	aaa    
    3308:	00 00                	add    %al,(%eax)
    330a:	00 d0                	add    %dl,%al
    330c:	23 f6                	and    %esi,%esi
    330e:	99                   	cltd   
    330f:	3c ef                	cmp    $0xef,%al
    3311:	33 5d ca             	xor    -0x36(%ebp),%ebx
    3314:	9c                   	pushf  
    3315:	a2 f6 3a 00 00       	mov    %al,0x3af6
    331a:	00 90 b2 d2 ec 3f    	add    %dl,0x3fecd2b2(%eax)
    3320:	17                   	pop    %ss
    3321:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
    3322:	ad                   	lods   %ds:(%esi),%eax
    3323:	f0 26 62 4f 3e       	lock bound %ecx,%es:0x3e(%edi)
    3328:	00 00                	add    %al,(%eax)
    332a:	00 30                	add    %dh,(%eax)
    332c:	79 c3                	jns    32f1 <_largepowers+0xf9>
    332e:	41                   	inc    %ecx
    332f:	43                   	inc    %ebx
    3330:	00 00                	add    %al,(%eax)
    3332:	00 00                	add    %al,(%eax)
    3334:	00 82 af 41 00 00    	add    %al,0x41af(%edx)
    333a:	00 b0 b5 b8 93 46    	add    %dh,0x4693b8b5(%eax)
    3340:	10 f8                	adc    %bh,%al
    3342:	ce                   	into   
    3343:	5a                   	pop    %edx
    3344:	b8 15 f4 44 00       	mov    $0x44f415,%eax
    3349:	00 00                	add    %al,(%eax)
    334b:	a0 31 e5 e5 49       	mov    0x49e5e531,%al
    3350:	c3                   	ret    
    3351:	59                   	pop    %ecx
    3352:	5a                   	pop    %edx
    3353:	57                   	push   %edi
    3354:	0e                   	push   %cs
    3355:	39 14 48             	cmp    %edx,(%eax,%ecx,2)
    3358:	00 00                	add    %al,(%eax)
    335a:	00 e8                	add    %ch,%al
    335c:	03 4f 38             	add    0x38(%edi),%ecx
    335f:	4d                   	dec    %ebp
    3360:	7f 79                	jg     33db <_largepowers+0x1e3>
    3362:	aa                   	stos   %al,%es:(%edi)
    3363:	4d                   	dec    %ebp
    3364:	9f                   	lahf   
    3365:	ff 73 4b             	pushl  0x4b(%ebx)
    3368:	00 00                	add    %al,(%eax)
    336a:	00 50 ef             	add    %dl,-0x11(%eax)
    336d:	fc                   	cld    
    336e:	8a 50 67             	mov    0x67(%eax),%dl
    3371:	b8 f7 ef b5 0f       	mov    $0xfb5eff7,%eax
    3376:	cf                   	iret   
    3377:	4e                   	dec    %esi
    3378:	00 00                	add    %al,(%eax)
    337a:	00 60 75             	add    %ah,0x75(%eax)
    337d:	f6 dd                	neg    %ch
    337f:	53                   	push   %ebx
    3380:	d0 c5                	rol    %ch
    3382:	a2 14 9b c5 26       	mov    %al,0x26c59b14
    3387:	52                   	push   %edx
    3388:	00 00                	add    %al,(%eax)
    338a:	00 b8 f5 a1 30 57    	add    %bh,0x5730a1f5(%eax)
    3390:	5a                   	pop    %edx
    3391:	7c c0                	jl     3353 <_largepowers+0x15b>
    3393:	53                   	push   %ebx
    3394:	66 24 33             	data16 and $0x33,%al
    3397:	55                   	push   %ebp
    3398:	00 00                	add    %al,(%eax)
    339a:	00 f8                	add    %bh,%al
    339c:	48                   	dec    %eax
    339d:	77 82                	ja     3321 <_largepowers+0x129>
    339f:	5a                   	pop    %edx
    33a0:	de 8c bf 19 d3 01 c3 	fimuls -0x3cfe2ce7(%edi,%edi,4)
    33a7:	58                   	pop    %eax
    33a8:	00 00                	add    %al,(%eax)
    33aa:	00 38                	add    %bh,(%eax)
    33ac:	57                   	push   %edi
    33ad:	80 d4 5d             	adc    $0x5d,%ah
    33b0:	59                   	pop    %ecx
    33b1:	7c 9d                	jl     3350 <_largepowers+0x158>
    33b3:	9b                   	fwait
    33b4:	4e                   	dec    %esi
    33b5:	a3 06 5c 00 00       	mov    %eax,0x5c06
    33ba:	00 20                	add    %ah,(%eax)
    33bc:	d4 c2                	aam    $0xc2
    33be:	26 61                	es popa 
    33c0:	be 2b d5 0b f3       	mov    $0xf30bd52b,%esi
    33c5:	bf 85 5f 00 00       	mov    $0x5f85,%edi
    33ca:	00 50 14             	add    %dl,0x14(%eax)
    33cd:	45                   	inc    %ebp
    33ce:	79 64                	jns    3434 <_largepowers+0x23c>
    33d0:	7c 7d                	jl     344f <_largepowers+0x257>
    33d2:	93                   	xchg   %eax,%ebx
    33d3:	bf 9b 85 c1 62       	mov    $0x62c1859b,%edi
    33d8:	00 00                	add    %al,(%eax)
    33da:	00 f0                	add    %dh,%al
    33dc:	1e                   	push   %ds
    33dd:	0e                   	push   %cs
    33de:	cc                   	int3   
    33df:	67 78 0b             	addr16 js 33ed <_largepowers+0x1f5>
    33e2:	d5 aa                	aad    $0xaa
    33e4:	4e                   	dec    %esi
    33e5:	72 0a                	jb     33f1 <_largepowers+0x1f9>
    33e7:	66 00 00             	data16 add %al,(%eax)
    33ea:	00 80 c1 25 1f 6b    	add    %al,0x6b1f25c1(%eax)
    33f0:	b8 d3 a2 30 c1       	mov    $0xc130a2d3,%eax
    33f5:	9b                   	fwait
    33f6:	7a 69                	jp     3461 <___fpow10+0x1>
    33f8:	00 00                	add    %al,(%eax)
    33fa:	00 d8                	add    %bl,%al
    33fc:	52                   	push   %edx
    33fd:	4a                   	dec    %edx
    33fe:	71 6e                	jno    346e <___ipow10+0xa>
    3400:	5f                   	pop    %edi
    3401:	c1 97 64 9e f1 df 6c 	rcll   $0x6c,-0x200e619c(%edi)
    3408:	00 00                	add    %al,(%eax)
    340a:	00 d8                	add    %bl,%al
    340c:	34 32                	xor    $0x32,%al
    340e:	c3                   	ret    
    340f:	71 65                	jno    3476 <___ipow10+0x12>
    3411:	d6                   	(bad)  
    3412:	b2 8b                	mov    $0x8b,%dl
    3414:	5f                   	pop    %edi
    3415:	eb 29                	jmp    3440 <_largepowers+0x248>
    3417:	70 00                	jo     3419 <_largepowers+0x221>
    3419:	00 00                	add    %al,(%eax)
    341b:	78 dd                	js     33fa <_largepowers+0x202>
    341d:	4f                   	dec    %edi
    341e:	15 75 de ee 46       	adc    $0x46eede75,%eax
    3423:	ef                   	out    %eax,(%dx)
    3424:	fc                   	cld    
    3425:	ce                   	into   
    3426:	7d 73                	jge    349b <___PlusInfinity+0x3>
    3428:	00 00                	add    %al,(%eax)
    342a:	00 28                	add    %ch,(%eax)
    342c:	3a a9 67 78 5b 96    	cmp    -0x69a48799(%ecx),%ch
    3432:	04 79                	add    $0x79,%al
    3434:	3b 4f a5             	cmp    -0x5b(%edi),%ecx
    3437:	76 00                	jbe    3439 <_largepowers+0x241>
    3439:	00 00                	add    %al,(%eax)
    343b:	80 df 44             	sbb    $0x44,%bh
    343e:	ba 7b 83 73 8c       	mov    $0x8c73837b,%edx
    3443:	2f                   	das    
    3444:	6a 5c                	push   $0x5c
    3446:	09 7a 00             	or     %edi,0x0(%edx)
    3449:	00 00                	add    %al,(%eax)
    344b:	e0 1b                	loopne 3468 <___ipow10+0x4>
    344d:	2a 0d 7f e3 a3 fe    	sub    0xfea3e37f,%cl
    3453:	41                   	inc    %ecx
    3454:	3e 12 60 7d          	adc    %ds:0x7d(%eax),%ah

00003458 <___mpow10>:
    3458:	c1 fe ff             	sar    $0xff,%esi
    345b:	ff               	pushl  (%ecx,%eax,1)

0000345c <___Mpow10>:
    345c:	34 01                	xor    $0x1,%al
	...

00003460 <___fpow10>:
    3460:	78 31                	js     3493 <___Zero+0x3>
	...

00003464 <___ipow10>:
    3464:	01 00                	add    %eax,(%eax)
    3466:	00 00                	add    %al,(%eax)
    3468:	0a 00                	or     (%eax),%al
    346a:	00 00                	add    %al,(%eax)
    346c:	64 00 00             	add    %al,%fs:(%eax)
    346f:	00 e8                	add    %ch,%al
    3471:	03 00                	add    (%eax),%eax
    3473:	00 10                	add    %dl,(%eax)
    3475:	27                   	daa    
    3476:	00 00                	add    %al,(%eax)
    3478:	a0 86 01 00 40       	mov    0x40000186,%al
    347d:	42                   	inc    %edx
    347e:	0f 00 80 96 98 00 00 	sldt   0x9896(%eax)
    3485:	e1 f5                	loope  347c <___ipow10+0x18>
    3487:	05 00 ca 9a 3b       	add    $0x3b9aca00,%eax

0000348c <___Mipow10>:
    348c:	09 00                	or     %eax,(%eax)
	...

00003490 <___Zero>:
	...

00003498 <___PlusInfinity>:
    3498:	00 00                	add    %al,(%eax)
    349a:	00 00                	add    %al,(%eax)
    349c:	00 00                	add    %al,(%eax)
    349e:	f0 7f              	lock jg 34a1 <___MinusInfinity+0x1>

000034a0 <___MinusInfinity>:
    34a0:	00 00                	add    %al,(%eax)
    34a2:	00 00                	add    %al,(%eax)
    34a4:	00 00                	add    %al,(%eax)
    34a6:	f0 ff              	lock incl (%eax)

000034a8 <___One>:
    34a8:	00 00                	add    %al,(%eax)
    34aa:	00 00                	add    %al,(%eax)
    34ac:	00 00                	add    %al,(%eax)
    34ae:	f0 3f                	lock aas 

000034b0 <___MinusOne>:
    34b0:	00 00                	add    %al,(%eax)
    34b2:	00 00                	add    %al,(%eax)
    34b4:	00 00                	add    %al,(%eax)
    34b6:	f0 bf        	lock mov $0x0,%edi

000034b8 <___SZero>:
    34b8:	00 00                	add    %al,(%eax)
	...

000034bc <___SPlusInfinity>:
    34bc:	00 00                	add    %al,(%eax)
    34be:	80 7f            	cmpb   $0x0,0x0(%edi)

000034c0 <___SMinusInfinity>:
    34c0:	00 00                	add    %al,(%eax)
    34c2:	80 ff 00             	cmp    $0x0,%bh
    34c5:	00 00                	add    %al,(%eax)
	...

000034c8 <__edata>:
	...

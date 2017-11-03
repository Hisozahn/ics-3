                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Nov 03 15:46:13 2017
                              5 ;--------------------------------------------------------
                              6 	.module fifo
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _initFifo
                             13 	.globl _pullElement
                             14 	.globl _pushElement
                             15 	.globl _isEmpty
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 	.area RSEG    (ABS,DATA)
   0000                      20 	.org 0x0000
                             21 ;--------------------------------------------------------
                             22 ; special function bits
                             23 ;--------------------------------------------------------
                             24 	.area RSEG    (ABS,DATA)
   0000                      25 	.org 0x0000
                             26 ;--------------------------------------------------------
                             27 ; overlayable register banks
                             28 ;--------------------------------------------------------
                             29 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      30 	.ds 8
                             31 ;--------------------------------------------------------
                             32 ; internal ram data
                             33 ;--------------------------------------------------------
                             34 	.area DSEG    (DATA)
                             35 ;--------------------------------------------------------
                             36 ; overlayable items in internal ram 
                             37 ;--------------------------------------------------------
                             38 ;--------------------------------------------------------
                             39 ; indirectly addressable internal ram data
                             40 ;--------------------------------------------------------
                             41 	.area ISEG    (DATA)
                             42 ;--------------------------------------------------------
                             43 ; absolute internal ram data
                             44 ;--------------------------------------------------------
                             45 	.area IABS    (ABS,DATA)
                             46 	.area IABS    (ABS,DATA)
                             47 ;--------------------------------------------------------
                             48 ; bit data
                             49 ;--------------------------------------------------------
                             50 	.area BSEG    (BIT)
                             51 ;--------------------------------------------------------
                             52 ; paged external ram data
                             53 ;--------------------------------------------------------
                             54 	.area PSEG    (PAG,XDATA)
                             55 ;--------------------------------------------------------
                             56 ; external ram data
                             57 ;--------------------------------------------------------
                             58 	.area XSEG    (XDATA)
                             59 ;--------------------------------------------------------
                             60 ; absolute external ram data
                             61 ;--------------------------------------------------------
                             62 	.area XABS    (ABS,XDATA)
                             63 ;--------------------------------------------------------
                             64 ; external initialized ram data
                             65 ;--------------------------------------------------------
                             66 	.area XISEG   (XDATA)
                             67 	.area HOME    (CODE)
                             68 	.area GSINIT0 (CODE)
                             69 	.area GSINIT1 (CODE)
                             70 	.area GSINIT2 (CODE)
                             71 	.area GSINIT3 (CODE)
                             72 	.area GSINIT4 (CODE)
                             73 	.area GSINIT5 (CODE)
                             74 	.area GSINIT  (CODE)
                             75 	.area GSFINAL (CODE)
                             76 	.area CSEG    (CODE)
                             77 ;--------------------------------------------------------
                             78 ; global & static initialisations
                             79 ;--------------------------------------------------------
                             80 	.area HOME    (CODE)
                             81 	.area GSINIT  (CODE)
                             82 	.area GSFINAL (CODE)
                             83 	.area GSINIT  (CODE)
                             84 ;--------------------------------------------------------
                             85 ; Home
                             86 ;--------------------------------------------------------
                             87 	.area HOME    (CODE)
                             88 	.area HOME    (CODE)
                             89 ;--------------------------------------------------------
                             90 ; code
                             91 ;--------------------------------------------------------
                             92 	.area CSEG    (CODE)
                             93 ;------------------------------------------------------------
                             94 ;Allocation info for local variables in function 'initFifo'
                             95 ;------------------------------------------------------------
                             96 ;pFifo                     Allocated to registers r5 r6 r7 
                             97 ;------------------------------------------------------------
                             98 ;	SRC/fifo.c:3: void initFifo( fifo_t* pFifo ) {
                             99 ;	-----------------------------------------
                            100 ;	 function initFifo
                            101 ;	-----------------------------------------
   2380                     102 _initFifo:
                    0007    103 	ar7 = 0x07
                    0006    104 	ar6 = 0x06
                    0005    105 	ar5 = 0x05
                    0004    106 	ar4 = 0x04
                    0003    107 	ar3 = 0x03
                    0002    108 	ar2 = 0x02
                    0001    109 	ar1 = 0x01
                    0000    110 	ar0 = 0x00
                            111 ;	SRC/fifo.c:4: pFifo->size = 0;
   2380 AD 82               112 	mov	r5,dpl
   2382 AE 83               113 	mov	r6,dph
   2384 AF F0               114 	mov	r7,b
   2386 E4                  115 	clr	a
   2387 12 25 04            116 	lcall	__gptrput
                            117 ;	SRC/fifo.c:5: pFifo->head = 0;
   238A 0D                  118 	inc	r5
   238B BD 00 01            119 	cjne	r5,#0x00,00103$
   238E 0E                  120 	inc	r6
   238F                     121 00103$:
   238F 8D 82               122 	mov	dpl,r5
   2391 8E 83               123 	mov	dph,r6
   2393 8F F0               124 	mov	b,r7
   2395 E4                  125 	clr	a
   2396 02 25 04            126 	ljmp	__gptrput
                            127 ;------------------------------------------------------------
                            128 ;Allocation info for local variables in function 'pullElement'
                            129 ;------------------------------------------------------------
                            130 ;pFifo                     Allocated to registers r5 r6 r7 
                            131 ;element                   Allocated to registers r4 
                            132 ;sloc0                     Allocated to stack - _bp +1
                            133 ;sloc1                     Allocated to stack - _bp +4
                            134 ;------------------------------------------------------------
                            135 ;	SRC/fifo.c:8: unsigned char pullElement( fifo_t* pFifo ) {
                            136 ;	-----------------------------------------
                            137 ;	 function pullElement
                            138 ;	-----------------------------------------
   2399                     139 _pullElement:
   2399 C0 09               140 	push	_bp
   239B E5 81               141 	mov	a,sp
   239D F5 09               142 	mov	_bp,a
   239F 24 04               143 	add	a,#0x04
   23A1 F5 81               144 	mov	sp,a
   23A3 AD 82               145 	mov	r5,dpl
   23A5 AE 83               146 	mov	r6,dph
   23A7 AF F0               147 	mov	r7,b
                            148 ;	SRC/fifo.c:9: unsigned char element = pFifo->elems[pFifo->head];
   23A9 74 02               149 	mov	a,#0x02
   23AB 2D                  150 	add	a,r5
   23AC FA                  151 	mov	r2,a
   23AD E4                  152 	clr	a
   23AE 3E                  153 	addc	a,r6
   23AF FB                  154 	mov	r3,a
   23B0 8F 04               155 	mov	ar4,r7
   23B2 A8 09               156 	mov	r0,_bp
   23B4 08                  157 	inc	r0
   23B5 74 01               158 	mov	a,#0x01
   23B7 2D                  159 	add	a,r5
   23B8 F6                  160 	mov	@r0,a
   23B9 E4                  161 	clr	a
   23BA 3E                  162 	addc	a,r6
   23BB 08                  163 	inc	r0
   23BC F6                  164 	mov	@r0,a
   23BD 08                  165 	inc	r0
   23BE A6 07               166 	mov	@r0,ar7
   23C0 A8 09               167 	mov	r0,_bp
   23C2 08                  168 	inc	r0
   23C3 86 82               169 	mov	dpl,@r0
   23C5 08                  170 	inc	r0
   23C6 86 83               171 	mov	dph,@r0
   23C8 08                  172 	inc	r0
   23C9 86 F0               173 	mov	b,@r0
   23CB E5 09               174 	mov	a,_bp
   23CD 24 04               175 	add	a,#0x04
   23CF F9                  176 	mov	r1,a
   23D0 12 25 1D            177 	lcall	__gptrget
   23D3 F7                  178 	mov	@r1,a
   23D4 E5 09               179 	mov	a,_bp
   23D6 24 04               180 	add	a,#0x04
   23D8 F8                  181 	mov	r0,a
   23D9 E6                  182 	mov	a,@r0
   23DA 2A                  183 	add	a,r2
   23DB FA                  184 	mov	r2,a
   23DC E4                  185 	clr	a
   23DD 3B                  186 	addc	a,r3
   23DE FB                  187 	mov	r3,a
   23DF 8A 82               188 	mov	dpl,r2
   23E1 8B 83               189 	mov	dph,r3
   23E3 8C F0               190 	mov	b,r4
   23E5 12 25 1D            191 	lcall	__gptrget
   23E8 FC                  192 	mov	r4,a
                            193 ;	SRC/fifo.c:10: if (pFifo->size == 0) {
   23E9 8D 82               194 	mov	dpl,r5
   23EB 8E 83               195 	mov	dph,r6
   23ED 8F F0               196 	mov	b,r7
   23EF 12 25 1D            197 	lcall	__gptrget
                            198 ;	SRC/fifo.c:11: return 0;
   23F2 70 04               199 	jnz	00102$
   23F4 F5 82               200 	mov	dpl,a
   23F6 80 54               201 	sjmp	00103$
   23F8                     202 00102$:
                            203 ;	SRC/fifo.c:13: pFifo->head = (pFifo->head + 1) % (FIFO_MAX_SIZE - 1);
   23F8 E5 09               204 	mov	a,_bp
   23FA 24 04               205 	add	a,#0x04
   23FC F8                  206 	mov	r0,a
   23FD 86 02               207 	mov	ar2,@r0
   23FF 7B 00               208 	mov	r3,#0x00
   2401 8A 82               209 	mov	dpl,r2
   2403 8B 83               210 	mov	dph,r3
   2405 A3                  211 	inc	dptr
   2406 C0 07               212 	push	ar7
   2408 C0 06               213 	push	ar6
   240A C0 05               214 	push	ar5
   240C C0 04               215 	push	ar4
   240E 74 7D               216 	mov	a,#0x7D
   2410 C0 E0               217 	push	acc
   2412 E4                  218 	clr	a
   2413 C0 E0               219 	push	acc
   2415 12 25 39            220 	lcall	__modsint
   2418 AA 82               221 	mov	r2,dpl
   241A 15 81               222 	dec	sp
   241C 15 81               223 	dec	sp
   241E D0 04               224 	pop	ar4
   2420 D0 05               225 	pop	ar5
   2422 D0 06               226 	pop	ar6
   2424 D0 07               227 	pop	ar7
   2426 A8 09               228 	mov	r0,_bp
   2428 08                  229 	inc	r0
   2429 86 82               230 	mov	dpl,@r0
   242B 08                  231 	inc	r0
   242C 86 83               232 	mov	dph,@r0
   242E 08                  233 	inc	r0
   242F 86 F0               234 	mov	b,@r0
   2431 EA                  235 	mov	a,r2
   2432 12 25 04            236 	lcall	__gptrput
                            237 ;	SRC/fifo.c:14: pFifo->size--;
   2435 8D 82               238 	mov	dpl,r5
   2437 8E 83               239 	mov	dph,r6
   2439 8F F0               240 	mov	b,r7
   243B 12 25 1D            241 	lcall	__gptrget
   243E FB                  242 	mov	r3,a
   243F 1B                  243 	dec	r3
   2440 8D 82               244 	mov	dpl,r5
   2442 8E 83               245 	mov	dph,r6
   2444 8F F0               246 	mov	b,r7
   2446 EB                  247 	mov	a,r3
   2447 12 25 04            248 	lcall	__gptrput
                            249 ;	SRC/fifo.c:15: return element;
   244A 8C 82               250 	mov	dpl,r4
   244C                     251 00103$:
   244C 85 09 81            252 	mov	sp,_bp
   244F D0 09               253 	pop	_bp
   2451 22                  254 	ret
                            255 ;------------------------------------------------------------
                            256 ;Allocation info for local variables in function 'getTail'
                            257 ;------------------------------------------------------------
                            258 ;pFifo                     Allocated to registers r5 r6 r7 
                            259 ;------------------------------------------------------------
                            260 ;	SRC/fifo.c:18: static unsigned char getTail( const fifo_t* pFifo ) {
                            261 ;	-----------------------------------------
                            262 ;	 function getTail
                            263 ;	-----------------------------------------
   2452                     264 _getTail:
   2452 AD 82               265 	mov	r5,dpl
   2454 AE 83               266 	mov	r6,dph
   2456 AF F0               267 	mov	r7,b
                            268 ;	SRC/fifo.c:19: return (pFifo->head + pFifo->size) % (FIFO_MAX_SIZE - 1);
   2458 74 01               269 	mov	a,#0x01
   245A 2D                  270 	add	a,r5
   245B FA                  271 	mov	r2,a
   245C E4                  272 	clr	a
   245D 3E                  273 	addc	a,r6
   245E FB                  274 	mov	r3,a
   245F 8F 04               275 	mov	ar4,r7
   2461 8A 82               276 	mov	dpl,r2
   2463 8B 83               277 	mov	dph,r3
   2465 8C F0               278 	mov	b,r4
   2467 12 25 1D            279 	lcall	__gptrget
   246A FA                  280 	mov	r2,a
   246B 7C 00               281 	mov	r4,#0x00
   246D 8D 82               282 	mov	dpl,r5
   246F 8E 83               283 	mov	dph,r6
   2471 8F F0               284 	mov	b,r7
   2473 12 25 1D            285 	lcall	__gptrget
   2476 7F 00               286 	mov	r7,#0x00
   2478 2A                  287 	add	a,r2
   2479 F5 82               288 	mov	dpl,a
   247B EF                  289 	mov	a,r7
   247C 3C                  290 	addc	a,r4
   247D F5 83               291 	mov	dph,a
   247F 74 7D               292 	mov	a,#0x7D
   2481 C0 E0               293 	push	acc
   2483 E4                  294 	clr	a
   2484 C0 E0               295 	push	acc
   2486 12 25 39            296 	lcall	__modsint
   2489 AE 82               297 	mov	r6,dpl
   248B 15 81               298 	dec	sp
   248D 15 81               299 	dec	sp
   248F 8E 82               300 	mov	dpl,r6
   2491 22                  301 	ret
                            302 ;------------------------------------------------------------
                            303 ;Allocation info for local variables in function 'pushElement'
                            304 ;------------------------------------------------------------
                            305 ;element                   Allocated to stack - _bp -3
                            306 ;pFifo                     Allocated to registers r5 r6 r7 
                            307 ;tail                      Allocated to stack - _bp +1
                            308 ;------------------------------------------------------------
                            309 ;	SRC/fifo.c:22: void pushElement( fifo_t* pFifo, unsigned char element ) {
                            310 ;	-----------------------------------------
                            311 ;	 function pushElement
                            312 ;	-----------------------------------------
   2492                     313 _pushElement:
   2492 C0 09               314 	push	_bp
   2494 85 81 09            315 	mov	_bp,sp
   2497 05 81               316 	inc	sp
                            317 ;	SRC/fifo.c:23: unsigned char tail = getTail(pFifo);
   2499 AD 82               318 	mov	r5,dpl
   249B AE 83               319 	mov	r6,dph
   249D AF F0               320 	mov	r7,b
   249F C0 07               321 	push	ar7
   24A1 C0 06               322 	push	ar6
   24A3 C0 05               323 	push	ar5
   24A5 12 24 52            324 	lcall	_getTail
   24A8 A8 09               325 	mov	r0,_bp
   24AA 08                  326 	inc	r0
   24AB A6 82               327 	mov	@r0,dpl
   24AD D0 05               328 	pop	ar5
   24AF D0 06               329 	pop	ar6
   24B1 D0 07               330 	pop	ar7
                            331 ;	SRC/fifo.c:24: pFifo->elems[tail] = element;
   24B3 74 02               332 	mov	a,#0x02
   24B5 2D                  333 	add	a,r5
   24B6 FA                  334 	mov	r2,a
   24B7 E4                  335 	clr	a
   24B8 3E                  336 	addc	a,r6
   24B9 FB                  337 	mov	r3,a
   24BA 8F 04               338 	mov	ar4,r7
   24BC A8 09               339 	mov	r0,_bp
   24BE 08                  340 	inc	r0
   24BF E6                  341 	mov	a,@r0
   24C0 2A                  342 	add	a,r2
   24C1 FA                  343 	mov	r2,a
   24C2 E4                  344 	clr	a
   24C3 3B                  345 	addc	a,r3
   24C4 FB                  346 	mov	r3,a
   24C5 8A 82               347 	mov	dpl,r2
   24C7 8B 83               348 	mov	dph,r3
   24C9 8C F0               349 	mov	b,r4
   24CB E5 09               350 	mov	a,_bp
   24CD 24 FD               351 	add	a,#0xfd
   24CF F8                  352 	mov	r0,a
   24D0 E6                  353 	mov	a,@r0
   24D1 12 25 04            354 	lcall	__gptrput
                            355 ;	SRC/fifo.c:25: pFifo->size++;
   24D4 8D 82               356 	mov	dpl,r5
   24D6 8E 83               357 	mov	dph,r6
   24D8 8F F0               358 	mov	b,r7
   24DA 12 25 1D            359 	lcall	__gptrget
   24DD FC                  360 	mov	r4,a
   24DE 0C                  361 	inc	r4
   24DF 8D 82               362 	mov	dpl,r5
   24E1 8E 83               363 	mov	dph,r6
   24E3 8F F0               364 	mov	b,r7
   24E5 EC                  365 	mov	a,r4
   24E6 12 25 04            366 	lcall	__gptrput
   24E9 15 81               367 	dec	sp
   24EB D0 09               368 	pop	_bp
   24ED 22                  369 	ret
                            370 ;------------------------------------------------------------
                            371 ;Allocation info for local variables in function 'isEmpty'
                            372 ;------------------------------------------------------------
                            373 ;pFifo                     Allocated to registers r5 r6 r7 
                            374 ;------------------------------------------------------------
                            375 ;	SRC/fifo.c:28: int isEmpty( fifo_t* pFifo ) {
                            376 ;	-----------------------------------------
                            377 ;	 function isEmpty
                            378 ;	-----------------------------------------
   24EE                     379 _isEmpty:
                            380 ;	SRC/fifo.c:29: return pFifo->size == 0;
   24EE AE 83               381 	mov	r6,dph
   24F0 AF F0               382 	mov	r7,b
   24F2 12 25 1D            383 	lcall	__gptrget
   24F5 FD                  384 	mov	r5,a
   24F6 E4                  385 	clr	a
   24F7 BD 00 01            386 	cjne	r5,#0x00,00103$
   24FA 04                  387 	inc	a
   24FB                     388 00103$:
   24FB FD                  389 	mov	r5,a
   24FC 33                  390 	rlc	a
   24FD 95 E0               391 	subb	a,acc
   24FF 8D 82               392 	mov	dpl,r5
   2501 F5 83               393 	mov	dph,a
   2503 22                  394 	ret
                            395 	.area CSEG    (CODE)
                            396 	.area CONST   (CODE)
                            397 	.area XINIT   (CODE)
                            398 	.area CABS    (ABS,CODE)

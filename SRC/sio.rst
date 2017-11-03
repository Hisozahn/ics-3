                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Nov 03 13:51:48 2017
                              5 ;--------------------------------------------------------
                              6 	.module sio
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SPR0
                             13 	.globl _SPR1
                             14 	.globl _CPHA
                             15 	.globl _CPOL
                             16 	.globl _SPIM
                             17 	.globl _SPE
                             18 	.globl _WCOL
                             19 	.globl _ISPI
                             20 	.globl _I2CI
                             21 	.globl _I2CTX
                             22 	.globl _I2CRS
                             23 	.globl _I2CM
                             24 	.globl _MDI
                             25 	.globl _MCO
                             26 	.globl _MDE
                             27 	.globl _MDO
                             28 	.globl _CS0
                             29 	.globl _CS1
                             30 	.globl _CS2
                             31 	.globl _CS3
                             32 	.globl _SCONV
                             33 	.globl _CCONV
                             34 	.globl _DMA
                             35 	.globl _ADCI
                             36 	.globl _P
                             37 	.globl _F1
                             38 	.globl _OV
                             39 	.globl _RS0
                             40 	.globl _RS1
                             41 	.globl _F0
                             42 	.globl _AC
                             43 	.globl _CY
                             44 	.globl _CAP2
                             45 	.globl _CNT2
                             46 	.globl _TR2
                             47 	.globl _XEN
                             48 	.globl _TCLK
                             49 	.globl _RCLK
                             50 	.globl _EXF2
                             51 	.globl _TF2
                             52 	.globl _WDE
                             53 	.globl _WDS
                             54 	.globl _WDR2
                             55 	.globl _WDR1
                             56 	.globl _PRE0
                             57 	.globl _PRE1
                             58 	.globl _PRE2
                             59 	.globl _PX0
                             60 	.globl _PT0
                             61 	.globl _PX1
                             62 	.globl _PT1
                             63 	.globl _PS
                             64 	.globl _PT2
                             65 	.globl _PADC
                             66 	.globl _PSI
                             67 	.globl _RXD
                             68 	.globl _TXD
                             69 	.globl _INT0
                             70 	.globl _INT1
                             71 	.globl _T0
                             72 	.globl _T1
                             73 	.globl _WR
                             74 	.globl _RD
                             75 	.globl _EX0
                             76 	.globl _ET0
                             77 	.globl _EX1
                             78 	.globl _ET1
                             79 	.globl _ES
                             80 	.globl _ET2
                             81 	.globl _EADC
                             82 	.globl _EA
                             83 	.globl _RI
                             84 	.globl _TI
                             85 	.globl _RB8
                             86 	.globl _TB8
                             87 	.globl _REN
                             88 	.globl _SM2
                             89 	.globl _SM1
                             90 	.globl _SM0
                             91 	.globl _T2
                             92 	.globl _T2EX
                             93 	.globl _IT0
                             94 	.globl _IE0
                             95 	.globl _IT1
                             96 	.globl _IE1
                             97 	.globl _TR0
                             98 	.globl _TF0
                             99 	.globl _TR1
                            100 	.globl _TF1
                            101 	.globl _DACCON
                            102 	.globl _DAC1H
                            103 	.globl _DAC1L
                            104 	.globl _DAC0H
                            105 	.globl _DAC0L
                            106 	.globl _SPICON
                            107 	.globl _SPIDAT
                            108 	.globl _ADCCON3
                            109 	.globl _ADCGAINH
                            110 	.globl _ADCGAINL
                            111 	.globl _ADCOFSH
                            112 	.globl _ADCOFSL
                            113 	.globl _B
                            114 	.globl _ADCCON1
                            115 	.globl _I2CCON
                            116 	.globl _ACC
                            117 	.globl _PSMCON
                            118 	.globl _ADCDATAH
                            119 	.globl _ADCDATAL
                            120 	.globl _ADCCON2
                            121 	.globl _DMAP
                            122 	.globl _DMAH
                            123 	.globl _DMAL
                            124 	.globl _PSW
                            125 	.globl _TH2
                            126 	.globl _TL2
                            127 	.globl _RCAP2H
                            128 	.globl _RCAP2L
                            129 	.globl _T2CON
                            130 	.globl _EADRL
                            131 	.globl _WDCON
                            132 	.globl _EDATA4
                            133 	.globl _EDATA3
                            134 	.globl _EDATA2
                            135 	.globl _EDATA1
                            136 	.globl _ETIM3
                            137 	.globl _ETIM2
                            138 	.globl _ETIM1
                            139 	.globl _ECON
                            140 	.globl _IP
                            141 	.globl _P3
                            142 	.globl _IE2
                            143 	.globl _IE
                            144 	.globl _P2
                            145 	.globl _I2CADD
                            146 	.globl _I2CDAT
                            147 	.globl _SBUF
                            148 	.globl _SCON
                            149 	.globl _P1
                            150 	.globl _TH1
                            151 	.globl _TH0
                            152 	.globl _TL1
                            153 	.globl _TL0
                            154 	.globl _TMOD
                            155 	.globl _TCON
                            156 	.globl _PCON
                            157 	.globl _DPP
                            158 	.globl _DPH
                            159 	.globl _DPL
                            160 	.globl _SP
                            161 	.globl _P0
                            162 	.globl _init_sio
                            163 	.globl _rsiostat
                            164 	.globl _wsio
                            165 	.globl _rsio
                            166 	.globl _type
                            167 ;--------------------------------------------------------
                            168 ; special function registers
                            169 ;--------------------------------------------------------
                            170 	.area RSEG    (ABS,DATA)
   0000                     171 	.org 0x0000
                    0080    172 _P0	=	0x0080
                    0081    173 _SP	=	0x0081
                    0082    174 _DPL	=	0x0082
                    0083    175 _DPH	=	0x0083
                    0084    176 _DPP	=	0x0084
                    0087    177 _PCON	=	0x0087
                    0088    178 _TCON	=	0x0088
                    0089    179 _TMOD	=	0x0089
                    008A    180 _TL0	=	0x008a
                    008B    181 _TL1	=	0x008b
                    008C    182 _TH0	=	0x008c
                    008D    183 _TH1	=	0x008d
                    0090    184 _P1	=	0x0090
                    0098    185 _SCON	=	0x0098
                    0099    186 _SBUF	=	0x0099
                    009A    187 _I2CDAT	=	0x009a
                    009B    188 _I2CADD	=	0x009b
                    00A0    189 _P2	=	0x00a0
                    00A8    190 _IE	=	0x00a8
                    00A9    191 _IE2	=	0x00a9
                    00B0    192 _P3	=	0x00b0
                    00B8    193 _IP	=	0x00b8
                    00B9    194 _ECON	=	0x00b9
                    00BA    195 _ETIM1	=	0x00ba
                    00BB    196 _ETIM2	=	0x00bb
                    00C4    197 _ETIM3	=	0x00c4
                    00BC    198 _EDATA1	=	0x00bc
                    00BD    199 _EDATA2	=	0x00bd
                    00BE    200 _EDATA3	=	0x00be
                    00BF    201 _EDATA4	=	0x00bf
                    00C0    202 _WDCON	=	0x00c0
                    00C6    203 _EADRL	=	0x00c6
                    00C8    204 _T2CON	=	0x00c8
                    00CA    205 _RCAP2L	=	0x00ca
                    00CB    206 _RCAP2H	=	0x00cb
                    00CC    207 _TL2	=	0x00cc
                    00CD    208 _TH2	=	0x00cd
                    00D0    209 _PSW	=	0x00d0
                    00D2    210 _DMAL	=	0x00d2
                    00D3    211 _DMAH	=	0x00d3
                    00D4    212 _DMAP	=	0x00d4
                    00D8    213 _ADCCON2	=	0x00d8
                    00D9    214 _ADCDATAL	=	0x00d9
                    00DA    215 _ADCDATAH	=	0x00da
                    00DF    216 _PSMCON	=	0x00df
                    00E0    217 _ACC	=	0x00e0
                    00E8    218 _I2CCON	=	0x00e8
                    00EF    219 _ADCCON1	=	0x00ef
                    00F0    220 _B	=	0x00f0
                    00F1    221 _ADCOFSL	=	0x00f1
                    00F2    222 _ADCOFSH	=	0x00f2
                    00F3    223 _ADCGAINL	=	0x00f3
                    00F4    224 _ADCGAINH	=	0x00f4
                    00F5    225 _ADCCON3	=	0x00f5
                    00F7    226 _SPIDAT	=	0x00f7
                    00F8    227 _SPICON	=	0x00f8
                    00F9    228 _DAC0L	=	0x00f9
                    00FA    229 _DAC0H	=	0x00fa
                    00FB    230 _DAC1L	=	0x00fb
                    00FC    231 _DAC1H	=	0x00fc
                    00FD    232 _DACCON	=	0x00fd
                            233 ;--------------------------------------------------------
                            234 ; special function bits
                            235 ;--------------------------------------------------------
                            236 	.area RSEG    (ABS,DATA)
   0000                     237 	.org 0x0000
                    008F    238 _TF1	=	0x008f
                    008E    239 _TR1	=	0x008e
                    008D    240 _TF0	=	0x008d
                    008C    241 _TR0	=	0x008c
                    008B    242 _IE1	=	0x008b
                    008A    243 _IT1	=	0x008a
                    0089    244 _IE0	=	0x0089
                    0088    245 _IT0	=	0x0088
                    0091    246 _T2EX	=	0x0091
                    0090    247 _T2	=	0x0090
                    009F    248 _SM0	=	0x009f
                    009E    249 _SM1	=	0x009e
                    009D    250 _SM2	=	0x009d
                    009C    251 _REN	=	0x009c
                    009B    252 _TB8	=	0x009b
                    009A    253 _RB8	=	0x009a
                    0099    254 _TI	=	0x0099
                    0098    255 _RI	=	0x0098
                    00AF    256 _EA	=	0x00af
                    00AE    257 _EADC	=	0x00ae
                    00AD    258 _ET2	=	0x00ad
                    00AC    259 _ES	=	0x00ac
                    00AB    260 _ET1	=	0x00ab
                    00AA    261 _EX1	=	0x00aa
                    00A9    262 _ET0	=	0x00a9
                    00A8    263 _EX0	=	0x00a8
                    00B7    264 _RD	=	0x00b7
                    00B6    265 _WR	=	0x00b6
                    00B5    266 _T1	=	0x00b5
                    00B4    267 _T0	=	0x00b4
                    00B3    268 _INT1	=	0x00b3
                    00B2    269 _INT0	=	0x00b2
                    00B1    270 _TXD	=	0x00b1
                    00B0    271 _RXD	=	0x00b0
                    00BF    272 _PSI	=	0x00bf
                    00BE    273 _PADC	=	0x00be
                    00BD    274 _PT2	=	0x00bd
                    00BC    275 _PS	=	0x00bc
                    00BB    276 _PT1	=	0x00bb
                    00BA    277 _PX1	=	0x00ba
                    00B9    278 _PT0	=	0x00b9
                    00B8    279 _PX0	=	0x00b8
                    00C7    280 _PRE2	=	0x00c7
                    00C6    281 _PRE1	=	0x00c6
                    00C5    282 _PRE0	=	0x00c5
                    00C3    283 _WDR1	=	0x00c3
                    00C2    284 _WDR2	=	0x00c2
                    00C1    285 _WDS	=	0x00c1
                    00C0    286 _WDE	=	0x00c0
                    00CF    287 _TF2	=	0x00cf
                    00CE    288 _EXF2	=	0x00ce
                    00CD    289 _RCLK	=	0x00cd
                    00CC    290 _TCLK	=	0x00cc
                    00CB    291 _XEN	=	0x00cb
                    00CA    292 _TR2	=	0x00ca
                    00C9    293 _CNT2	=	0x00c9
                    00C8    294 _CAP2	=	0x00c8
                    00D7    295 _CY	=	0x00d7
                    00D6    296 _AC	=	0x00d6
                    00D5    297 _F0	=	0x00d5
                    00D4    298 _RS1	=	0x00d4
                    00D3    299 _RS0	=	0x00d3
                    00D2    300 _OV	=	0x00d2
                    00D1    301 _F1	=	0x00d1
                    00D0    302 _P	=	0x00d0
                    00DF    303 _ADCI	=	0x00df
                    00DE    304 _DMA	=	0x00de
                    00DD    305 _CCONV	=	0x00dd
                    00DC    306 _SCONV	=	0x00dc
                    00DB    307 _CS3	=	0x00db
                    00DA    308 _CS2	=	0x00da
                    00D9    309 _CS1	=	0x00d9
                    00D8    310 _CS0	=	0x00d8
                    00EF    311 _MDO	=	0x00ef
                    00EE    312 _MDE	=	0x00ee
                    00ED    313 _MCO	=	0x00ed
                    00EC    314 _MDI	=	0x00ec
                    00EB    315 _I2CM	=	0x00eb
                    00EA    316 _I2CRS	=	0x00ea
                    00E9    317 _I2CTX	=	0x00e9
                    00E8    318 _I2CI	=	0x00e8
                    00FF    319 _ISPI	=	0x00ff
                    00FE    320 _WCOL	=	0x00fe
                    00FD    321 _SPE	=	0x00fd
                    00FC    322 _SPIM	=	0x00fc
                    00FB    323 _CPOL	=	0x00fb
                    00FA    324 _CPHA	=	0x00fa
                    00F9    325 _SPR1	=	0x00f9
                    00F8    326 _SPR0	=	0x00f8
                            327 ;--------------------------------------------------------
                            328 ; overlayable register banks
                            329 ;--------------------------------------------------------
                            330 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     331 	.ds 8
                            332 ;--------------------------------------------------------
                            333 ; internal ram data
                            334 ;--------------------------------------------------------
                            335 	.area DSEG    (DATA)
                            336 ;--------------------------------------------------------
                            337 ; overlayable items in internal ram 
                            338 ;--------------------------------------------------------
                            339 ;--------------------------------------------------------
                            340 ; indirectly addressable internal ram data
                            341 ;--------------------------------------------------------
                            342 	.area ISEG    (DATA)
                            343 ;--------------------------------------------------------
                            344 ; absolute internal ram data
                            345 ;--------------------------------------------------------
                            346 	.area IABS    (ABS,DATA)
                            347 	.area IABS    (ABS,DATA)
                            348 ;--------------------------------------------------------
                            349 ; bit data
                            350 ;--------------------------------------------------------
                            351 	.area BSEG    (BIT)
                            352 ;--------------------------------------------------------
                            353 ; paged external ram data
                            354 ;--------------------------------------------------------
                            355 	.area PSEG    (PAG,XDATA)
                            356 ;--------------------------------------------------------
                            357 ; external ram data
                            358 ;--------------------------------------------------------
                            359 	.area XSEG    (XDATA)
                            360 ;--------------------------------------------------------
                            361 ; absolute external ram data
                            362 ;--------------------------------------------------------
                            363 	.area XABS    (ABS,XDATA)
                            364 ;--------------------------------------------------------
                            365 ; external initialized ram data
                            366 ;--------------------------------------------------------
                            367 	.area XISEG   (XDATA)
                            368 	.area HOME    (CODE)
                            369 	.area GSINIT0 (CODE)
                            370 	.area GSINIT1 (CODE)
                            371 	.area GSINIT2 (CODE)
                            372 	.area GSINIT3 (CODE)
                            373 	.area GSINIT4 (CODE)
                            374 	.area GSINIT5 (CODE)
                            375 	.area GSINIT  (CODE)
                            376 	.area GSFINAL (CODE)
                            377 	.area CSEG    (CODE)
                            378 ;--------------------------------------------------------
                            379 ; global & static initialisations
                            380 ;--------------------------------------------------------
                            381 	.area HOME    (CODE)
                            382 	.area GSINIT  (CODE)
                            383 	.area GSFINAL (CODE)
                            384 	.area GSINIT  (CODE)
                            385 ;--------------------------------------------------------
                            386 ; Home
                            387 ;--------------------------------------------------------
                            388 	.area HOME    (CODE)
                            389 	.area HOME    (CODE)
                            390 ;--------------------------------------------------------
                            391 ; code
                            392 ;--------------------------------------------------------
                            393 	.area CSEG    (CODE)
                            394 ;------------------------------------------------------------
                            395 ;Allocation info for local variables in function 'init_sio'
                            396 ;------------------------------------------------------------
                            397 ;speed                     Allocated to registers 
                            398 ;------------------------------------------------------------
                            399 ;	SRC/sio.c:45: void init_sio( unsigned char speed )
                            400 ;	-----------------------------------------
                            401 ;	 function init_sio
                            402 ;	-----------------------------------------
   21DF                     403 _init_sio:
                    0007    404 	ar7 = 0x07
                    0006    405 	ar6 = 0x06
                    0005    406 	ar5 = 0x05
                    0004    407 	ar4 = 0x04
                    0003    408 	ar3 = 0x03
                    0002    409 	ar2 = 0x02
                    0001    410 	ar1 = 0x01
                    0000    411 	ar0 = 0x00
   21DF 85 82 8D            412 	mov	_TH1,dpl
                            413 ;	SRC/sio.c:48: TMOD     |=  0x20; //Таймер 1 будет работать в режиме autoreload
   21E2 43 89 20            414 	orl	_TMOD,#0x20
                            415 ;	SRC/sio.c:49: TCON     |=  0x40; //Запуск таймера 1
   21E5 43 88 40            416 	orl	_TCON,#0x40
                            417 ;	SRC/sio.c:50: SCON      =  0x50; //Настройки последовательного канала
   21E8 75 98 50            418 	mov	_SCON,#0x50
                            419 ;	SRC/sio.c:51: ES        =  0;    //Запрещение прерываний от приемопередатчика
   21EB C2 AC               420 	clr	_ES
   21ED 22                  421 	ret
                            422 ;------------------------------------------------------------
                            423 ;Allocation info for local variables in function 'rsiostat'
                            424 ;------------------------------------------------------------
                            425 ;	SRC/sio.c:64: unsigned char rsiostat(void)  
                            426 ;	-----------------------------------------
                            427 ;	 function rsiostat
                            428 ;	-----------------------------------------
   21EE                     429 _rsiostat:
                            430 ;	SRC/sio.c:66: return RI;
   21EE A2 98               431 	mov	c,_RI
   21F0 E4                  432 	clr	a
   21F1 33                  433 	rlc	a
   21F2 F5 82               434 	mov	dpl,a
   21F4 22                  435 	ret
                            436 ;------------------------------------------------------------
                            437 ;Allocation info for local variables in function 'wsio'
                            438 ;------------------------------------------------------------
                            439 ;c                         Allocated to registers 
                            440 ;------------------------------------------------------------
                            441 ;	SRC/sio.c:79: void wsio( unsigned char c )
                            442 ;	-----------------------------------------
                            443 ;	 function wsio
                            444 ;	-----------------------------------------
   21F5                     445 _wsio:
   21F5 85 82 99            446 	mov	_SBUF,dpl
                            447 ;	SRC/sio.c:82: TI   = 0;
   21F8 C2 99               448 	clr	_TI
                            449 ;	SRC/sio.c:83: while( !TI );
   21FA                     450 00101$:
   21FA 30 99 FD            451 	jnb	_TI,00101$
   21FD 22                  452 	ret
                            453 ;------------------------------------------------------------
                            454 ;Allocation info for local variables in function 'rsio'
                            455 ;------------------------------------------------------------
                            456 ;	SRC/sio.c:95: unsigned char rsio(void)
                            457 ;	-----------------------------------------
                            458 ;	 function rsio
                            459 ;	-----------------------------------------
   21FE                     460 _rsio:
                            461 ;	SRC/sio.c:97: while( !RI );
   21FE                     462 00101$:
                            463 ;	SRC/sio.c:98: RI = 0;
   21FE 10 98 02            464 	jbc	_RI,00110$
   2201 80 FB               465 	sjmp	00101$
   2203                     466 00110$:
                            467 ;	SRC/sio.c:99: return SBUF;
   2203 85 99 82            468 	mov	dpl,_SBUF
   2206 22                  469 	ret
                            470 ;------------------------------------------------------------
                            471 ;Allocation info for local variables in function 'type'
                            472 ;------------------------------------------------------------
                            473 ;str                       Allocated to registers 
                            474 ;------------------------------------------------------------
                            475 ;	SRC/sio.c:112: void type(char * str)
                            476 ;	-----------------------------------------
                            477 ;	 function type
                            478 ;	-----------------------------------------
   2207                     479 _type:
   2207 AD 82               480 	mov	r5,dpl
   2209 AE 83               481 	mov	r6,dph
   220B AF F0               482 	mov	r7,b
                            483 ;	SRC/sio.c:114: while( *str ) wsio( *str++ );
   220D                     484 00101$:
   220D 8D 82               485 	mov	dpl,r5
   220F 8E 83               486 	mov	dph,r6
   2211 8F F0               487 	mov	b,r7
   2213 12 22 95            488 	lcall	__gptrget
   2216 FC                  489 	mov	r4,a
   2217 60 18               490 	jz	00104$
   2219 0D                  491 	inc	r5
   221A BD 00 01            492 	cjne	r5,#0x00,00112$
   221D 0E                  493 	inc	r6
   221E                     494 00112$:
   221E 8C 82               495 	mov	dpl,r4
   2220 C0 07               496 	push	ar7
   2222 C0 06               497 	push	ar6
   2224 C0 05               498 	push	ar5
   2226 12 21 F5            499 	lcall	_wsio
   2229 D0 05               500 	pop	ar5
   222B D0 06               501 	pop	ar6
   222D D0 07               502 	pop	ar7
   222F 80 DC               503 	sjmp	00101$
   2231                     504 00104$:
   2231 22                  505 	ret
                            506 	.area CSEG    (CODE)
                            507 	.area CONST   (CODE)
                            508 	.area XINIT   (CODE)
                            509 	.area CABS    (ABS,CODE)

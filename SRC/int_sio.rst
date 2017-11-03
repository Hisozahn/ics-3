                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Nov 03 16:21:43 2017
                              5 ;--------------------------------------------------------
                              6 	.module int_sio
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SetVector
                             13 	.globl _SIO_ISR
                             14 	.globl _isEmpty
                             15 	.globl _pushElement
                             16 	.globl _pullElement
                             17 	.globl _initFifo
                             18 	.globl _SPR0
                             19 	.globl _SPR1
                             20 	.globl _CPHA
                             21 	.globl _CPOL
                             22 	.globl _SPIM
                             23 	.globl _SPE
                             24 	.globl _WCOL
                             25 	.globl _ISPI
                             26 	.globl _I2CI
                             27 	.globl _I2CTX
                             28 	.globl _I2CRS
                             29 	.globl _I2CM
                             30 	.globl _MDI
                             31 	.globl _MCO
                             32 	.globl _MDE
                             33 	.globl _MDO
                             34 	.globl _CS0
                             35 	.globl _CS1
                             36 	.globl _CS2
                             37 	.globl _CS3
                             38 	.globl _SCONV
                             39 	.globl _CCONV
                             40 	.globl _DMA
                             41 	.globl _ADCI
                             42 	.globl _P
                             43 	.globl _F1
                             44 	.globl _OV
                             45 	.globl _RS0
                             46 	.globl _RS1
                             47 	.globl _F0
                             48 	.globl _AC
                             49 	.globl _CY
                             50 	.globl _CAP2
                             51 	.globl _CNT2
                             52 	.globl _TR2
                             53 	.globl _XEN
                             54 	.globl _TCLK
                             55 	.globl _RCLK
                             56 	.globl _EXF2
                             57 	.globl _TF2
                             58 	.globl _WDE
                             59 	.globl _WDS
                             60 	.globl _WDR2
                             61 	.globl _WDR1
                             62 	.globl _PRE0
                             63 	.globl _PRE1
                             64 	.globl _PRE2
                             65 	.globl _PX0
                             66 	.globl _PT0
                             67 	.globl _PX1
                             68 	.globl _PT1
                             69 	.globl _PS
                             70 	.globl _PT2
                             71 	.globl _PADC
                             72 	.globl _PSI
                             73 	.globl _RXD
                             74 	.globl _TXD
                             75 	.globl _INT0
                             76 	.globl _INT1
                             77 	.globl _T0
                             78 	.globl _T1
                             79 	.globl _WR
                             80 	.globl _RD
                             81 	.globl _EX0
                             82 	.globl _ET0
                             83 	.globl _EX1
                             84 	.globl _ET1
                             85 	.globl _ES
                             86 	.globl _ET2
                             87 	.globl _EADC
                             88 	.globl _EA
                             89 	.globl _RI
                             90 	.globl _TI
                             91 	.globl _RB8
                             92 	.globl _TB8
                             93 	.globl _REN
                             94 	.globl _SM2
                             95 	.globl _SM1
                             96 	.globl _SM0
                             97 	.globl _T2
                             98 	.globl _T2EX
                             99 	.globl _IT0
                            100 	.globl _IE0
                            101 	.globl _IT1
                            102 	.globl _IE1
                            103 	.globl _TR0
                            104 	.globl _TF0
                            105 	.globl _TR1
                            106 	.globl _TF1
                            107 	.globl _DACCON
                            108 	.globl _DAC1H
                            109 	.globl _DAC1L
                            110 	.globl _DAC0H
                            111 	.globl _DAC0L
                            112 	.globl _SPICON
                            113 	.globl _SPIDAT
                            114 	.globl _ADCCON3
                            115 	.globl _ADCGAINH
                            116 	.globl _ADCGAINL
                            117 	.globl _ADCOFSH
                            118 	.globl _ADCOFSL
                            119 	.globl _B
                            120 	.globl _ADCCON1
                            121 	.globl _I2CCON
                            122 	.globl _ACC
                            123 	.globl _PSMCON
                            124 	.globl _ADCDATAH
                            125 	.globl _ADCDATAL
                            126 	.globl _ADCCON2
                            127 	.globl _DMAP
                            128 	.globl _DMAH
                            129 	.globl _DMAL
                            130 	.globl _PSW
                            131 	.globl _TH2
                            132 	.globl _TL2
                            133 	.globl _RCAP2H
                            134 	.globl _RCAP2L
                            135 	.globl _T2CON
                            136 	.globl _EADRL
                            137 	.globl _WDCON
                            138 	.globl _EDATA4
                            139 	.globl _EDATA3
                            140 	.globl _EDATA2
                            141 	.globl _EDATA1
                            142 	.globl _ETIM3
                            143 	.globl _ETIM2
                            144 	.globl _ETIM1
                            145 	.globl _ECON
                            146 	.globl _IP
                            147 	.globl _P3
                            148 	.globl _IE2
                            149 	.globl _IE
                            150 	.globl _P2
                            151 	.globl _I2CADD
                            152 	.globl _I2CDAT
                            153 	.globl _SBUF
                            154 	.globl _SCON
                            155 	.globl _P1
                            156 	.globl _TH1
                            157 	.globl _TH0
                            158 	.globl _TL1
                            159 	.globl _TL0
                            160 	.globl _TMOD
                            161 	.globl _TCON
                            162 	.globl _PCON
                            163 	.globl _DPP
                            164 	.globl _DPH
                            165 	.globl _DPL
                            166 	.globl _SP
                            167 	.globl _P0
                            168 	.globl _init_sio
                            169 	.globl _rsiostat
                            170 	.globl _wsio
                            171 	.globl _rsio
                            172 	.globl _type
                            173 ;--------------------------------------------------------
                            174 ; special function registers
                            175 ;--------------------------------------------------------
                            176 	.area RSEG    (ABS,DATA)
   0000                     177 	.org 0x0000
                    0080    178 _P0	=	0x0080
                    0081    179 _SP	=	0x0081
                    0082    180 _DPL	=	0x0082
                    0083    181 _DPH	=	0x0083
                    0084    182 _DPP	=	0x0084
                    0087    183 _PCON	=	0x0087
                    0088    184 _TCON	=	0x0088
                    0089    185 _TMOD	=	0x0089
                    008A    186 _TL0	=	0x008a
                    008B    187 _TL1	=	0x008b
                    008C    188 _TH0	=	0x008c
                    008D    189 _TH1	=	0x008d
                    0090    190 _P1	=	0x0090
                    0098    191 _SCON	=	0x0098
                    0099    192 _SBUF	=	0x0099
                    009A    193 _I2CDAT	=	0x009a
                    009B    194 _I2CADD	=	0x009b
                    00A0    195 _P2	=	0x00a0
                    00A8    196 _IE	=	0x00a8
                    00A9    197 _IE2	=	0x00a9
                    00B0    198 _P3	=	0x00b0
                    00B8    199 _IP	=	0x00b8
                    00B9    200 _ECON	=	0x00b9
                    00BA    201 _ETIM1	=	0x00ba
                    00BB    202 _ETIM2	=	0x00bb
                    00C4    203 _ETIM3	=	0x00c4
                    00BC    204 _EDATA1	=	0x00bc
                    00BD    205 _EDATA2	=	0x00bd
                    00BE    206 _EDATA3	=	0x00be
                    00BF    207 _EDATA4	=	0x00bf
                    00C0    208 _WDCON	=	0x00c0
                    00C6    209 _EADRL	=	0x00c6
                    00C8    210 _T2CON	=	0x00c8
                    00CA    211 _RCAP2L	=	0x00ca
                    00CB    212 _RCAP2H	=	0x00cb
                    00CC    213 _TL2	=	0x00cc
                    00CD    214 _TH2	=	0x00cd
                    00D0    215 _PSW	=	0x00d0
                    00D2    216 _DMAL	=	0x00d2
                    00D3    217 _DMAH	=	0x00d3
                    00D4    218 _DMAP	=	0x00d4
                    00D8    219 _ADCCON2	=	0x00d8
                    00D9    220 _ADCDATAL	=	0x00d9
                    00DA    221 _ADCDATAH	=	0x00da
                    00DF    222 _PSMCON	=	0x00df
                    00E0    223 _ACC	=	0x00e0
                    00E8    224 _I2CCON	=	0x00e8
                    00EF    225 _ADCCON1	=	0x00ef
                    00F0    226 _B	=	0x00f0
                    00F1    227 _ADCOFSL	=	0x00f1
                    00F2    228 _ADCOFSH	=	0x00f2
                    00F3    229 _ADCGAINL	=	0x00f3
                    00F4    230 _ADCGAINH	=	0x00f4
                    00F5    231 _ADCCON3	=	0x00f5
                    00F7    232 _SPIDAT	=	0x00f7
                    00F8    233 _SPICON	=	0x00f8
                    00F9    234 _DAC0L	=	0x00f9
                    00FA    235 _DAC0H	=	0x00fa
                    00FB    236 _DAC1L	=	0x00fb
                    00FC    237 _DAC1H	=	0x00fc
                    00FD    238 _DACCON	=	0x00fd
                            239 ;--------------------------------------------------------
                            240 ; special function bits
                            241 ;--------------------------------------------------------
                            242 	.area RSEG    (ABS,DATA)
   0000                     243 	.org 0x0000
                    008F    244 _TF1	=	0x008f
                    008E    245 _TR1	=	0x008e
                    008D    246 _TF0	=	0x008d
                    008C    247 _TR0	=	0x008c
                    008B    248 _IE1	=	0x008b
                    008A    249 _IT1	=	0x008a
                    0089    250 _IE0	=	0x0089
                    0088    251 _IT0	=	0x0088
                    0091    252 _T2EX	=	0x0091
                    0090    253 _T2	=	0x0090
                    009F    254 _SM0	=	0x009f
                    009E    255 _SM1	=	0x009e
                    009D    256 _SM2	=	0x009d
                    009C    257 _REN	=	0x009c
                    009B    258 _TB8	=	0x009b
                    009A    259 _RB8	=	0x009a
                    0099    260 _TI	=	0x0099
                    0098    261 _RI	=	0x0098
                    00AF    262 _EA	=	0x00af
                    00AE    263 _EADC	=	0x00ae
                    00AD    264 _ET2	=	0x00ad
                    00AC    265 _ES	=	0x00ac
                    00AB    266 _ET1	=	0x00ab
                    00AA    267 _EX1	=	0x00aa
                    00A9    268 _ET0	=	0x00a9
                    00A8    269 _EX0	=	0x00a8
                    00B7    270 _RD	=	0x00b7
                    00B6    271 _WR	=	0x00b6
                    00B5    272 _T1	=	0x00b5
                    00B4    273 _T0	=	0x00b4
                    00B3    274 _INT1	=	0x00b3
                    00B2    275 _INT0	=	0x00b2
                    00B1    276 _TXD	=	0x00b1
                    00B0    277 _RXD	=	0x00b0
                    00BF    278 _PSI	=	0x00bf
                    00BE    279 _PADC	=	0x00be
                    00BD    280 _PT2	=	0x00bd
                    00BC    281 _PS	=	0x00bc
                    00BB    282 _PT1	=	0x00bb
                    00BA    283 _PX1	=	0x00ba
                    00B9    284 _PT0	=	0x00b9
                    00B8    285 _PX0	=	0x00b8
                    00C7    286 _PRE2	=	0x00c7
                    00C6    287 _PRE1	=	0x00c6
                    00C5    288 _PRE0	=	0x00c5
                    00C3    289 _WDR1	=	0x00c3
                    00C2    290 _WDR2	=	0x00c2
                    00C1    291 _WDS	=	0x00c1
                    00C0    292 _WDE	=	0x00c0
                    00CF    293 _TF2	=	0x00cf
                    00CE    294 _EXF2	=	0x00ce
                    00CD    295 _RCLK	=	0x00cd
                    00CC    296 _TCLK	=	0x00cc
                    00CB    297 _XEN	=	0x00cb
                    00CA    298 _TR2	=	0x00ca
                    00C9    299 _CNT2	=	0x00c9
                    00C8    300 _CAP2	=	0x00c8
                    00D7    301 _CY	=	0x00d7
                    00D6    302 _AC	=	0x00d6
                    00D5    303 _F0	=	0x00d5
                    00D4    304 _RS1	=	0x00d4
                    00D3    305 _RS0	=	0x00d3
                    00D2    306 _OV	=	0x00d2
                    00D1    307 _F1	=	0x00d1
                    00D0    308 _P	=	0x00d0
                    00DF    309 _ADCI	=	0x00df
                    00DE    310 _DMA	=	0x00de
                    00DD    311 _CCONV	=	0x00dd
                    00DC    312 _SCONV	=	0x00dc
                    00DB    313 _CS3	=	0x00db
                    00DA    314 _CS2	=	0x00da
                    00D9    315 _CS1	=	0x00d9
                    00D8    316 _CS0	=	0x00d8
                    00EF    317 _MDO	=	0x00ef
                    00EE    318 _MDE	=	0x00ee
                    00ED    319 _MCO	=	0x00ed
                    00EC    320 _MDI	=	0x00ec
                    00EB    321 _I2CM	=	0x00eb
                    00EA    322 _I2CRS	=	0x00ea
                    00E9    323 _I2CTX	=	0x00e9
                    00E8    324 _I2CI	=	0x00e8
                    00FF    325 _ISPI	=	0x00ff
                    00FE    326 _WCOL	=	0x00fe
                    00FD    327 _SPE	=	0x00fd
                    00FC    328 _SPIM	=	0x00fc
                    00FB    329 _CPOL	=	0x00fb
                    00FA    330 _CPHA	=	0x00fa
                    00F9    331 _SPR1	=	0x00f9
                    00F8    332 _SPR0	=	0x00f8
                            333 ;--------------------------------------------------------
                            334 ; overlayable register banks
                            335 ;--------------------------------------------------------
                            336 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     337 	.ds 8
                            338 ;--------------------------------------------------------
                            339 ; overlayable bit register bank
                            340 ;--------------------------------------------------------
                            341 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     342 bits:
   0020                     343 	.ds 1
                    8000    344 	b0 = bits[0]
                    8100    345 	b1 = bits[1]
                    8200    346 	b2 = bits[2]
                    8300    347 	b3 = bits[3]
                    8400    348 	b4 = bits[4]
                    8500    349 	b5 = bits[5]
                    8600    350 	b6 = bits[6]
                    8700    351 	b7 = bits[7]
                            352 ;--------------------------------------------------------
                            353 ; internal ram data
                            354 ;--------------------------------------------------------
                            355 	.area DSEG    (DATA)
   0021                     356 _rFifo:
   0021                     357 	.ds 32
   0041                     358 _wFifo:
   0041                     359 	.ds 32
                            360 ;--------------------------------------------------------
                            361 ; overlayable items in internal ram 
                            362 ;--------------------------------------------------------
                            363 ;--------------------------------------------------------
                            364 ; indirectly addressable internal ram data
                            365 ;--------------------------------------------------------
                            366 	.area ISEG    (DATA)
                            367 ;--------------------------------------------------------
                            368 ; absolute internal ram data
                            369 ;--------------------------------------------------------
                            370 	.area IABS    (ABS,DATA)
                            371 	.area IABS    (ABS,DATA)
                            372 ;--------------------------------------------------------
                            373 ; bit data
                            374 ;--------------------------------------------------------
                            375 	.area BSEG    (BIT)
                            376 ;--------------------------------------------------------
                            377 ; paged external ram data
                            378 ;--------------------------------------------------------
                            379 	.area PSEG    (PAG,XDATA)
                            380 ;--------------------------------------------------------
                            381 ; external ram data
                            382 ;--------------------------------------------------------
                            383 	.area XSEG    (XDATA)
                            384 ;--------------------------------------------------------
                            385 ; absolute external ram data
                            386 ;--------------------------------------------------------
                            387 	.area XABS    (ABS,XDATA)
                            388 ;--------------------------------------------------------
                            389 ; external initialized ram data
                            390 ;--------------------------------------------------------
                            391 	.area XISEG   (XDATA)
                            392 	.area HOME    (CODE)
                            393 	.area GSINIT0 (CODE)
                            394 	.area GSINIT1 (CODE)
                            395 	.area GSINIT2 (CODE)
                            396 	.area GSINIT3 (CODE)
                            397 	.area GSINIT4 (CODE)
                            398 	.area GSINIT5 (CODE)
                            399 	.area GSINIT  (CODE)
                            400 	.area GSFINAL (CODE)
                            401 	.area CSEG    (CODE)
                            402 ;--------------------------------------------------------
                            403 ; global & static initialisations
                            404 ;--------------------------------------------------------
                            405 	.area HOME    (CODE)
                            406 	.area GSINIT  (CODE)
                            407 	.area GSFINAL (CODE)
                            408 	.area GSINIT  (CODE)
                            409 ;--------------------------------------------------------
                            410 ; Home
                            411 ;--------------------------------------------------------
                            412 	.area HOME    (CODE)
                            413 	.area HOME    (CODE)
                            414 ;--------------------------------------------------------
                            415 ; code
                            416 ;--------------------------------------------------------
                            417 	.area CSEG    (CODE)
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'SIO_ISR'
                            420 ;------------------------------------------------------------
                            421 ;	SRC/int_sio.c:37: void SIO_ISR( void ) __interrupt ( 4 ) {
                            422 ;	-----------------------------------------
                            423 ;	 function SIO_ISR
                            424 ;	-----------------------------------------
   21DF                     425 _SIO_ISR:
                    0007    426 	ar7 = 0x07
                    0006    427 	ar6 = 0x06
                    0005    428 	ar5 = 0x05
                    0004    429 	ar4 = 0x04
                    0003    430 	ar3 = 0x03
                    0002    431 	ar2 = 0x02
                    0001    432 	ar1 = 0x01
                    0000    433 	ar0 = 0x00
   21DF C0 20               434 	push	bits
   21E1 C0 E0               435 	push	acc
   21E3 C0 F0               436 	push	b
   21E5 C0 82               437 	push	dpl
   21E7 C0 83               438 	push	dph
   21E9 C0 07               439 	push	(0+7)
   21EB C0 06               440 	push	(0+6)
   21ED C0 05               441 	push	(0+5)
   21EF C0 04               442 	push	(0+4)
   21F1 C0 03               443 	push	(0+3)
   21F3 C0 02               444 	push	(0+2)
   21F5 C0 01               445 	push	(0+1)
   21F7 C0 00               446 	push	(0+0)
   21F9 C0 D0               447 	push	psw
   21FB 75 D0 00            448 	mov	psw,#0x00
                            449 ;	SRC/int_sio.c:38: if(TI) {
   21FE 30 99 0E            450 	jnb	_TI,00102$
                            451 ;	SRC/int_sio.c:41: SBUF = pullElement(&wFifo);
   2201 90 00 41            452 	mov	dptr,#_wFifo
   2204 75 F0 40            453 	mov	b,#0x40
   2207 12 23 99            454 	lcall	_pullElement
   220A 85 82 99            455 	mov	_SBUF,dpl
                            456 ;	SRC/int_sio.c:42: TI = 0;
   220D C2 99               457 	clr	_TI
   220F                     458 00102$:
                            459 ;	SRC/int_sio.c:44: if(RI) {
   220F 30 98 0F            460 	jnb	_RI,00105$
                            461 ;	SRC/int_sio.c:47: pushElement(&rFifo, SBUF);
   2212 C0 99               462 	push	_SBUF
   2214 90 00 21            463 	mov	dptr,#_rFifo
   2217 75 F0 40            464 	mov	b,#0x40
   221A 12 24 92            465 	lcall	_pushElement
   221D 15 81               466 	dec	sp
                            467 ;	SRC/int_sio.c:48: RI = 0;
   221F C2 98               468 	clr	_RI
   2221                     469 00105$:
   2221 D0 D0               470 	pop	psw
   2223 D0 00               471 	pop	(0+0)
   2225 D0 01               472 	pop	(0+1)
   2227 D0 02               473 	pop	(0+2)
   2229 D0 03               474 	pop	(0+3)
   222B D0 04               475 	pop	(0+4)
   222D D0 05               476 	pop	(0+5)
   222F D0 06               477 	pop	(0+6)
   2231 D0 07               478 	pop	(0+7)
   2233 D0 83               479 	pop	dph
   2235 D0 82               480 	pop	dpl
   2237 D0 F0               481 	pop	b
   2239 D0 E0               482 	pop	acc
   223B D0 20               483 	pop	bits
   223D 32                  484 	reti
                            485 ;------------------------------------------------------------
                            486 ;Allocation info for local variables in function 'SetVector'
                            487 ;------------------------------------------------------------
                            488 ;Vector                    Allocated to stack - _bp -5
                            489 ;Address                   Allocated to registers r6 r7 
                            490 ;TmpVector                 Allocated to registers r6 r7 
                            491 ;------------------------------------------------------------
                            492 ;	SRC/int_sio.c:52: void SetVector(unsigned char __xdata * Address, void * Vector)
                            493 ;	-----------------------------------------
                            494 ;	 function SetVector
                            495 ;	-----------------------------------------
   223E                     496 _SetVector:
   223E C0 09               497 	push	_bp
   2240 85 81 09            498 	mov	_bp,sp
                            499 ;	SRC/int_sio.c:58: *Address = 0x02;
   2243 AE 82               500 	mov	r6,dpl
   2245 AF 83               501 	mov  r7,dph
   2247 74 02               502 	mov	a,#0x02
   2249 F0                  503 	movx	@dptr,a
                            504 ;	SRC/int_sio.c:60: TmpVector = (unsigned char __xdata *) (Address + 1);
   224A 0E                  505 	inc	r6
   224B BE 00 01            506 	cjne	r6,#0x00,00103$
   224E 0F                  507 	inc	r7
   224F                     508 00103$:
                            509 ;	SRC/int_sio.c:61: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
   224F E5 09               510 	mov	a,_bp
   2251 24 FB               511 	add	a,#0xfb
   2253 F8                  512 	mov	r0,a
   2254 86 04               513 	mov	ar4,@r0
   2256 08                  514 	inc	r0
   2257 86 05               515 	mov	ar5,@r0
   2259 8D 04               516 	mov	ar4,r5
   225B 8E 82               517 	mov	dpl,r6
   225D 8F 83               518 	mov	dph,r7
   225F EC                  519 	mov	a,r4
   2260 F0                  520 	movx	@dptr,a
   2261 A3                  521 	inc	dptr
   2262 AE 82               522 	mov	r6,dpl
   2264 AF 83               523 	mov	r7,dph
                            524 ;	SRC/int_sio.c:62: ++TmpVector;
                            525 ;	SRC/int_sio.c:63: *TmpVector = (unsigned char) Vector;
   2266 E5 09               526 	mov	a,_bp
   2268 24 FB               527 	add	a,#0xfb
   226A F8                  528 	mov	r0,a
   226B 86 05               529 	mov	ar5,@r0
   226D 8E 82               530 	mov	dpl,r6
   226F 8F 83               531 	mov	dph,r7
   2271 ED                  532 	mov	a,r5
   2272 F0                  533 	movx	@dptr,a
   2273 D0 09               534 	pop	_bp
   2275 22                  535 	ret
                            536 ;------------------------------------------------------------
                            537 ;Allocation info for local variables in function 'init_sio'
                            538 ;------------------------------------------------------------
                            539 ;speed                     Allocated to registers r7 
                            540 ;------------------------------------------------------------
                            541 ;	SRC/int_sio.c:81: void init_sio( unsigned char speed )
                            542 ;	-----------------------------------------
                            543 ;	 function init_sio
                            544 ;	-----------------------------------------
   2276                     545 _init_sio:
   2276 AF 82               546 	mov	r7,dpl
                            547 ;	SRC/int_sio.c:83: initFifo(&rFifo);
   2278 90 00 21            548 	mov	dptr,#_rFifo
   227B 75 F0 40            549 	mov	b,#0x40
   227E C0 07               550 	push	ar7
   2280 12 23 80            551 	lcall	_initFifo
                            552 ;	SRC/int_sio.c:84: initFifo(&wFifo);
   2283 90 00 41            553 	mov	dptr,#_wFifo
   2286 75 F0 40            554 	mov	b,#0x40
   2289 12 23 80            555 	lcall	_initFifo
                            556 ;	SRC/int_sio.c:86: SetVector( 0x23, (void *)SIO_ISR );
   228C 7C DF               557 	mov	r4,#_SIO_ISR
   228E 7D 21               558 	mov	r5,#(_SIO_ISR >> 8)
   2290 7E 80               559 	mov	r6,#0x80
   2292 C0 04               560 	push	ar4
   2294 C0 05               561 	push	ar5
   2296 C0 06               562 	push	ar6
   2298 90 00 23            563 	mov	dptr,#0x0023
   229B 12 22 3E            564 	lcall	_SetVector
   229E 15 81               565 	dec	sp
   22A0 15 81               566 	dec	sp
   22A2 15 81               567 	dec	sp
   22A4 D0 07               568 	pop	ar7
                            569 ;	SRC/int_sio.c:88: TH1       =  speed; 
   22A6 8F 8D               570 	mov	_TH1,r7
                            571 ;	SRC/int_sio.c:89: TMOD     |=  0x20; //Таймер 1 будет работать в режиме autoreload
   22A8 43 89 20            572 	orl	_TMOD,#0x20
                            573 ;	SRC/int_sio.c:90: TCON     |=  0x40; //Запуск таймера 1
   22AB 43 88 40            574 	orl	_TCON,#0x40
                            575 ;	SRC/int_sio.c:91: SCON      =  0x50; //Настройки последовательного канала
   22AE 75 98 50            576 	mov	_SCON,#0x50
                            577 ;	SRC/int_sio.c:92: ES        =  1;    //Запрещение прерываний от приемопередатчика
   22B1 D2 AC               578 	setb	_ES
                            579 ;	SRC/int_sio.c:93: EA        =  1;     // Enable any interrupt
   22B3 D2 AF               580 	setb	_EA
   22B5 22                  581 	ret
                            582 ;------------------------------------------------------------
                            583 ;Allocation info for local variables in function 'rsiostat'
                            584 ;------------------------------------------------------------
                            585 ;	SRC/int_sio.c:106: unsigned char rsiostat(void)  
                            586 ;	-----------------------------------------
                            587 ;	 function rsiostat
                            588 ;	-----------------------------------------
   22B6                     589 _rsiostat:
                            590 ;	SRC/int_sio.c:108: return RI;
   22B6 A2 98               591 	mov	c,_RI
   22B8 E4                  592 	clr	a
   22B9 33                  593 	rlc	a
   22BA F5 82               594 	mov	dpl,a
   22BC 22                  595 	ret
                            596 ;------------------------------------------------------------
                            597 ;Allocation info for local variables in function 'wsio'
                            598 ;------------------------------------------------------------
                            599 ;c                         Allocated to registers r7 
                            600 ;oldES                     Allocated to registers r6 
                            601 ;fifoWasEmpty              Allocated to registers r4 r5 
                            602 ;------------------------------------------------------------
                            603 ;	SRC/int_sio.c:121: void wsio( unsigned char c )
                            604 ;	-----------------------------------------
                            605 ;	 function wsio
                            606 ;	-----------------------------------------
   22BD                     607 _wsio:
   22BD AF 82               608 	mov	r7,dpl
                            609 ;	SRC/int_sio.c:123: char oldES = ES;
   22BF A2 AC               610 	mov	c,_ES
   22C1 E4                  611 	clr	a
   22C2 33                  612 	rlc	a
   22C3 FE                  613 	mov	r6,a
                            614 ;	SRC/int_sio.c:125: ES = 0;
   22C4 C2 AC               615 	clr	_ES
                            616 ;	SRC/int_sio.c:127: fifoWasEmpty = isEmpty(&wFifo);
   22C6 90 00 41            617 	mov	dptr,#_wFifo
   22C9 75 F0 40            618 	mov	b,#0x40
   22CC C0 07               619 	push	ar7
   22CE C0 06               620 	push	ar6
   22D0 12 24 EE            621 	lcall	_isEmpty
   22D3 AC 82               622 	mov	r4,dpl
   22D5 AD 83               623 	mov	r5,dph
   22D7 D0 06               624 	pop	ar6
   22D9 D0 07               625 	pop	ar7
                            626 ;	SRC/int_sio.c:128: pushElement(&wFifo, c);
   22DB C0 06               627 	push	ar6
   22DD C0 05               628 	push	ar5
   22DF C0 04               629 	push	ar4
   22E1 C0 07               630 	push	ar7
   22E3 90 00 41            631 	mov	dptr,#_wFifo
   22E6 75 F0 40            632 	mov	b,#0x40
   22E9 12 24 92            633 	lcall	_pushElement
   22EC 15 81               634 	dec	sp
   22EE D0 04               635 	pop	ar4
   22F0 D0 05               636 	pop	ar5
   22F2 D0 06               637 	pop	ar6
                            638 ;	SRC/int_sio.c:130: if (fifoWasEmpty) {
   22F4 EC                  639 	mov	a,r4
   22F5 4D                  640 	orl	a,r5
   22F6 60 02               641 	jz	00102$
                            642 ;	SRC/int_sio.c:131: TI = 1;
   22F8 D2 99               643 	setb	_TI
   22FA                     644 00102$:
                            645 ;	SRC/int_sio.c:134: ES = oldES;
   22FA EE                  646 	mov	a,r6
   22FB 24 FF               647 	add	a,#0xff
   22FD 92 AC               648 	mov	_ES,c
   22FF 22                  649 	ret
                            650 ;------------------------------------------------------------
                            651 ;Allocation info for local variables in function 'rsio'
                            652 ;------------------------------------------------------------
                            653 ;c                         Allocated to registers r6 
                            654 ;oldES                     Allocated to registers r7 
                            655 ;------------------------------------------------------------
                            656 ;	SRC/int_sio.c:146: unsigned char rsio(void)
                            657 ;	-----------------------------------------
                            658 ;	 function rsio
                            659 ;	-----------------------------------------
   2300                     660 _rsio:
                            661 ;	SRC/int_sio.c:149: char oldES = ES;
   2300 A2 AC               662 	mov	c,_ES
   2302 E4                  663 	clr	a
   2303 33                  664 	rlc	a
   2304 FF                  665 	mov	r7,a
                            666 ;	SRC/int_sio.c:151: ES = 0;
   2305 C2 AC               667 	clr	_ES
                            668 ;	SRC/int_sio.c:153: if (isEmpty(&rFifo)) {
   2307 90 00 21            669 	mov	dptr,#_rFifo
   230A 75 F0 40            670 	mov	b,#0x40
   230D C0 07               671 	push	ar7
   230F 12 24 EE            672 	lcall	_isEmpty
   2312 E5 82               673 	mov	a,dpl
   2314 85 83 F0            674 	mov	b,dph
   2317 D0 07               675 	pop	ar7
   2319 45 F0               676 	orl	a,b
   231B 60 04               677 	jz	00102$
                            678 ;	SRC/int_sio.c:154: c = 0;
   231D 7E 00               679 	mov	r6,#0x00
   231F 80 11               680 	sjmp	00103$
   2321                     681 00102$:
                            682 ;	SRC/int_sio.c:157: c = pullElement(&rFifo);
   2321 90 00 21            683 	mov	dptr,#_rFifo
   2324 75 F0 40            684 	mov	b,#0x40
   2327 C0 07               685 	push	ar7
   2329 12 23 99            686 	lcall	_pullElement
   232C AD 82               687 	mov	r5,dpl
   232E D0 07               688 	pop	ar7
   2330 8D 06               689 	mov	ar6,r5
   2332                     690 00103$:
                            691 ;	SRC/int_sio.c:160: ES = oldES;
   2332 EF                  692 	mov	a,r7
   2333 24 FF               693 	add	a,#0xff
   2335 92 AC               694 	mov	_ES,c
                            695 ;	SRC/int_sio.c:161: return c;
   2337 8E 82               696 	mov	dpl,r6
   2339 22                  697 	ret
                            698 ;------------------------------------------------------------
                            699 ;Allocation info for local variables in function 'type'
                            700 ;------------------------------------------------------------
                            701 ;str                       Allocated to registers 
                            702 ;------------------------------------------------------------
                            703 ;	SRC/int_sio.c:174: void type(char * str)
                            704 ;	-----------------------------------------
                            705 ;	 function type
                            706 ;	-----------------------------------------
   233A                     707 _type:
   233A AD 82               708 	mov	r5,dpl
   233C AE 83               709 	mov	r6,dph
   233E AF F0               710 	mov	r7,b
                            711 ;	SRC/int_sio.c:176: while( *str ) wsio( *str++ );
   2340                     712 00101$:
   2340 8D 82               713 	mov	dpl,r5
   2342 8E 83               714 	mov	dph,r6
   2344 8F F0               715 	mov	b,r7
   2346 12 25 1D            716 	lcall	__gptrget
   2349 FC                  717 	mov	r4,a
   234A 60 18               718 	jz	00104$
   234C 0D                  719 	inc	r5
   234D BD 00 01            720 	cjne	r5,#0x00,00112$
   2350 0E                  721 	inc	r6
   2351                     722 00112$:
   2351 8C 82               723 	mov	dpl,r4
   2353 C0 07               724 	push	ar7
   2355 C0 06               725 	push	ar6
   2357 C0 05               726 	push	ar5
   2359 12 22 BD            727 	lcall	_wsio
   235C D0 05               728 	pop	ar5
   235E D0 06               729 	pop	ar6
   2360 D0 07               730 	pop	ar7
   2362 80 DC               731 	sjmp	00101$
   2364                     732 00104$:
   2364 22                  733 	ret
                            734 	.area CSEG    (CODE)
                            735 	.area CONST   (CODE)
                            736 	.area XINIT   (CODE)
                            737 	.area CABS    (ABS,CODE)

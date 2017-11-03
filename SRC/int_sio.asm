;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Fri Nov 03 16:21:43 2017
;--------------------------------------------------------
	.module int_sio
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetVector
	.globl _SIO_ISR
	.globl _isEmpty
	.globl _pushElement
	.globl _pullElement
	.globl _initFifo
	.globl _SPR0
	.globl _SPR1
	.globl _CPHA
	.globl _CPOL
	.globl _SPIM
	.globl _SPE
	.globl _WCOL
	.globl _ISPI
	.globl _I2CI
	.globl _I2CTX
	.globl _I2CRS
	.globl _I2CM
	.globl _MDI
	.globl _MCO
	.globl _MDE
	.globl _MDO
	.globl _CS0
	.globl _CS1
	.globl _CS2
	.globl _CS3
	.globl _SCONV
	.globl _CCONV
	.globl _DMA
	.globl _ADCI
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CAP2
	.globl _CNT2
	.globl _TR2
	.globl _XEN
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _WDE
	.globl _WDS
	.globl _WDR2
	.globl _WDR1
	.globl _PRE0
	.globl _PRE1
	.globl _PRE2
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PADC
	.globl _PSI
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EADC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _T2
	.globl _T2EX
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _DACCON
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0H
	.globl _DAC0L
	.globl _SPICON
	.globl _SPIDAT
	.globl _ADCCON3
	.globl _ADCGAINH
	.globl _ADCGAINL
	.globl _ADCOFSH
	.globl _ADCOFSL
	.globl _B
	.globl _ADCCON1
	.globl _I2CCON
	.globl _ACC
	.globl _PSMCON
	.globl _ADCDATAH
	.globl _ADCDATAL
	.globl _ADCCON2
	.globl _DMAP
	.globl _DMAH
	.globl _DMAL
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _EADRL
	.globl _WDCON
	.globl _EDATA4
	.globl _EDATA3
	.globl _EDATA2
	.globl _EDATA1
	.globl _ETIM3
	.globl _ETIM2
	.globl _ETIM1
	.globl _ECON
	.globl _IP
	.globl _P3
	.globl _IE2
	.globl _IE
	.globl _P2
	.globl _I2CADD
	.globl _I2CDAT
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPP
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _init_sio
	.globl _rsiostat
	.globl _wsio
	.globl _rsio
	.globl _type
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPP	=	0x0084
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_I2CDAT	=	0x009a
_I2CADD	=	0x009b
_P2	=	0x00a0
_IE	=	0x00a8
_IE2	=	0x00a9
_P3	=	0x00b0
_IP	=	0x00b8
_ECON	=	0x00b9
_ETIM1	=	0x00ba
_ETIM2	=	0x00bb
_ETIM3	=	0x00c4
_EDATA1	=	0x00bc
_EDATA2	=	0x00bd
_EDATA3	=	0x00be
_EDATA4	=	0x00bf
_WDCON	=	0x00c0
_EADRL	=	0x00c6
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_DMAL	=	0x00d2
_DMAH	=	0x00d3
_DMAP	=	0x00d4
_ADCCON2	=	0x00d8
_ADCDATAL	=	0x00d9
_ADCDATAH	=	0x00da
_PSMCON	=	0x00df
_ACC	=	0x00e0
_I2CCON	=	0x00e8
_ADCCON1	=	0x00ef
_B	=	0x00f0
_ADCOFSL	=	0x00f1
_ADCOFSH	=	0x00f2
_ADCGAINL	=	0x00f3
_ADCGAINH	=	0x00f4
_ADCCON3	=	0x00f5
_SPIDAT	=	0x00f7
_SPICON	=	0x00f8
_DAC0L	=	0x00f9
_DAC0H	=	0x00fa
_DAC1L	=	0x00fb
_DAC1H	=	0x00fc
_DACCON	=	0x00fd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_T2EX	=	0x0091
_T2	=	0x0090
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_EA	=	0x00af
_EADC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_PSI	=	0x00bf
_PADC	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_PRE2	=	0x00c7
_PRE1	=	0x00c6
_PRE0	=	0x00c5
_WDR1	=	0x00c3
_WDR2	=	0x00c2
_WDS	=	0x00c1
_WDE	=	0x00c0
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_XEN	=	0x00cb
_TR2	=	0x00ca
_CNT2	=	0x00c9
_CAP2	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ADCI	=	0x00df
_DMA	=	0x00de
_CCONV	=	0x00dd
_SCONV	=	0x00dc
_CS3	=	0x00db
_CS2	=	0x00da
_CS1	=	0x00d9
_CS0	=	0x00d8
_MDO	=	0x00ef
_MDE	=	0x00ee
_MCO	=	0x00ed
_MDI	=	0x00ec
_I2CM	=	0x00eb
_I2CRS	=	0x00ea
_I2CTX	=	0x00e9
_I2CI	=	0x00e8
_ISPI	=	0x00ff
_WCOL	=	0x00fe
_SPE	=	0x00fd
_SPIM	=	0x00fc
_CPOL	=	0x00fb
_CPHA	=	0x00fa
_SPR1	=	0x00f9
_SPR0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rFifo:
	.ds 32
_wFifo:
	.ds 32
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SIO_ISR'
;------------------------------------------------------------
;	SRC/int_sio.c:37: void SIO_ISR( void ) __interrupt ( 4 ) {
;	-----------------------------------------
;	 function SIO_ISR
;	-----------------------------------------
_SIO_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	SRC/int_sio.c:38: if(TI) {
	jnb	_TI,00102$
;	SRC/int_sio.c:41: SBUF = pullElement(&wFifo);
	mov	dptr,#_wFifo
	mov	b,#0x40
	lcall	_pullElement
	mov	_SBUF,dpl
;	SRC/int_sio.c:42: TI = 0;
	clr	_TI
00102$:
;	SRC/int_sio.c:44: if(RI) {
	jnb	_RI,00105$
;	SRC/int_sio.c:47: pushElement(&rFifo, SBUF);
	push	_SBUF
	mov	dptr,#_rFifo
	mov	b,#0x40
	lcall	_pushElement
	dec	sp
;	SRC/int_sio.c:48: RI = 0;
	clr	_RI
00105$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'SetVector'
;------------------------------------------------------------
;Vector                    Allocated to stack - _bp -5
;Address                   Allocated to registers r6 r7 
;TmpVector                 Allocated to registers r6 r7 
;------------------------------------------------------------
;	SRC/int_sio.c:52: void SetVector(unsigned char __xdata * Address, void * Vector)
;	-----------------------------------------
;	 function SetVector
;	-----------------------------------------
_SetVector:
	push	_bp
	mov	_bp,sp
;	SRC/int_sio.c:58: *Address = 0x02;
	mov	r6,dpl
	mov  r7,dph
	mov	a,#0x02
	movx	@dptr,a
;	SRC/int_sio.c:60: TmpVector = (unsigned char __xdata *) (Address + 1);
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
;	SRC/int_sio.c:61: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar4,r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	SRC/int_sio.c:62: ++TmpVector;
;	SRC/int_sio.c:63: *TmpVector = (unsigned char) Vector;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_sio'
;------------------------------------------------------------
;speed                     Allocated to registers r7 
;------------------------------------------------------------
;	SRC/int_sio.c:81: void init_sio( unsigned char speed )
;	-----------------------------------------
;	 function init_sio
;	-----------------------------------------
_init_sio:
	mov	r7,dpl
;	SRC/int_sio.c:83: initFifo(&rFifo);
	mov	dptr,#_rFifo
	mov	b,#0x40
	push	ar7
	lcall	_initFifo
;	SRC/int_sio.c:84: initFifo(&wFifo);
	mov	dptr,#_wFifo
	mov	b,#0x40
	lcall	_initFifo
;	SRC/int_sio.c:86: SetVector( 0x23, (void *)SIO_ISR );
	mov	r4,#_SIO_ISR
	mov	r5,#(_SIO_ISR >> 8)
	mov	r6,#0x80
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#0x0023
	lcall	_SetVector
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	SRC/int_sio.c:88: TH1       =  speed; 
	mov	_TH1,r7
;	SRC/int_sio.c:89: TMOD     |=  0x20; //Таймер 1 будет работать в режиме autoreload
	orl	_TMOD,#0x20
;	SRC/int_sio.c:90: TCON     |=  0x40; //Запуск таймера 1
	orl	_TCON,#0x40
;	SRC/int_sio.c:91: SCON      =  0x50; //Настройки последовательного канала
	mov	_SCON,#0x50
;	SRC/int_sio.c:92: ES        =  1;    //Запрещение прерываний от приемопередатчика
	setb	_ES
;	SRC/int_sio.c:93: EA        =  1;     // Enable any interrupt
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rsiostat'
;------------------------------------------------------------
;	SRC/int_sio.c:106: unsigned char rsiostat(void)  
;	-----------------------------------------
;	 function rsiostat
;	-----------------------------------------
_rsiostat:
;	SRC/int_sio.c:108: return RI;
	mov	c,_RI
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wsio'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;oldES                     Allocated to registers r6 
;fifoWasEmpty              Allocated to registers r4 r5 
;------------------------------------------------------------
;	SRC/int_sio.c:121: void wsio( unsigned char c )
;	-----------------------------------------
;	 function wsio
;	-----------------------------------------
_wsio:
	mov	r7,dpl
;	SRC/int_sio.c:123: char oldES = ES;
	mov	c,_ES
	clr	a
	rlc	a
	mov	r6,a
;	SRC/int_sio.c:125: ES = 0;
	clr	_ES
;	SRC/int_sio.c:127: fifoWasEmpty = isEmpty(&wFifo);
	mov	dptr,#_wFifo
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_isEmpty
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	SRC/int_sio.c:128: pushElement(&wFifo, c);
	push	ar6
	push	ar5
	push	ar4
	push	ar7
	mov	dptr,#_wFifo
	mov	b,#0x40
	lcall	_pushElement
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
;	SRC/int_sio.c:130: if (fifoWasEmpty) {
	mov	a,r4
	orl	a,r5
	jz	00102$
;	SRC/int_sio.c:131: TI = 1;
	setb	_TI
00102$:
;	SRC/int_sio.c:134: ES = oldES;
	mov	a,r6
	add	a,#0xff
	mov	_ES,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rsio'
;------------------------------------------------------------
;c                         Allocated to registers r6 
;oldES                     Allocated to registers r7 
;------------------------------------------------------------
;	SRC/int_sio.c:146: unsigned char rsio(void)
;	-----------------------------------------
;	 function rsio
;	-----------------------------------------
_rsio:
;	SRC/int_sio.c:149: char oldES = ES;
	mov	c,_ES
	clr	a
	rlc	a
	mov	r7,a
;	SRC/int_sio.c:151: ES = 0;
	clr	_ES
;	SRC/int_sio.c:153: if (isEmpty(&rFifo)) {
	mov	dptr,#_rFifo
	mov	b,#0x40
	push	ar7
	lcall	_isEmpty
	mov	a,dpl
	mov	b,dph
	pop	ar7
	orl	a,b
	jz	00102$
;	SRC/int_sio.c:154: c = 0;
	mov	r6,#0x00
	sjmp	00103$
00102$:
;	SRC/int_sio.c:157: c = pullElement(&rFifo);
	mov	dptr,#_rFifo
	mov	b,#0x40
	push	ar7
	lcall	_pullElement
	mov	r5,dpl
	pop	ar7
	mov	ar6,r5
00103$:
;	SRC/int_sio.c:160: ES = oldES;
	mov	a,r7
	add	a,#0xff
	mov	_ES,c
;	SRC/int_sio.c:161: return c;
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'type'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	SRC/int_sio.c:174: void type(char * str)
;	-----------------------------------------
;	 function type
;	-----------------------------------------
_type:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	SRC/int_sio.c:176: while( *str ) wsio( *str++ );
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	inc	r5
	cjne	r5,#0x00,00112$
	inc	r6
00112$:
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_wsio
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Fri Nov 03 15:46:13 2017
;--------------------------------------------------------
	.module fifo
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _initFifo
	.globl _pullElement
	.globl _pushElement
	.globl _isEmpty
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;Allocation info for local variables in function 'initFifo'
;------------------------------------------------------------
;pFifo                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	SRC/fifo.c:3: void initFifo( fifo_t* pFifo ) {
;	-----------------------------------------
;	 function initFifo
;	-----------------------------------------
_initFifo:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SRC/fifo.c:4: pFifo->size = 0;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	lcall	__gptrput
;	SRC/fifo.c:5: pFifo->head = 0;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'pullElement'
;------------------------------------------------------------
;pFifo                     Allocated to registers r5 r6 r7 
;element                   Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	SRC/fifo.c:8: unsigned char pullElement( fifo_t* pFifo ) {
;	-----------------------------------------
;	 function pullElement
;	-----------------------------------------
_pullElement:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	SRC/fifo.c:9: unsigned char element = pFifo->elems[pFifo->head];
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
;	SRC/fifo.c:10: if (pFifo->size == 0) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	SRC/fifo.c:11: return 0;
	jnz	00102$
	mov	dpl,a
	sjmp	00103$
00102$:
;	SRC/fifo.c:13: pFifo->head = (pFifo->head + 1) % (FIFO_MAX_SIZE - 1);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	lcall	__modsint
	mov	r2,dpl
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	SRC/fifo.c:14: pFifo->size--;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	dec	r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	SRC/fifo.c:15: return element;
	mov	dpl,r4
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getTail'
;------------------------------------------------------------
;pFifo                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	SRC/fifo.c:18: static unsigned char getTail( const fifo_t* pFifo ) {
;	-----------------------------------------
;	 function getTail
;	-----------------------------------------
_getTail:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	SRC/fifo.c:19: return (pFifo->head + pFifo->size) % (FIFO_MAX_SIZE - 1);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a,r2
	mov	dpl,a
	mov	a,r7
	addc	a,r4
	mov	dph,a
	mov	a,#0x7D
	push	acc
	clr	a
	push	acc
	lcall	__modsint
	mov	r6,dpl
	dec	sp
	dec	sp
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pushElement'
;------------------------------------------------------------
;element                   Allocated to stack - _bp -3
;pFifo                     Allocated to registers r5 r6 r7 
;tail                      Allocated to stack - _bp +1
;------------------------------------------------------------
;	SRC/fifo.c:22: void pushElement( fifo_t* pFifo, unsigned char element ) {
;	-----------------------------------------
;	 function pushElement
;	-----------------------------------------
_pushElement:
	push	_bp
	mov	_bp,sp
	inc	sp
;	SRC/fifo.c:23: unsigned char tail = getTail(pFifo);
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_getTail
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	SRC/fifo.c:24: pFifo->elems[tail] = element;
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	SRC/fifo.c:25: pFifo->size++;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isEmpty'
;------------------------------------------------------------
;pFifo                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	SRC/fifo.c:28: int isEmpty( fifo_t* pFifo ) {
;	-----------------------------------------
;	 function isEmpty
;	-----------------------------------------
_isEmpty:
;	SRC/fifo.c:29: return pFifo->size == 0;
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r5,a
	clr	a
	cjne	r5,#0x00,00103$
	inc	a
00103$:
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	dpl,r5
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

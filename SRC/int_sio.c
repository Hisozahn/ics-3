/****************************************************************************

    sio.c - ���������� ������� ����������������� ������
            ��� �������� ������ SDK-1.1

    (C) sio.c, ������ �.�.  2007 �.

��� ��������� ���������; �� ������ �������� �������������� �� �/���
�������������� �� � ������������ � ������������� ������������
��������� GNU, �������������� ������ ���������� ��; ���� ������ 2,
���� (�� ������ ������) ����� ����� ������� ������.

��� ��������� ���������������� � �������, ��� ��� ����� ��������,
�� ��� �����-���� ��������; ���� ��� ��������������� ��������
������������ �������� ��� ����������� ��� ���������� ����.  ���
��������� ��������� �������� �������� ������������� ������������
�������� GNU.

�� ������ ���� �������� ����� ������������� ������������ ��������
GNU ������ � ���� ����������; ���� ���, �������� �� ������: Free
Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
02111-1307 USA

----------------------------------------------------------------------------
������, �����-���������, ������� �������������� ������� ��������� 
e-mail: kluchev@d1.ifmo.ru

****************************************************************************/
#include "aduc812.h"
#include "int_sio.h"
#include "fifo.h"
#include "led.h"
#include "mode.h"

static fifo_t rFifo;
static fifo_t wFifo;

void SIO_ISR( void ) __interrupt ( 4 ) {
	if(TI) {
		TI = 0;
		if (!isEmpty(&wFifo)) {
			SBUF = pullElement(&wFifo);
		}
    }
    if(RI) {
		unsigned char t = SBUF;
        pushElement(&rFifo, t);
		RI = 0;
    }
}

void SetVector(unsigned char __xdata * Address, void * Vector)
{
	unsigned char __xdata * TmpVector; // ��������� ����������//

	// ������ ������ �� ���������� ������ ������������ 
	// ��� ������� �������� ���������� ljmp, ������ 02h
	*Address = 0x02;
	// ����� ������������ ����� �������� Vector
	TmpVector = (unsigned char __xdata *) (Address + 1);
	*TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	++TmpVector;
	*TmpVector = (unsigned char) Vector;
	// ����� �������, �� ������ Address ������
	// ������������� ���������� ljmp Vector
}


/**----------------------------------------------------------------------------
                        init_sio()
-------------------------------------------------------------------------------
�������������� ���������������� ����� �� �������� ��������. ���������� ������ 1

����:       char speed - ��������. �������� �����������, ���������� � 
                ������������ ����� sio.h
            bit sdouble - ������������ ��������: 0 - �� ����������� ��������,
                �������� ���������� speed; 1 - �����������.
�����:      ���
���������:  ���
----------------------------------------------------------------------------- */
void init_sio( unsigned char speed )
{
    initFifo(&rFifo);
    initFifo(&wFifo);
    
    SetVector( 0x2023, (void *)SIO_ISR );
	
    TH1       =  speed;
    TMOD     |=  0x20; //������ 1 ����� �������� � ������ autoreload
    TCON     |=  0x40; //������ ������� 1
    SCON      =  0x50; //��������� ����������������� ������
    ES        =  1;    // Enable serial interrupt
    EA        =  0;     // Disable any interrupt	
}

/**----------------------------------------------------------------------------
                        RSioStat()
-------------------------------------------------------------------------------
���������� ��������� ��������, ���� ����� ������ �� ����

����:       ���
�����:      ���
���������:  0 - ����� ������ ����;
            1 - ��� ������ ������
----------------------------------------------------------------------------- */
unsigned char rsiostat(void)  
{
	if (g_mode == MODE_CHAR) {
		return RI;
	}
	else {
		return !isEmpty(&rFifo);
	}
	
}


/**----------------------------------------------------------------------------
                        wsio
-------------------------------------------------------------------------------
���������� ������ �� ����������������� ������

����:       unsigned char c - ������, ������� ����� ���������
�����:      ���
���������:  ���
----------------------------------------------------------------------------- */
void wsio( unsigned char c )
{	
	if (g_mode == MODE_CHAR) {
		SBUF = c;
		TI   = 0;
		while( !TI );
	}
	else {
		char oldES = ES;
		int fifoWasEmpty;
		ES = 0;
		
		fifoWasEmpty = isEmpty(&wFifo);

		pushElement(&wFifo, c);    
		if (fifoWasEmpty) {
			TI = 1;		
		}    
		ES = oldES;
	}
    		
}

/**----------------------------------------------------------------------------
                        rsio()
-------------------------------------------------------------------------------
���������� ������ ������� �� ����������������� ������ � ���������� ���.

����:       ���
�����:      ���
���������:  �������� ������
----------------------------------------------------------------------------- */
unsigned char rsio(void)
{	
	if (g_mode == MODE_CHAR) {
		while( !RI );
		RI = 0;
		return SBUF;
	}
	else {
		unsigned char c;
		char oldES = ES;
		
		ES = 0;
		
		if (isEmpty(&rFifo)) {
			c = 0;
		}
		else {
			c = pullElement(&rFifo);
		}
		
		ES = oldES;
		return c;
	}
    
}


/**----------------------------------------------------------------------------
                        type()
-------------------------------------------------------------------------------
������� ASCIIZ-������ � ���������������� �����

����:       char *str - ��������� �� ������
�����:      ���
���������:  ���
----------------------------------------------------------------------------- */
void type(char * str)
{
	if (g_mode == MODE_CHAR) {	
		while( *str ) wsio( *str++ );
	}
	else {
		char oldES = ES;
		int fifoWasEmpty;
		static int max_size = 0;
		ES = 0;
		
		fifoWasEmpty = isEmpty(&wFifo);

		while( *str ) {
			pushElement(&wFifo,*str++);
		}
		if (fifoWasEmpty) {
			TI = 1;		
		}    
		ES = oldES;	
	}
}


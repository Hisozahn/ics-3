/****************************************************************************

    test_sio.c - ���� �������� ����������������� ������
                 ��� �������� ������ SDK-1.1

    (C) test_sio.c, ������ �.�.  2007 �.

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
//#include "sio.h"
#include "int_sio.h"
#include "dip.h"
#include "led.h"
#include "fifo.h"
#include "mode.h"
#include <stdio.h>
#include <ctype.h>
#include <string.h>

Mode g_mode;

static void clear_error() {
	leds(0);
}

static void error() {
	leds(0x77);
}

static void process_char() {
	if( rsiostat() )
	{		
		char char_buf[29];
		unsigned char c;
		clear_error();
		c = rsio();
		
		if (c >= 'a' && c <= 'z') {
			unsigned char ptr = 0;
			unsigned char l = c - 0x20 - 1;
			char_buf[ptr++] = c;
			
			for (; l != 'A' - 1; l--, ptr++) {
				char_buf[ptr] = l;
			}
			char_buf[ptr++] = '\r';
			char_buf[ptr++] = '\n';
			char_buf[ptr++] = '\0';
			
			type(char_buf);
		}
		else {
			error();
		}			
	}
}
static unsigned char parse_hex(char* str) {
	unsigned char result = 0;
	while (*str) {		
		char c = tolower(*str);
		result *=16;
		
		if (c >= '0' && c <= '9') {
			result += c - '0';			
		}
		else if (c >= 'a' && c <= 'f') {
			result += c - 'a' + 10;
		}
		else {
			error();
			return result / 16;
		}
		str++;
	}
	return result;
}


static void type_converted(char* str) {
	char buffer[4];
	unsigned char i;
	unsigned char index = 0;
	unsigned char number = parse_hex(str);

	buffer[3] = 0;
	buffer[2] = '0';
	buffer[1] = '0';
	buffer[0] = '0';
	while (number != 0) {
		i = number % 10;
		number /= 10;
		buffer[2 - index] = '0' + i;
		++index;
	}
	type(buffer);
}


void convert_number() {
	int i = 0;
    char buffer[30];
	unsigned char c;
	memset(buffer, 0, sizeof(buffer) * sizeof(buffer[0]));

	i = 0;
	while(1) {
		if (rsiostat()) {
			if ((c = rsio()) != '\r') {
				if (c == '\n') {
					continue;
				}
				buffer[i] = c;
				++i;
				wsio(c);
			}
			else {
				break;
			}
		}			
	}
	clear_error();
	type("\r\n");
	type_converted(buffer);
	type("\r\n");
}

void main( void )
{
    
	init_sio( S2400 );

    while( 1 )
    {
		if (getDips() != 0) {
			EA = 0;
			g_mode = MODE_CHAR;
		}
		else {
			g_mode = MODE_NUM;
			EA = 1;
		}
		
		if (g_mode == MODE_CHAR) {
			process_char();
		}
		else {
			convert_number();
		} 
    }
}    

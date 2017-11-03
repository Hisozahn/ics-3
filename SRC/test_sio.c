/****************************************************************************

    test_sio.c - тест драйвера последовательного канала
                 для учебного стенда SDK-1.1

    (C) test_sio.c, Ключев А.О.  2007 г.

Это свободная программа; вы можете повторно распространять ее и/или
модифицировать ее в соответствии с Универсальной Общественной
Лицензией GNU, опубликованной Фондом Свободного ПО; либо версии 2,
либо (по вашему выбору) любой более поздней версии.

Эта программа распространяется в надежде, что она будет полезной,
но БЕЗ КАКИХ-ЛИБО ГАРАНТИЙ; даже без подразумеваемых гарантий
КОММЕРЧЕСКОЙ ЦЕННОСТИ или ПРИГОДНОСТИ ДЛЯ КОНКРЕТНОЙ ЦЕЛИ.  Для
получения подробных сведений смотрите Универсальную Общественную
Лицензию GNU.

Вы должны были получить копию Универсальной Общественной Лицензии
GNU вместе с этой программой; если нет, напишите по адресу: Free
Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
02111-1307 USA

----------------------------------------------------------------------------
Россия, Санкт-Петербург, кафедра вычислительной техники СПбГУИТМО  
e-mail: kluchev@d1.ifmo.ru

****************************************************************************/
#include "aduc812.h"
#include "sio.h"
#include "dip.h"
#include "led.h"
#include "mode.h"
#include <stdio.h>
#include <ctype.h>

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
			//wsio(c);
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
		}
		str++;
	}
	return result;
}

static void convert_number() {
	char input[] = "7F";
	unsigned char c = parse_hex(input);
	
	leds(c);
}

void main( void )
{
unsigned char c;
    /*while (1) {
        leds(getDips());
    }*/
    init_sio( S9600 );

    type("’Ґбв ¤а ©ўҐа  SIO ¤«п бвҐ­¤  SDK-1.1\r\n");
    type("Ќ ¦Ё¬ ©вҐ Є­®ЄЁ ¤«п вҐбвЁа®ў ­Ёп... \r\n");

    while( 1 )
    {
		if (g_mode != MODE_CHAR) {
			process_char();
		}
		else {
			convert_number();
		}        
    }
}    

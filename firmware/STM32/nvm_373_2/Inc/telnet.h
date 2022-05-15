/*
 * telnet.h
 *
 *  Created on: 30 ����. 2018 �.
 *      Author: maxx
 */

#ifndef TELNET_H_
#define TELNET_H_

#include "stdint.h"
#include "globals.h"

#define TELNET_PORT	23
#define TELNET_AUTH_PORT 24

int32_t telnet_srv(uint8_t sn, uint8_t* buf, uint16_t port);

int32_t telnet_auth_srv(uint8_t sn, uint8_t* buf, uint16_t port);


/*Telnet test debug message printout enable */
//#define	_TELNET_DEBUG_

/* TELNET_BUF_SIZE define for TELNET example */
#ifndef TELNET_BUF_SIZE
	#define TELNET_BUF_SIZE			64
#endif

void telnet_call (char * str_in, char * str_out);


#endif /* TELNET_H_ */

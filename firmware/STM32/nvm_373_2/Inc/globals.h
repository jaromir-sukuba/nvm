/*
 * globals.h
 *
 *  Created on: 29 нояб. 2018 г.
 *      Author: maxx
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_

//#define PRINTF_EN 1
#if PRINTF_EN
#define PRINTF(FORMAT,args...) printf_P(PSTR(FORMAT),##args)
#else
#define PRINTF(...)
#endif


#endif /* GLOBALS_H_ */

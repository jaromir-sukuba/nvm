/*
 * telnet.c
 *
 *  Created on: 30 ����. 2018 �.
 *      Author: maxx
 */
//#include <stdio.h>
#include <string.h>
#include "telnet.h"
#include "socket.h"
#include "wizchip_conf.h"

#define GREETING_MSG 		 "Telnet server.\r\nType <Help> or <Q> to exit.\r\n"
#define PASS_MSG 		 	 "\r\n> pass: "
#define BYE_MSG				 "\r\nBye-bye!\r\n"

#define _passcode				 "1234" //Pass for authorization telnet session

//Command processor exec command from telnet server
void processCommand(char *command, char *answer)
{
    //Loopback mode
	//sprintf_P(answer,PSTR("\r\n> %s\r\n"), command);
	//jar
	/*
	if((strcasestr_P(command, PSTR("HELP")) != 0) ||\
		(strncmp_P(command, PSTR("?"), 1) == 0)	)
	{
		sprintf_P(answer,PSTR("\r\nAvailable commands:\r\n"\
				"Help/Echo xyz/FreeRAM/Uptime/LED_(ON/OFF/TGL)\r\n"));

	}
	else if(strcasestr_P(command, PSTR("ECHO ")) != 0)
	{
		sprintf_P(answer,PSTR("\r\n> %s\r\n"), (char *)(command+5));
	}
	else if(strcasestr_P(command, PSTR("Uptime")) != 0)
	{
		sprintf_P(answer,PSTR("\r\nServer uptime: %lu sec\r\n"), millis()/1000);
	}
	else if(strcasestr_P(command, PSTR("FreeRAM")) != 0)
	{
		sprintf_P(answer,PSTR("\r\nRAM free: %u bytes\r\n"), freeRam());
	}
	else if(strcasestr_P(command, PSTR("LED_ON")) != 0)
	{
		led1_high();
		sprintf_P(answer,PSTR("\r\n> LED: %s\r\n"), (led1_read()? "ON": "OFF"));
	}
	else if(strcasestr_P(command, PSTR("LED_OFF")) != 0)
	{
		led1_low();
		sprintf_P(answer,PSTR("\r\n> LED: %s\r\n"), (led1_read()? "ON": "OFF"));
	}
	else if(strcasestr_P(command, PSTR("LED_TGL")) != 0)
	{
		led1_tgl();
		sprintf_P(answer,PSTR("\r\n> LED: %s\r\n"), (led1_read()? "ON": "OFF"));
	}
	else
	{
		sprintf_P(answer,PSTR("\r\n??Unknown command: <%s>\r\nTry <Help>\r\n"), command);
	}
	*/

}
char cmd_buffer[TELNET_BUF_SIZE] = "\0";
uint8_t cmd_buffer_len;
char msg_answer[128] = "\0";

int32_t telnet_srv(uint8_t sn, uint8_t* buf, uint16_t port)
{
   int32_t ret;
   uint16_t size = 0;


#ifdef _TELNET_DEBUG_
   uint8_t destip[4];
   uint16_t destport;
#endif

   switch(getSn_SR(sn))
   {
      case SOCK_ESTABLISHED :
         if(getSn_IR(sn) & Sn_IR_CON)
         {
        	//Open connection
#ifdef _TELNET_DEBUG_
			getSn_DIPR(sn, destip);
			destport = getSn_DPORT(sn);

			printf("%d telnet:Connected - %d.%d.%d.%d : %u\r\n",sn, destip[0], destip[1], destip[2], destip[3], destport);
#endif
			setSn_IR(sn,Sn_IR_CON);
			cmd_buffer_len = 0;
			//Send welcome message to client
			ret = send(sn, GREETING_MSG, strlen(GREETING_MSG));
			if(ret < 0)
			{
				close(sn);
				return ret;
			}
         }
		 if((size = getSn_RX_RSR(sn)) > 0) // Don't need to check SOCKERR_BUSY because it doesn't not occur.
         {
			//Here when receive message from client
			if(size > TELNET_BUF_SIZE) size = TELNET_BUF_SIZE;
			ret = recv(sn, buf, size); //receive message

			if(ret <= 0) return ret;      // check SOCKERR_BUSY & SOCKERR_XXX. For showing the occurrence of SOCKERR_BUSY.
			size = (uint16_t) ret;

			//Parse <Q> to quit session
			if(buf[0] == 'Q')
			{
				//Send welcome message to client
				ret = send(sn, BYE_MSG, strlen(BYE_MSG));
				//Disconnect
				disconnect(sn);
				close(sn);
				return ret;
			}
			else
			{
				//Loop-back received back, just for test!!!
/*
				ret = send(sn, buf, size);
				if(ret < 0)
				{
					close(sn);
					return ret;
				}
*/

				//Parse received message from telnet client
				buf[size] = 0x0; //Insert null-terminate symbol (for string parse)

				//Print out command from telnet client
				//PRINTF(">> %s\r\n", msg_receive);

				//Fill cmd_buffer until '\n' (NEW LINE) received
				//some bulletproof for overflow protection
				if(size > TELNET_BUF_SIZE) size = TELNET_BUF_SIZE;
				for(int32_t i = 0; i < size; i++)
				{
					if(buf[i] == '\n') //PARSE '\n'(0x0A NEW LINE)
					{
						cmd_buffer[cmd_buffer_len++] = '\n';
						cmd_buffer[cmd_buffer_len++] = 0x0; //Received EOL,so process command
						//Clear commnad buffe
						cmd_buffer_len = 0;
						if (cmd_buffer[0]>127) cmd_buffer[0] = 0;
						if (cmd_buffer[0]<' ') cmd_buffer[0] = 0;
						telnet_call(cmd_buffer, msg_answer);
						//Exec process command
//						processCommand(cmd_buffer, msg_answer);
						//Send answer to telnet client
						send(sn, msg_answer, strlen(msg_answer));

					}
					else if(buf[i] == '\r') //PARSE '\r'(0x0D RETURN LINE)
					{
						//Suppress CR symbol
					}
					else
					{
						// Any other symbol, fill input buffer
						cmd_buffer[cmd_buffer_len++] = buf[i];
					}

				}
			}
         }
         break;
      case SOCK_CLOSE_WAIT :
#ifdef _TELNET_DEBUG_
         //printf("%d:CloseWait\r\n",sn);
#endif
         if((ret = disconnect(sn)) != SOCK_OK) return ret;
#ifdef _TELNET_DEBUG_
         printf("%d telnet:Socket Closed\r\n", sn);
#endif
         break;
      case SOCK_INIT :
#ifdef _TELNET_DEBUG_
    	 printf("%d telnet:Listen, TELNET server, port [%u]\r\n", sn, port);
#endif
         if( (ret = listen(sn)) != SOCK_OK) return ret;
         break;
      case SOCK_CLOSED:
#ifdef _TELNET_DEBUG_
         //printf("%d:TCP server loopback start\r\n",sn);
#endif
         if((ret = socket(sn, Sn_MR_TCP, port, 0x00)) != sn) return ret;
#ifdef _TELNET_DEBUG_
         //printf("%d:Socket opened\r\n",sn);
#endif
         break;
      default:
         break;
   }
   return 1;
}

//Command processor authorization
uint8_t processAuth(char * pass)
{
	//jar
	return 1;
	/*
	if(strstr_P(pass, PSTR(_passcode)) != 0)
	{
		//PASS OK
		return 1;
	}
	else
	{
		//PASS ERROR
		return 0;
	}
	*/
}

#define TELNET_STATE_BEGIN 0
#define TELNET_STATE_AUTH 1
#define TELNET_STATE_PROCESS 2

int32_t telnet_auth_srv(uint8_t sn, uint8_t* buf, uint16_t port)
{
   int32_t ret;
   uint16_t size = 0;
    static uint8_t tel_st = TELNET_STATE_BEGIN;
	static char cmd_buffer[TELNET_BUF_SIZE] = "\0";
	static uint8_t cmd_buffer_len;
	static char msg_answer[128] = "\0";

#ifdef _TELNET_DEBUG_
   uint8_t destip[4];
   uint16_t destport;
#endif

   switch(getSn_SR(sn))
   {
      case SOCK_ESTABLISHED :
         if(getSn_IR(sn) & Sn_IR_CON)
         {
        	//Open connection
#ifdef _TELNET_DEBUG_
			getSn_DIPR(sn, destip);
			destport = getSn_DPORT(sn);

			printf("%d telnet_auth:Connected - %d.%d.%d.%d : %u\r\n",sn, destip[0], destip[1], destip[2], destip[3], destport);
#endif
			setSn_IR(sn,Sn_IR_CON);
			cmd_buffer_len = 0;
			//Send pass message to client
			ret = send(sn, PASS_MSG, strlen(PASS_MSG));
			if(ret < 0)
			{
				close(sn);
				return ret;
			}
			tel_st = TELNET_STATE_AUTH;
         }
		 if((size = getSn_RX_RSR(sn)) > 0) // Don't need to check SOCKERR_BUSY because it doesn't not occur.
         {
			//Here when receive message from client
			if(size > TELNET_BUF_SIZE) size = TELNET_BUF_SIZE;
			ret = recv(sn, buf, size); //receive message

			if(ret <= 0) return ret;      // check SOCKERR_BUSY & SOCKERR_XXX. For showing the occurrence of SOCKERR_BUSY.
			size = (uint16_t) ret;

			//Parse <Q> to quit session
			if(buf[0] == 'Q')
			{
				//Send welcome message to client
				ret = send(sn, BYE_MSG, strlen(BYE_MSG));
				//Disconnect
				disconnect(sn);
				close(sn);
				return ret;
			}
			else
			{
				//Loop-back received back, just for test
				/*
				ret = send(sn, buf, size);
				if(ret < 0)
				{
					close(sn);
					return ret;
				}
				*/

				//Parse received message from telnet client
				buf[size] = 0x0; //Insert null-terminate symbol (for string parse)

				//Print out command from telnet client
				//PRINTF(">> %s\r\n", msg_receive);

				//Fill cmd_buffer until '\n' (NEW LINE) received
				//some bulletproof for overflow protection
				if(size > TELNET_BUF_SIZE) size = TELNET_BUF_SIZE;
				for(int32_t i = 0; i < size; i++)
				{
					if(buf[i] == '\n') //PARSE '\n'(0x0A NEW LINE)
					{
						cmd_buffer[cmd_buffer_len++] = 0x0; //Received EOL,so process command
						//Clear commnad buffe
						cmd_buffer_len = 0;
						//String to command done
						//Check state session (authorization done or not)
						if(tel_st == TELNET_STATE_AUTH)
						{
							//Authorization required
							if (processAuth(cmd_buffer))
							{
								//Authorization OK
								tel_st = TELNET_STATE_PROCESS;
								//Send greetings message to client
								ret = send(sn, GREETING_MSG, strlen(GREETING_MSG));
							}
							else
							{
								//Authorization ERROR
								tel_st = TELNET_STATE_BEGIN;
								//Send bye message to client
								ret = send(sn, BYE_MSG, strlen(BYE_MSG));
								//Disconnect
								disconnect(sn);
								close(sn);
								return ret;
							}
						}
						else
						{
							//Authorization done
							//Exec process command
							processCommand(cmd_buffer, msg_answer);
							//Send answer to telnet client
							send(sn, msg_answer, strlen(msg_answer));
						}
					}
					else if(buf[i] == '\r') //PARSE '\r'(0x0D RETURN LINE)
					{
						//Suppress CR symbol
					}
					else
					{
						// Any other symbol, fill input buffer
						cmd_buffer[cmd_buffer_len++] = buf[i];
					}

				}
			}
         }
         break;
      case SOCK_CLOSE_WAIT :
#ifdef _TELNET_DEBUG_
         //printf("%d:CloseWait\r\n",sn);
#endif
         tel_st = TELNET_STATE_BEGIN;
         if((ret = disconnect(sn)) != SOCK_OK) return ret;
#ifdef _TELNET_DEBUG_
         printf("%d telnet_auth:Socket Closed\r\n", sn);
#endif
         break;
      case SOCK_INIT :
#ifdef _TELNET_DEBUG_
    	 printf("%d telnet_auth:Listen, TELNET_AUTH server, port [%u]\r\n", sn, port);
#endif
         tel_st = TELNET_STATE_BEGIN;
    	 if( (ret = listen(sn)) != SOCK_OK) return ret;
         break;
      case SOCK_CLOSED:
#ifdef _TELNET_DEBUG_
         //printf("%d:TCP server loopback start\r\n",sn);
#endif
         if((ret = socket(sn, Sn_MR_TCP, port, 0x00)) != sn) return ret;
#ifdef _TELNET_DEBUG_
         //printf("%d:Socket opened\r\n",sn);
#endif
         tel_st = TELNET_STATE_BEGIN;
         break;
      default:
         break;
   }
   return 1;
}



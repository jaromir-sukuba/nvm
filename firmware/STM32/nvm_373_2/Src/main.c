#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stm32f373xc.h"
#include "globals.h"
#include "socket.h"
#include "wizchip_conf.h"
#include "loopback.h"
#include "telnet.h"
#include "dhcp.h"
#include "hw.h"
#include "scpi.h"
#include "acal.h"

char lcd_str[50],disp_msg[30],scpi_response[50],volt_reading[20],tx_str[60];
uint8_t pwm_div=0, pwm_cnt=0;
uint8_t vol_hist_ptr=0;
uint8_t f_vol_newval,adc_update_stat,f_disp_update;
uint8_t f_input_changed,f_eesave_sets,f_eesave_cal1,f_eth_avilable,f_cal_unlocked=0;
uint8_t uzero_enabled[RANGE_MAX+1];
uint8_t range,f_range_updated,main_state;
int16_t nd;
uint16_t tick_main, tick_kbd,tick_adcu,tick_eth,tick_psu;
float voltage,voltage_avg,voltage_zero,voltage_raw,voltage_corr;
float voltage_uzero[RANGE_MAX+1],voltage_display,vol_hist[70];
volatile uint8_t rx_msg[10],rx_msg_ptr,rx_flag,adc_data[6];

key_var keys,keys_new,keys_old;
settings_var settings;
calibration_var calibration_act;
scpi_t scpi_context;
adc_cfg_var adc_cfg;

static char scpi_input_buffer[SCPI_INPUT_BUFFER_LENGTH];
scpi_error_t scpi_error_queue_data[SCPI_ERROR_QUEUE_SIZE];

int16_t menu_items_val[MENU_ITEMS] = {0,0,0,0,0};
const char menu_items_text[MENU_ITEMS][DISPLAY_LEN] =
		{"AUTOZERO ON  ","DIGITS   ","AC SYNC SAMPLING  ","BEEP ON   ","GPIB ADDRESS   "};
const int16_t menu_items_limit_max[MENU_ITEMS] = {1,6,1,1,31};
const int16_t menu_items_limit_min[MENU_ITEMS] = {0,3,0,0,0};
const char nplc_settings[5] = {1,2,5,10,20};
uint8_t gDATABUF_DHCP[DATA_BUF_SIZE_DHCP],my_dhcp_retry = 0,run_user_applications = 0;
uint8_t ethBuf0[ETH_MAX_BUF_SIZE],ethBuf1[ETH_MAX_BUF_SIZE];
uint8_t ethBut3_TELNET[TELNET_BUF_SIZE],ethBut4_TELNET[TELNET_BUF_SIZE];
wiz_NetInfo netInfo = { .mac  = {0x00, 0x08, 0xdc, 0xab, 0xcd, 0xef}, // Mac address
		.ip   = {192, 168, 0, 199},         // IP address
		.sn   = {255, 255, 255, 0},         // Subnet mask
		.dns =  {8,8,8,8},			  // DNS address (google dns)
		.gw   = {192, 168, 0, 1}, // Gateway address
		.dhcp = NETINFO_DHCP};    //Static IP configuration
wiz_NetInfo netInfo_r;

void check_network_information (void)
	{
	wizchip_getnetinfo(&netInfo_r);
	if(wizphy_getphylink() == PHY_LINK_ON) f_eth_avilable = 1;
	else f_eth_avilable = 0;
	}

void telnet_call (char * str_in, char * str_out)
{
	if (SCPI_Input(&scpi_context, str_in, strlen(str_in))==TRUE)
		{
		}
}

/*******************************************************
 * @ brief Call back for ip assing & ip update from DHCP
 *******************************************************/
void my_ip_assign(void)
{
   getIPfromDHCP(netInfo.ip);
   getGWfromDHCP(netInfo.gw);
   getSNfromDHCP(netInfo.sn);
   getDNSfromDHCP(netInfo.dns);
   netInfo.dhcp = NETINFO_DHCP;
   /* Network initialization */
   //Net_Conf();      // apply from DHCP
	wizchip_setnetinfo(&netInfo);// apply from DHCP
//#ifdef _MAIN_DEBUG_
//   Display_Net_Conf();
//	print_network_information();
#if 0
   PRINTF("DHCP LEASED TIME : %ld Sec.\r\n", getDHCPLeasetime());
   PRINTF("\r\n");
#endif
}

void my_ip_conflict(void)
{
}


void TIM6_DAC1_IRQHandler(void)
    {
    TIM6->SR=0;
    TIM6->CR1=0x0000;
    NVIC_DisableIRQ(TIM6_DAC1_IRQn);
    if (rx_msg_ptr==6)
		{
		rx_flag=1;
		adc_data[0]=rx_msg[0];
		adc_data[1]=rx_msg[1];
		adc_data[2]=rx_msg[2];
		adc_data[3]=rx_msg[3];
		adc_data[4]=rx_msg[4];
		adc_data[5]=rx_msg[5];
		}
    rx_msg_ptr=0;
    }

void USART2_IRQHandler(void)
    {
    uint8_t b;
    b = USART2->RDR;
    rx_msg[rx_msg_ptr++] = b;
    if (rx_msg_ptr>9) rx_msg_ptr = 9;
    TIM6->CR1=0x0000;
    TIM6->SR=0;
    TIM6->CNT=0x0000;
    TIM6->PSC=0x0000;
    TIM6->ARR=1600;
    TIM6->DIER=0x0001;
    TIM6->CR1=0x0001;
    NVIC_EnableIRQ(TIM6_DAC1_IRQn);
    }

void USART3_IRQHandler(void)
    {
    uint8_t b;
    b = USART3->RDR;
    }


void send_adc_config (uint32_t config_word)
	{
	LO(GPIOA, 1);
	delay_ms(1);
	uart2_send_byte((config_word>>0)&0xFF);
	delay_ms(1);
	uart2_send_byte((config_word>>8)&0xFF);
	delay_ms(1);
	uart2_send_byte((config_word>>16)&0xFF);
	delay_ms(1);
	uart2_send_byte((config_word>>24)&0xFF);
	delay_ms(1);
	HI(GPIOA, 1);
	}



void eeprom_task (void)
	{
	if (f_eesave_sets)
		{
		f_eesave_sets = 0;
		settings_save(EE_ADDR_SETS,&settings);
		}
	}

void keyboard_task (void)
	{
	if ((uint16_t)(get_tick()-tick_kbd)>INT_KBD)
		{
		tick_kbd = get_tick();
		keys_new.INT16 = kbd_get_keys();
		if (((keys_new.INT16^keys_old.INT16)&keys_new.INT16)&&(settings.beep)) buzzer_start(9, 10);
    	keys.INT16 = keys.INT16 | ((keys_new.INT16^keys_old.INT16)&keys_new.INT16);
    	keys_old.INT16 =keys_new.INT16;
		}
	}

void adc_task (void)
	{
	int16_t adc_cvmul;
	int32_t adcres,adcres_a,adcres_b;
	adc_cvmul = calibration_act.adc_scale;
	uint16_t n1,n2,n3,az,i;
	static uint16_t np;
	if (rx_flag==1)
		{
		rx_flag=0;
		if (adc_data[4]&0x80) az = 1;
		else az = 0;
		adc_data[4] = adc_data[4]&0x7F;
		n1 = (((uint16_t)(adc_data[0]))<<8)+(((uint16_t)(adc_data[1]))<<0);
		n2 = (((uint16_t)(adc_data[2]))<<8)+(((uint16_t)(adc_data[3]))<<0);
		n3 = (((uint16_t)(adc_data[4]))<<8)+(((uint16_t)(adc_data[5]))<<0);
		n3 = n3>>1;
		nd = n3-np;
		np = n3;
		adcres_a = (((int32_t)(n1))*((int32_t)(adc_cvmul)));
		adcres_b = (((int32_t)(n2))*((int32_t)(-adc_cvmul)));
		adcres = nd-(adcres_a + adcres_b);
		voltage_raw = ((float)(adcres))/(1991580.0/10.0);
		voltage_raw = voltage_raw / ((float)(nplc_settings[settings.nplc])/2.0);
//		sprintf(tx_str,"%u %u %u %d %d %f\n",n1,n2,n3,nd,az,voltage_raw);
//		uart3_send_str(tx_str);
		if (az==1) voltage_zero = voltage_raw;
		else
			{
			voltage = voltage_raw - voltage_zero;
//			voltage = voltage/(1990635.0/10.0);
//			voltage = voltage / ((float)(nplc_settings[settings.nplc])/2.0);
			}
		if (az==0)
			{
			if (settings.filter_digital>1)
				{
				vol_hist[vol_hist_ptr++] = voltage;
				if (vol_hist_ptr>=settings.filter_digital)
					vol_hist_ptr=0;
				voltage = 0;
				for (i=0;i<settings.filter_digital;i++) voltage = voltage + vol_hist[i];
				voltage = voltage / ((float)(settings.filter_digital));
				}
			voltage_corr = (voltage + calibration_act.ranges[range].range_zero_corr) / calibration_act.ranges[range].range_gain_corr;
			f_vol_newval = 1;
			}
		}
	if (adc_update_stat==1)
		{
		send_adc_config(adc_cfg.INT32);
		if ((adc_cfg.re1a)|(adc_cfg.re1b)|(adc_cfg.re2a)|(adc_cfg.re2b))
			{
			tick_adcu = get_tick();
			adc_update_stat=2;
			}
		else
			{
			adc_update_stat=0;
			}
		}
	if (adc_update_stat==2)
		{
		if ((uint16_t)(get_tick()-tick_adcu)>INT_ADC_DU)
			{
			adc_cfg.re1a=0;
			adc_cfg.re2a=0;
			adc_cfg.re1b=0;
			adc_cfg.re2b=0;
			send_adc_config(adc_cfg.INT32);
			adc_update_stat=0;
			}
		}
	}
void psu_task (void)
	{
	if ((uint16_t)(get_tick()-tick_psu)>INT_PSU)
		{
		tick_psu = get_tick();
		pwm_set(pwm_div);
		if (pwm_div<66) pwm_div++;
		}

	}

void main_state_normal (void)
	{
	memset(lcd_str,' ',sizeof(lcd_str));
	strcpy (lcd_str+0,volt_reading);
	sprintf (lcd_str+20,"CH%d Z%d %dNPLC ETH%d",settings.input+1,uzero_enabled[range],nplc_settings[settings.nplc],f_eth_avilable);
	if (keys.up)
		{
		keys.up=0;
		if (range<RANGE_MAX) range++;
		f_range_updated = 1;
		}
	if (keys.down)
		{
		keys.down=0;
		if (range>0) range--;
		f_range_updated = 1;
		}
	if (keys.filter)
		{
		keys.filter = 0;
		main_state = ST_MAIN_FILTER;
		f_disp_update=1;
		}
	if (keys.menu)
		{
		keys.menu = 0;
		main_state = ST_MAIN_MENU;
		f_disp_update=1;
		}
	if (keys.input)
		{
		keys.input=0;
		if (settings.input==0) settings.input = 1;
		else settings.input = 0;
		f_input_changed = 1;
		}
	if (keys.zero)
		{
		keys.zero = 0;
		if (uzero_enabled[range]==0)
			{
			uzero_enabled[range] = 1;
			voltage_uzero[range] = voltage_corr;
			}
		else
			{
			uzero_enabled[range] = 0;
			voltage_uzero[range] = 0.0;
			}
		}
	if (keys.enter)
		{
		keys.enter=0;
		main_state = ST_MAIN_INFO;
		f_disp_update=1;
		}
	if (keys.acal)
		{
		keys.acal = 0;
		main_state = ST_MAIN_ACAL;
		f_disp_update=1;
		}
	}

void main_state_info (void)
	{
	memset(lcd_str,' ',sizeof(lcd_str));
	wizchip_getnetinfo(&netInfo_r);
	if(wizphy_getphylink() == PHY_LINK_ON)
		sprintf(lcd_str,"IP: %d.%d.%d.%d   %s",netInfo_r.ip[0],netInfo_r.ip[1],netInfo_r.ip[2],netInfo_r.ip[3],disp_msg);
	else
		sprintf(lcd_str,"NO ETH LINK      ");
	sprintf (lcd_str+20, "...");
	if (keys.enter)
		{
		keys.enter=0;
		main_state = ST_MAIN_NORMAL;
		f_disp_update=1;
		}
	if (keys.esc)
		{
		keys.esc=0;
		main_state = ST_MAIN_NORMAL;
		f_disp_update=1;
		}
	}

void main_state_menu (void)
	{
	static uint8_t menu_ptr=0, substate_menu=0;
	memset(lcd_str,' ',sizeof(lcd_str));
	sprintf (lcd_str+0, "  %s",menu_items_text[menu_ptr]);
	sprintf (lcd_str+20, "  %d",menu_items_val[menu_ptr]);
	if (substate_menu==0) lcd_str[0]='>';
	if (substate_menu==1) lcd_str[20]='>';
	if (keys.up)
		{
		keys.up=0;
		if (substate_menu==0) if (menu_ptr<(MENU_ITEMS-1)) menu_ptr++;
		if (substate_menu==1) menu_items_val[menu_ptr]++;
		}
	if (keys.down)
		{
		keys.down=0;
		if (substate_menu==0) if (menu_ptr>0) menu_ptr--;
		if (substate_menu==1) menu_items_val[menu_ptr]--;
		}
	if (keys.esc)
		{
		keys.esc=0;
		if (substate_menu==0) main_state=ST_MAIN_NORMAL;
		if (substate_menu==1) substate_menu=0;
		}
	if (keys.enter)
		{
		keys.enter=0;
		if (substate_menu==0) substate_menu=1;
		}
	if (keys.menu)
		{
		keys.menu=0;
		main_state=ST_MAIN_NORMAL;
		settings.autozero = menu_items_val[0];
		settings.digits = menu_items_val[1];
		settings.ac_sampling = menu_items_val[2];
		settings.beep = menu_items_val[3];
		settings.gpib_addr = menu_items_val[4];
		f_eesave_sets = 1;
		adc_update_stat = 1;
		adc_cfg.az = settings.autozero;
		}
	if (menu_items_val[menu_ptr]<menu_items_limit_min[menu_ptr]) menu_items_val[menu_ptr]=menu_items_limit_min[menu_ptr];
	if (menu_items_val[menu_ptr]>menu_items_limit_max[menu_ptr]) menu_items_val[menu_ptr]=menu_items_limit_max[menu_ptr];
	}

void main_state_filter (void)
	{
	static uint8_t substate_filter=0;
	memset(lcd_str,' ',sizeof(lcd_str));
	if (substate_filter==0)
		{
		sprintf (lcd_str+0, "> Analog filter %d",settings.filter_analog);
		sprintf (lcd_str+20,"  Digital filter %d",settings.filter_digital);
		}
	if (substate_filter==1)
		{
		sprintf (lcd_str+0, "  Analog filter %d",settings.filter_analog);
		sprintf (lcd_str+20,"> Digital filter %d",settings.filter_digital);
		}
	if (substate_filter==2)
		{
		sprintf (lcd_str+0, "  Digital filter %d",settings.filter_digital);
		sprintf (lcd_str+20,"> NPLC  %d",nplc_settings[settings.nplc]);
		}
	if (keys.up)
		{
		keys.up=0;
		if (substate_filter==0) settings.filter_analog = 1;
		if (substate_filter==1)
			{
			if (settings.filter_digital==0) settings.filter_digital=1;
			if (settings.filter_digital<64)
				settings.filter_digital = settings.filter_digital*2;
			}
		if (substate_filter==2)
			{
			if (settings.nplc<4) settings.nplc++;
			}
		}
	if (keys.down)
		{
		keys.down=0;
		if (substate_filter==0) settings.filter_analog = 0;
		if (substate_filter==1)
			{
			if (settings.filter_digital>1)
				settings.filter_digital = settings.filter_digital/2;
			}
		if (substate_filter==2)
			{
			if (settings.nplc>0) settings.nplc--;
			}
		}
	if (keys.filter)
		{
		keys.filter = 0;
		if (substate_filter==0) substate_filter=1;
		else if (substate_filter==1) substate_filter=2;
		else if (substate_filter==2)
			{
			substate_filter=0;
			main_state=ST_MAIN_NORMAL;
			adc_cfg.fen = settings.filter_analog;
			adc_cfg.plc = settings.nplc+3;
			adc_update_stat= 1;
			f_eesave_sets = 1;
			}
		f_disp_update=1;
		}
	}

//SPCI helper functions
size_t SCPIWrite(scpi_t * context, const char * data, size_t len)
	{
	char out_str[50];
    (void) context;
	strncpy(out_str,data,len);
	out_str[len]=0;
	send(3, out_str, strlen(out_str));
    return len;
	}

static scpi_result_t EXT_MeasVoltQ(scpi_t * context)
	{
    SCPI_ResultFloat(context, voltage_corr);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_CalVref(scpi_t * context)
	{
	float param;
	if (!SCPI_ParamFloat(context, &param, TRUE))  return SCPI_RES_ERR;
	calibration_act.VREF_7 = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_CalVrefQ(scpi_t * context)
	{
    SCPI_ResultFloat(context, calibration_act.VREF_7);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_CalUnl(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	f_cal_unlocked = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_CalSave(scpi_t * context)
	{
	if (f_cal_unlocked) calibration_save(EE_ADDR_CAL1, &calibration_act);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_CalACAL(scpi_t * context)
	{
	main_state = ST_MAIN_ACAL;
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseChannel(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.input = param-1;
	f_input_changed = 1;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseChannelQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.input+1);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseDfil(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.filter_digital = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseDfilQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.filter_analog);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseAfil(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.filter_digital = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseAfilQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.filter_analog);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseDigits(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.digits = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseDigitsQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.digits);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseNPLC(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.nplc = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseNPLCQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.nplc);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseAZ(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.autozero = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SenseAZQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.autozero);
	return SCPI_RES_OK;
	}
static scpi_result_t EXT_SystBeep(scpi_t * context)
	{
	int32_t param;
	if (!SCPI_ParamInt32(context, &param, TRUE))  return SCPI_RES_ERR;
	settings.beep = param;
    return SCPI_RES_OK;
	}
static scpi_result_t EXT_SystBeepQ(scpi_t * context)
	{
    SCPI_ResultInt32(context, settings.beep);
	return SCPI_RES_OK;
	}

scpi_command_t scpi_commands[] = {
	{ .pattern = "*IDN?", .callback = SCPI_CoreIdnQ,},
	{ .pattern = "*RST", .callback = SCPI_CoreRst,},
	{ .pattern = "*CLS", .callback = SCPI_CoreCls,},
    { .pattern = "SYSTem:ERRor[:NEXT]?", .callback = SCPI_SystemErrorNextQ,},
    { .pattern = "SYSTem:ERRor:COUNt?", .callback = SCPI_SystemErrorCountQ,},
    { .pattern = "SYSTem:VERSion?", .callback = SCPI_SystemVersionQ,},
	{ .pattern = "MEASure:VOLTage?", .callback = EXT_MeasVoltQ,},
	{ .pattern = "CALibration:VREF", .callback = EXT_CalVref,},
	{ .pattern = "CALibration:VREF?", .callback = EXT_CalVrefQ,},
	{ .pattern = "CALibration:UNLock", .callback = EXT_CalUnl,},
	{ .pattern = "CALibration:SAVe", .callback = EXT_CalSave,},
	{ .pattern = "CALibration:ACAL", .callback = EXT_CalACAL,},
	{ .pattern = "SENSe:CHANnel", .callback = EXT_SenseChannel,},
	{ .pattern = "SENSe:CHANnel?", .callback = EXT_SenseChannelQ,},
	{ .pattern = "SENSe:DFILter", .callback = EXT_SenseDfil,},
	{ .pattern = "SENSe:DFILter?", .callback = EXT_SenseDfilQ,},
	{ .pattern = "SENSe:AFILter", .callback = EXT_SenseAfil,},
	{ .pattern = "SENSe:AFILter?", .callback = EXT_SenseAfilQ,},
	{ .pattern = "SENSe:DIGits", .callback = EXT_SenseDigits,},
	{ .pattern = "SENSe:DIGits?", .callback = EXT_SenseDigitsQ,},
	{ .pattern = "SENSe:NPLC", .callback = EXT_SenseNPLC,},
	{ .pattern = "SENSe:NPLC?", .callback = EXT_SenseNPLCQ,},
	{ .pattern = "SENSe:AZero", .callback = EXT_SenseAZ,},
	{ .pattern = "SENSe:AZero?", .callback = EXT_SenseAZQ,},
	{ .pattern = "SYSTem:BEEPer", .callback = EXT_SystBeep,},
	{ .pattern = "SYSTem:BEEPer?", .callback = EXT_SystBeepQ,},

	SCPI_CMD_LIST_END
};

//SCPI interface
int16_t SCPI_Error(scpi_t * context, int_fast16_t err) {
    (void) context;
	char errmsg[40];
    sprintf(errmsg, "**ERROR: %d, \"%s\"\r\n", (int16_t) err, SCPI_ErrorTranslate(err));
    send(3, errmsg, strlen(errmsg));
    return 0;
}

scpi_interface_t scpi_interface = {
	.write = SCPIWrite,
	.error = SCPI_Error,
	.reset = NULL,
//	.srq = NULL,
};


int main (void)
	{
	hw_init();
	settings_read(EE_ADDR_SETS,&settings);
	calibration_read(EE_ADDR_CAL1, &calibration_act);
	buzzer_init();
	initLCD();
	spi_init();
	uart2_init();
	uart3_init();
	timer_init();
	delay_ms(300);
	pwm_init();
	HI(GPIOA, 1);
	sprintf(lcd_str,"****************************************");
	lcd_update(lcd_str);
	tick_kbd = get_tick();
	adc_cfg.fen=settings.filter_analog;
	adc_cfg.mux = ADC_MUX_IN;
	adc_cfg.gain = ADC_GAIN_1;
	adc_cfg.dac_w = calibration_act.dac_v;
	adc_cfg.dac_c = ADC_DAC_B;
	adc_cfg.plc = settings.nplc+3;
	adc_cfg.re2a = 1;
	adc_cfg.az = settings.autozero;
	adc_update_stat= 1;
	range = 5;
	f_range_updated = 1;
	f_input_changed = 1;

	IO_LIBRARY_Init();
	if(netInfo.dhcp == NETINFO_DHCP)
	{
		DHCP_init(SOCK_DHCPC, gDATABUF_DHCP);
		reg_dhcp_cbfunc(my_ip_assign, my_ip_assign, my_ip_conflict);
	}
	SCPI_Init(&scpi_context,
		scpi_commands,
		&scpi_interface,
		scpi_units_def,
		SCPI_IDN1, SCPI_IDN2, SCPI_IDN3, SCPI_IDN4,
		scpi_input_buffer, SCPI_INPUT_BUFFER_LENGTH,
		scpi_error_queue_data, SCPI_ERROR_QUEUE_SIZE);

	while (1)
		{
		if(run_user_applications)
			{
			telnet_srv(3, ethBut3_TELNET, TELNET_PORT);
			telnet_auth_srv(4, ethBut4_TELNET, TELNET_AUTH_PORT);
			loopback_tcps(0,ethBuf0,5025);
			loopback_udps(1, ethBuf0, 3000);
			}
    	if(netInfo.dhcp == NETINFO_DHCP)
    		{
			switch(DHCP_run())
				{
				case DHCP_IP_ASSIGN:
				case DHCP_IP_CHANGED:
					break;
				case DHCP_IP_LEASED:
					run_user_applications = 1;
					break;
				case DHCP_FAILED:
					my_dhcp_retry++;
					if(my_dhcp_retry > MY_MAX_DHCP_RETRY)
					{
						netInfo.dhcp = NETINFO_STATIC;
						DHCP_stop();      // if restart, recall DHCP_init()
						IO_LIBRARY_Init(); //After that ping must working
						my_dhcp_retry = 0;
						run_user_applications = 1;
					}
					break;
				default:
					break;
				}
    		}
    	if ((uint16_t)(get_tick()-tick_eth)>INT_ETH)
    		{
    		tick_eth = get_tick();
        	DHCP_time_handler();
    		check_network_information();
    		}

		keyboard_task();
		adc_task();
		psu_task();
		eeprom_task();
		if (f_disp_update)
			{
			f_disp_update=0;
			HI(GPIOE, 5);
			lcd_update(lcd_str);
			LO(GPIOE, 5);
			}
		if (f_range_updated)
			{
			f_range_updated = 0;
			adc_update_stat = 1;
			if (range==0)
				{
				adc_cfg.mux = ADC_MUX_AMP;
				adc_cfg.gain = ADC_GAIN_100;
				adc_cfg.re2b = 1;
				}
			if (range==1)
				{
				adc_cfg.mux = ADC_MUX_AMP;
				adc_cfg.gain = ADC_GAIN_10;
				adc_cfg.re2b = 1;
				}
			if (range==2)
				{
				adc_cfg.mux = ADC_MUX_AMP;
				adc_cfg.gain = ADC_GAIN_1;
				adc_cfg.re2b = 1;
				}
			if (range==3)
				{
				adc_cfg.mux = ADC_MUX_IN;
				adc_cfg.gain = ADC_GAIN_100;
				adc_cfg.re2a = 1;
				}
			if (range==4)
				{
				adc_cfg.mux = ADC_MUX_IN;
				adc_cfg.gain = ADC_GAIN_10;
				adc_cfg.re2a = 1;
				}
			if (range==5)
				{
				adc_cfg.mux = ADC_MUX_IN;
				adc_cfg.gain = ADC_GAIN_1;
				adc_cfg.re2a = 1;
				}
			}
		if (f_input_changed)
			{
			f_input_changed = 0;
			if (settings.input==0) adc_cfg.re1b = 1;
			if (settings.input==1) adc_cfg.re1a = 1;
			adc_update_stat = 1;
			}

		if ((f_vol_newval!=0)&(main_state!=ST_MAIN_ACAL))
			{
			f_vol_newval=0;
			voltage_display = voltage_corr;
			if (uzero_enabled[range]) voltage_display = voltage_display - voltage_uzero[range];
			if (range==5) sprintf(volt_reading,"%+09.5f V R:10V",voltage_display*1.0);
			if (range==4) sprintf(volt_reading,"%+09.6f V R:1V",voltage_display*1.0);
			if (range==3) sprintf(volt_reading,"%+09.4fmV R:100mV",voltage_display*1000.0);
			if (range==2) sprintf(volt_reading,"%+09.5fmV R:10mV",voltage_display*1000.0);
			if (range==1) sprintf(volt_reading,"%+09.6fmV R:1mV",voltage_display*1000.0);
			if (range==0) sprintf(volt_reading,"%+09.4fuV R:100uV",voltage_display*1000000.0);
//			uart3_send_str(volt_reading);
//			uart3_send_str("\n");
			f_disp_update = 1;
			}
		if (keys.INT16!=0) f_disp_update=1;
		if (main_state==ST_MAIN_NORMAL) main_state_normal();
		if (main_state==ST_MAIN_FILTER) main_state_filter();
		if (main_state==ST_MAIN_ACAL) main_state_acal();
		if (main_state==ST_MAIN_MENU) main_state_menu();
		if (main_state==ST_MAIN_INFO) main_state_info();
		if (keys.INT16!=0) keys.INT16=0;
		}
	}

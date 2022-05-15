/*
 * hw.h
 *
 *  Created on: 29. 4. 2022
 *      Author: jarom
 */

#ifndef HW_H_
#define HW_H_

#include "stm32f373xc.h"

#define ETH_MAX_BUF_SIZE	2048

#define	DO1_PORT GPIOC
#define	DO1_BIT 7
#define	DO2_PORT GPIOC
#define	DO2_BIT 6
#define	DO3_PORT GPIOD
#define	DO3_BIT 15
//#define	DO4_PORT GPIOD
//#define	DO4_BIT 0
#define	DO5_PORT GPIOD
#define	DO5_BIT 14
#define	DO6_PORT GPIOD
#define	DO6_BIT 13
#define	DO7_PORT GPIOD
#define	DO7_BIT 12
#define	DO8_PORT GPIOD
#define	DO8_BIT 11

#define	ETH_CS_PORT		GPIOD
#define	ETH_CS_BIT		1
#define	ETH_RST_PORT	GPIOD
#define	ETH_RST_BIT		0

#define	LCD_RS_PORT DO1_PORT
#define	LCD_RS_BIT DO1_BIT
#define	LCD_RW_PORT DO2_PORT
#define	LCD_RW_BIT DO2_BIT
#define	LCD_EN_PORT DO3_PORT
#define	LCD_EN_BIT DO3_BIT


#define	KEY_1_PORT GPIOF
#define	KEY_1_BIT 6
#define	KEY_2_PORT GPIOA
#define	KEY_2_BIT 12
#define	KEY_3_PORT GPIOA
#define	KEY_3_BIT 11
#define	KEY_4_PORT GPIOA
#define	KEY_4_BIT 10
#define	KEY_5_PORT GPIOA
#define	KEY_5_BIT 9
#define	KEY_6_PORT GPIOA
#define	KEY_6_BIT 8
#define	KEY_7_PORT GPIOC
#define	KEY_7_BIT 9
#define	KEY_8_PORT GPIOC
#define	KEY_8_BIT 8

#define EE_MISO_P   GPIOD
#define EE_MISO_B   10
#define EE_MOSI_P   GPIOD
#define EE_MOSI_B   9
#define EE_SCK_P    GPIOD
#define EE_SCK_B    8
#define EE_CS_P     GPIOB
#define EE_CS_B     15



#define HI(port, idx) do{(port)->BSRR = 1UL<<(idx);}while(0)
#define LO(port, idx) do{(port)->BSRR = 1UL<<(idx+16);}while(0)
#define IN(port, idx) ((port)->IDR & (1UL<<(idx)))
#define IN_LOGICAL(port, idx) (!!((port)->IDR & (1UL<<(idx))))
#define IO_TO_GPI(port, idx) do{ uint32_t _tmp_ = (port)->MODER; _tmp_ &= ~(0b11UL<<((idx)*2)); (port)->MODER = _tmp_; }while(0)
#define IO_TO_GPO(port, idx) do{ uint32_t _tmp_ = (port)->MODER; _tmp_ &= ~(1UL<<((idx)*2+1)); _tmp_ |= 1UL<<((idx)*2); (port)->MODER = _tmp_; }while(0)
#define IO_TO_ALTFUNC(port, idx) do{ uint32_t _tmp_ = (port)->MODER; _tmp_ &= ~(1UL<<((idx)*2)); _tmp_ |= 1UL<<((idx)*2+1); (port)->MODER = _tmp_; }while(0)
#define IO_TO_ANALOG(port, idx) do{ uint32_t _tmp_ = (port)->MODER; _tmp_ |= 0b11<<((idx)*2); (port)->MODER = _tmp_; }while(0)
#define	SET_VAL(port, idx, val) do{if ((val)==0) LO(port, idx); else HI(port, idx);}while(0)

void uart3_init (void);
void uart3_send_byte(int8_t data);
void uart3_send_str (char * data);
void uart2_init (void);
void uart2_send_byte(int8_t data);
void spi_init (void);
uint8_t spi_trf (uint8_t data);
void cs_sel(void);
void cs_desel(void);
uint8_t spi_rb(void);
void spi_wb(uint8_t b);
void spi_rb_burst(uint8_t *buf, uint16_t len);
void spi_wb_burst(uint8_t *buf, uint16_t len);
void IO_LIBRARY_Init(void);
void pwm_init (void);
void pwm_set(uint8_t par);
void hw_init (void);
void initLCD(void);
void lcdc (unsigned char data);
void lcdt (unsigned char data);
void lcd_update (char * data);
void delay_ms (int howmuch);
void timer_init (void);
uint16_t get_tick (void);
uint16_t kbd_get_keys (void);
void buzzer_start (uint16_t div, uint16_t len);
void buzzer_init (void);

#define	ADC_MUX_GND		0
#define	ADC_MUX_AMP		1
#define	ADC_MUX_R7V		2
#define	ADC_MUX_R07V	3
#define	ADC_MUX_R70M	4
#define	ADC_MUX_R9M		5
#define	ADC_MUX_BS		6
#define	ADC_MUX_IN		7

#define	ADC_GAIN_1		0b110
#define	ADC_GAIN_10		0b101
#define	ADC_GAIN_100	0b011

#define	ADC_RE4_MASK	0x20
#define	ADC_RE3_MASK	0x10
#define	ADC_RE2B_MASK	0x08
#define	ADC_RE2A_MASK	0x04
#define	ADC_RE1B_MASK	0x02
#define	ADC_RE1A_MASK	0x01

#define	ADC_DAC_A		0x01
#define	ADC_DAC_B		0x02
#define	ADC_DAC_C		0x03
#define	ADC_DAC_D		0x04
#define	ADC_DAC_NONE	0x0E


typedef union adc_config_val
	{
    struct
		{
    	unsigned int re1a : 1;
    	unsigned int re1b : 1;
    	unsigned int re2a : 1;
    	unsigned int re2b : 1;
    	unsigned int re3 : 1;
    	unsigned int plc : 3;
    	unsigned int gain : 3;
    	unsigned int mux : 3;
    	unsigned int fen : 1;
    	unsigned int az : 1;
    	unsigned int p1 : 1;
    	unsigned int p2 : 1;
    	unsigned int dac_w : 10;
    	unsigned int dac_c : 4;
  		};
    uint32_t INT32;
} adc_cfg_var;

typedef union
{
struct
 {
    unsigned aut:1;
    unsigned x1:1;
    unsigned x2:1;
    unsigned x3:1;

    unsigned down:1;
    unsigned enter:1;
    unsigned up:1;
    unsigned menu:1;

    unsigned trig:1;
    unsigned store:1;
    unsigned recall:1;
    unsigned esc:1;

    unsigned input:1;
    unsigned zero:1;
    unsigned filter:1;
    unsigned acal:1;
 };
uint16_t INT16;
}key_var;


typedef struct settings_var
{
   uint16_t filter_analog;
   uint16_t filter_digital;
   uint16_t input;
   uint16_t nplc;
   uint16_t autozero;
   uint16_t digits;
   uint16_t ac_sampling;
   uint16_t beep;
   uint16_t gpib_addr;
} settings_var;

typedef struct cal_range_var
{
   float range_zero_corr;
   float range_gain_corr;
} cal_range_var;

typedef struct calibration_var
{
   uint32_t adc_scale;
   float adc_ta_corr;
   float VREF_7;
   uint32_t dac_v;
   uint32_t dac_i;
   cal_range_var ranges[6];
} calibration_var;




#define	ST_MAIN_NORMAL	0
#define	ST_MAIN_FILTER	1
#define	ST_MAIN_ACAL	2
#define	ST_MAIN_MENU	3
#define	ST_MAIN_INFO	4
#define	EE_ADDR_SETS	0
#define	EE_ADDR_CAL1	64
#define	EE_ADDR_CAL2	256


#define	RANGE_MAX	5
#define	INT_KBD	20
#define	INT_ETH	1000
#define	INT_ADC_DU	10
#define	INT_PSU		5
#define	DISPLAY_LEN 20
#define	MENU_ITEMS	4
#define SOCK_DHCPC	7
#define DATA_BUF_SIZE_DHCP   550
#define MY_MAX_DHCP_RETRY			3

#define SCPI_IDN1 "JS"
#define SCPI_IDN2 "NVM"
#define SCPI_IDN3 NULL
#define SCPI_IDN4 "01-01"
#define SCPI_ERROR_QUEUE_SIZE 17
#define SCPI_INPUT_BUFFER_LENGTH 256
#define SMALL_BUFFER_LEN 50

uint8_t calibration_save (uint16_t addr, calibration_var * cal);
uint8_t calibration_read (uint16_t addr, calibration_var * cal);
uint8_t settings_save (uint16_t addr, settings_var * sets);
uint8_t settings_read (uint16_t addr, settings_var * sets);
#endif /* HW_H_ */

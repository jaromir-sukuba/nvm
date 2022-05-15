#include <stdio.h>
//#include <stdlib.h>
//#include <math.h>
//#include "printf.h"
#include <string.h>
#include "hw.h"
#include "stm32f373xc.h"
#include "wizchip_conf.h"

extern wiz_NetInfo netInfo;


void lcd_ll_set_dl (unsigned char data)
{
if (data&0x01) 	HI(DO5_PORT, DO5_BIT);
	else		LO(DO5_PORT, DO5_BIT);
if (data&0x02) 	HI(DO6_PORT, DO6_BIT);
	else		LO(DO6_PORT, DO6_BIT);
if (data&0x04) 	HI(DO7_PORT, DO7_BIT);
	else		LO(DO7_PORT, DO7_BIT);
if (data&0x08) 	HI(DO8_PORT, DO8_BIT);
	else		LO(DO8_PORT, DO8_BIT);
}

void delay_ms (int howmuch)
{
volatile unsigned int x;
unsigned int i;
for (i=0; i<howmuch; i++) for (x=0; x<900; x++);
}

void delay_us (int howmuch)
{
volatile unsigned int x;
unsigned int i;
for (i=0; i<howmuch; i++) for (x=0; x<9; x++);
}


void initLCD(void)
{
	LO(LCD_RS_PORT, LCD_RS_BIT);
	LO(LCD_RW_PORT, LCD_RW_BIT);
	delay_ms(15);
	lcd_ll_set_dl(3);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	delay_ms(4);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	delay_ms(4);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	delay_ms(4);
	lcd_ll_set_dl(2);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	delay_ms(4);
	lcdc(0x28);		//!!!2lines!!!, 4bit,5*7font
	lcdc(0x0C);		//disp on,blink & cursor off
	lcdc(0x01);		//erase disp, cursor home
	delay_ms(4);
}

void lcdc (unsigned char data)
{
	unsigned char datat;
	datat=data;
	LO(LCD_RS_PORT, LCD_RS_BIT);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	datat>>=4;
	lcd_ll_set_dl(datat&0x0F);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	LO(LCD_RS_PORT, LCD_RS_BIT);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	lcd_ll_set_dl(data&0x0F);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	if (data==0x01) delay_ms(1);
}


void lcdt (unsigned char data)
{
	unsigned char datat;
	if (data<' ') data = ' ';
	datat=data;
	HI(LCD_RS_PORT, LCD_RS_BIT);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	datat>>=4;
	lcd_ll_set_dl(datat&0x0F);
	LO(LCD_EN_PORT, LCD_EN_BIT);
	HI(LCD_RS_PORT, LCD_RS_BIT);
	HI(LCD_EN_PORT, LCD_EN_BIT);
	lcd_ll_set_dl(data&0x0F);
	LO(LCD_EN_PORT, LCD_EN_BIT);
}

void lcd_update (char * data)
{
uint8_t i;
lcdc(0x80);
for (i=0;i<20;i++) lcdt(*data++);
lcdc(0xC0);
for (i=0;i<20;i++) lcdt(*data++);
}

void uart3_init (void)
	{
	RCC->APB1ENR |= RCC_APB1ENR_USART3EN;
    IO_TO_ALTFUNC(GPIOB, 8);
    IO_TO_ALTFUNC(GPIOB, 9);
    GPIOB->AFR[1] = GPIOA->AFR[1] | (0b0111<<(4*1)) | (0b0111<<(4*0));
    USART3->BRR = 208;
    USART3->CR1 = USART_CR1_UE | USART_CR1_RE | USART_CR1_TE;
    USART3->CR1 = USART3->CR1 | USART_CR1_RXNEIE ;
    NVIC_EnableIRQ(USART3_IRQn);
	}

void uart3_send_byte(int8_t data)
    {
    while (((USART3->ISR)&USART_ISR_TXE)==0);
    USART3->TDR = data;
    }

void uart3_send_str (char * data)
    {
    while (*data) uart3_send_byte(*data++);
    }

void uart2_init (void)
	{
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
    IO_TO_ALTFUNC(GPIOA, 2);
    IO_TO_ALTFUNC(GPIOA, 3);
    GPIOA->AFR[0] = GPIOA->AFR[0] | (0b0111<<(4*3)) | (0b0111<<(4*2));
    USART2->BRR = 20;
    USART2->CR3 = USART_CR3_OVRDIS;	//for debugging, probably not needed otherwise
    USART2->CR1 = USART_CR1_UE | USART_CR1_RE | USART_CR1_TE;
    USART2->CR1 = USART2->CR1 | USART_CR1_RXNEIE ;
    NVIC_EnableIRQ(USART2_IRQn);
	}

void uart2_send_byte(int8_t data)
    {
    while (((USART2->ISR)&USART_ISR_TXE)==0);
    USART2->TDR = data;
    }

void spi_init (void)
{
    RCC->APB1ENR = RCC->APB1ENR | RCC_APB1ENR_SPI3EN;
    IO_TO_ALTFUNC(GPIOC, 10);
    IO_TO_ALTFUNC(GPIOC, 11);
    IO_TO_ALTFUNC(GPIOC, 12);
    GPIOC->AFR[1] = GPIOB->AFR[1] | (0b0110<<(4*2)) | (0b0110<<(4*3)) | (0b0110<<(4*4));
    SPI3 -> CR2 |= SPI_CR2_FRXTH;
    SPI3->CR1 |= SPI_CR1_SSM;
    SPI3->CR1 |= SPI_CR1_SSI;
    SPI3->CR1 |= SPI_CR1_BR_1;
    SPI3->CR1 |= SPI_CR1_MSTR | SPI_CR1_SPE;
}

uint8_t spi_trf (uint8_t data)
{
while(!(SPI3 -> SR & SPI_SR_TXE));
*(volatile uint8_t *)&SPI3->DR = data;
while (!(SPI3 -> SR & SPI_SR_RXNE));
return *(volatile uint8_t *)&SPI3-> DR;
}


void cs_sel()
	{
	LO(ETH_CS_PORT,ETH_CS_BIT);
	}

void cs_desel()
	{
	HI(ETH_CS_PORT,ETH_CS_BIT);
	}

uint8_t spi_rb(void)
	{
	return spi_trf(0);
	}

void spi_wb(uint8_t b)
	{
	spi_trf(b);
	}

void spi_rb_burst(uint8_t *buf, uint16_t len)
	{
	for (uint16_t var = 0; var < len; var++) buf[var] = spi_trf(0);
	}

void spi_wb_burst(uint8_t *buf, uint16_t len)
	{
	for (uint16_t var = 0; var < len; var++)  spi_trf(buf[var]);
	}

void IO_LIBRARY_Init(void) {
	uint8_t bufSize[] = {2, 2, 2, 2, 2, 2, 2, 2};

	reg_wizchip_cs_cbfunc(cs_sel, cs_desel);
	reg_wizchip_spi_cbfunc(spi_rb, spi_wb);
	reg_wizchip_spiburst_cbfunc(spi_rb_burst, spi_wb_burst);

	wizchip_init(bufSize, bufSize);
	wizchip_setnetinfo(&netInfo);
	//wizchip_setinterruptmask(IK_SOCK_0);
}



void pwm_init (void)
{
    RCC->APB1ENR = RCC->APB1ENR | RCC_APB1ENR_TIM14EN;
    IO_TO_ALTFUNC(GPIOF, 9);
    GPIOF->AFR[1] = GPIOF->AFR[1] | (0b0010<<(4*1));
    TIM14->CR1 = 0x81;
    TIM14->ARR = 1999;
    TIM14->CCMR1 = 0x78;
    TIM14->CCER = 0x01;
    TIM14->PSC = 0;
    TIM14->CCR1 = 999;
}




void pwm_set(uint8_t par)
{
	TIM14->PSC = par;
}

void TIM12_IRQHandler(void)
    {
    TIM12->SR=0;
    TIM12->CR1=0x0000;
    NVIC_DisableIRQ(TIM12_IRQn);
    TIM5->CCER = 0x0;
//    TIM5->EGR = 0x01;
    }
void buzzer_start (uint16_t div, uint16_t len)
	{
	TIM5->PSC = div;
	TIM5->CCER = 0x100;
	TIM12->CNT=0x0000;
	TIM12->ARR = len*10;
	TIM12->CR1=0x0001;
	TIM5->EGR = 0x01;
	NVIC_EnableIRQ(TIM12_IRQn);
	}

void buzzer_init (void)
{
    RCC->APB1ENR = RCC->APB1ENR | RCC_APB1ENR_TIM5EN;
    RCC->APB1ENR = RCC->APB1ENR | RCC_APB1ENR_TIM12EN;
    IO_TO_ALTFUNC(GPIOC, 2);
    GPIOC->AFR[0] = GPIOC->AFR[0] | (0b0010<<(4*2));
    TIM5->CNT = 0;
    TIM5->CR1 = 0x81;
    TIM5->ARR = 199;
    TIM5->CCMR2 = 0x78;
//    TIM5->CCER = 0x100;
    TIM5->PSC = 10;
    TIM5->CCR3 = 99;
    TIM5->EGR = 0x01;

    TIM12->CR1=0x0000;
    TIM12->SR=0;
    TIM12->CNT=0x0000;
    TIM12->PSC=0x0400;
    TIM12->ARR=1600;
    TIM12->DIER=0x0001;
    //
    NVIC_EnableIRQ(TIM12_IRQn);
}


void hw_init (void)
{
    //NVIC_EnableIRQ(USART1_IRQn);
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN;
	RCC->AHBENR |= RCC_AHBENR_GPIOBEN;
	RCC->AHBENR |= RCC_AHBENR_GPIOCEN;
	RCC->AHBENR |= RCC_AHBENR_GPIODEN;
	RCC->AHBENR |= RCC_AHBENR_GPIOEEN;
	RCC->AHBENR |= RCC_AHBENR_GPIOFEN;
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN;
	RCC->APB1ENR |= RCC_APB1ENR_TIM7EN;
	IO_TO_GPO(GPIOE, 5);
	IO_TO_GPO(GPIOE, 6);
	IO_TO_GPO(GPIOD, 4);
	IO_TO_GPO(GPIOD, 0);
	IO_TO_GPO(GPIOD, 1);
	IO_TO_GPO(GPIOA, 1);

	IO_TO_GPO(KEY_1_PORT,KEY_1_BIT);
	IO_TO_GPO(KEY_2_PORT,KEY_2_BIT);
	IO_TO_GPO(KEY_3_PORT,KEY_3_BIT);
	IO_TO_GPO(KEY_4_PORT,KEY_4_BIT);
	IO_TO_GPI(KEY_5_PORT,KEY_5_BIT);
	IO_TO_GPI(KEY_6_PORT,KEY_6_BIT);
	IO_TO_GPI(KEY_7_PORT,KEY_7_BIT);
	IO_TO_GPI(KEY_8_PORT,KEY_8_BIT);

	IO_TO_GPI(EE_MISO_P,EE_MISO_B);
	IO_TO_GPO(EE_MOSI_P,EE_MOSI_B);
	IO_TO_GPO(EE_SCK_P,EE_SCK_B);
	IO_TO_GPO(EE_CS_P,EE_CS_B);

	IO_TO_GPO(LCD_RS_PORT, LCD_RS_BIT);
	IO_TO_GPO(LCD_RW_PORT, LCD_RW_BIT);
	IO_TO_GPO(LCD_EN_PORT, LCD_EN_BIT);
	IO_TO_GPO(DO5_PORT, DO5_BIT);
	IO_TO_GPO(DO6_PORT, DO6_BIT);
	IO_TO_GPO(DO7_PORT, DO7_BIT);
	IO_TO_GPO(DO8_PORT, DO8_BIT);
	IO_TO_GPO(ETH_CS_PORT,ETH_CS_BIT);
	IO_TO_GPO(ETH_RST_PORT,ETH_RST_BIT);
	LO(ETH_RST_PORT,ETH_RST_BIT);
	delay_ms(1);
	HI(ETH_RST_PORT,ETH_RST_BIT);
	delay_ms(1);
	HI(ETH_CS_PORT,ETH_CS_BIT);
}





uint8_t kbd_tasks (void)
	{
	return 0;
	}

uint8_t kbd_read_row (void)
	{
	uint8_t retval=0;
	if(IN(KEY_5_PORT, KEY_5_BIT)==0) retval = retval|0x01;
	if(IN(KEY_6_PORT, KEY_6_BIT)==0) retval = retval|0x02;
	if(IN(KEY_7_PORT, KEY_7_BIT)==0) retval = retval|0x04;
	if(IN(KEY_8_PORT, KEY_8_BIT)==0) retval = retval|0x08;
	return retval;
	}

void kbd_set_col (uint8_t col)
	{
	HI(KEY_1_PORT, KEY_1_BIT);
	HI(KEY_2_PORT, KEY_2_BIT);
	HI(KEY_3_PORT, KEY_3_BIT);
	HI(KEY_4_PORT, KEY_4_BIT);
	if (col==0) LO(KEY_1_PORT, KEY_1_BIT);
	if (col==1) LO(KEY_2_PORT, KEY_2_BIT);
	if (col==2) LO(KEY_3_PORT, KEY_3_BIT);
	if (col==3) LO(KEY_4_PORT, KEY_4_BIT);
	}

uint16_t kbd_get_keys (void)
	{
	uint8_t i;
	uint16_t retval=0;
	for (i=0;i<4;i++)
		{
		kbd_set_col(i);
		delay_us(10);
		retval = retval << 4;
		retval = retval | kbd_read_row();
		kbd_set_col(255);
		delay_us(10);
		}
	return retval;
	}

uint16_t main_tick;
void timer_init (void)
	{
    TIM7->CR1=0x0000;
    TIM7->SR=0;
    TIM7->CNT=0x0000;
    TIM7->PSC=0x0000;
    TIM7->ARR=8000;
    TIM7->DIER=0x0001;
    TIM7->CR1=0x0001;
    NVIC_EnableIRQ(TIM7_DAC2_IRQn);
	}

void TIM7_DAC2_IRQHandler(void)
    {
    TIM7->SR=0;
    main_tick++;
    }

uint16_t get_tick (void)
	{
	uint16_t retval;
	NVIC_DisableIRQ(TIM7_DAC2_IRQn);
	retval = main_tick;
	NVIC_EnableIRQ(TIM7_DAC2_IRQn);
	return retval;
	}

/*
                                    0080 0001
                                    0020 0040
 1000 2000 4000 8000 0100 0200 0400 0800 0010
 */


/*
 RE1B - vstup pri rele
 RE1A - vstup dalej od rele
 RE2A - CAL
 RE2B - INP
 *
 *
 */



uint8_t ee_spi_trf (uint8_t data)
	{
	uint8_t i,ret=0;
	for (i=0;i<8;i++)
		{
		if (data&0x80)
			HI(EE_MOSI_P,EE_MOSI_B);
		else
			LO(EE_MOSI_P,EE_MOSI_B);
		delay_us(1);
		data = data << 1;
		HI(EE_SCK_P,EE_SCK_B);
		ret = ret << 1;
		delay_us(1);
		if (IN(EE_MISO_P,EE_MISO_B))
			ret|=0x01;
		delay_us(1);
		LO(EE_SCK_P,EE_SCK_B);
		}
	return ret;
	}

void ee_wren (void)
	{
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x06);
	HI(EE_CS_P,EE_CS_B);
	}

void ee_wrdi (void)
	{
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x04);
	HI(EE_CS_P,EE_CS_B);
	}

uint8_t ee_rdsr (void)
	{
	uint8_t retval;
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x05);
	retval = ee_spi_trf(0);
	HI(EE_CS_P,EE_CS_B);
	return retval;
	}


uint8_t ee_read_byte (uint16_t addr)
	{
	uint8_t retval;
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x03);
	ee_spi_trf((addr>>8)&0xFF);
	ee_spi_trf((addr>>0)&0xFF);
	retval = ee_spi_trf(0);
	HI(EE_CS_P,EE_CS_B);
	return retval;
	}

uint8_t ee_write_byte (uint16_t addr, uint8_t data)
	{
	uint16_t to_count;
	ee_wren();
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x02);
	ee_spi_trf((addr>>8)&0xFF);
	ee_spi_trf((addr>>0)&0xFF);
	ee_spi_trf(data);
	HI(EE_CS_P,EE_CS_B);
	while (1)
		{
		if ((ee_rdsr()&0x01)==0) return 0;
		else delay_us(100);
		to_count++;
		if (to_count>100) break;
		}
	return 1;
	}

uint8_t ee_write_page (uint16_t addr, uint8_t * data, uint8_t pagesize)
	{
	uint16_t to_count=0;
	uint8_t i;
	ee_wren();
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x02);
	ee_spi_trf((addr>>8)&0xFF);
	ee_spi_trf((addr>>0)&0xFF);
	for (i=0;i<pagesize;i++) ee_spi_trf(*data++);
	HI(EE_CS_P,EE_CS_B);
	while (1)
		{
		if ((ee_rdsr()&0x01)==0) return 0;
		else delay_us(100);
		to_count++;
		if (to_count>100) break;
		}
	return 1;
	}

void ee_read_page (uint16_t addr, uint8_t * data, uint8_t pagesize)
	{
	uint8_t i;
	LO(EE_CS_P,EE_CS_B);
	ee_spi_trf(0x03);
	ee_spi_trf((addr>>8)&0xFF);
	ee_spi_trf((addr>>0)&0xFF);
	for (i=0;i<pagesize;i++) *data++ = ee_spi_trf(0);
	HI(EE_CS_P,EE_CS_B);
	}

#define	CAL_CHUNK_SIZE	4
calibration_var calibration;
uint8_t calibration_save (uint16_t addr, calibration_var * cal)
	{
	uint16_t cal_size,i,j=0;
	uint8_t cal_chunk[CAL_CHUNK_SIZE];
	cal_size = sizeof (calibration);
	for(uint16_t i = 0; i < cal_size; i++)
	  {
		cal_chunk[j++] = ((uint8_t*)cal)[i];
		if (j==CAL_CHUNK_SIZE)
			{
			ee_write_page(addr+i-CAL_CHUNK_SIZE+1,cal_chunk,CAL_CHUNK_SIZE);
			j=0;
			}
	  }
	return 0;
	}

uint8_t calibration_read (uint16_t addr, calibration_var * cal)
	{
	uint16_t cal_size,i=0,j=0;
	uint8_t cal_chunk[CAL_CHUNK_SIZE];
	cal_size = sizeof (calibration);
	while (i<cal_size)
		{
		ee_read_page(addr+i,&cal_chunk,CAL_CHUNK_SIZE);
		for (j=0;j<CAL_CHUNK_SIZE;j++)
			{
			((uint8_t*)cal)[i++] = cal_chunk[j];
			}
		}
	if (cal->VREF_7>7.3) cal->VREF_7 = 7.05;
	if (cal->VREF_7<6.9) cal->VREF_7 = 7.05;
	return 0;
	}


#define	SETS_CHUNK_SIZE	4
settings_var sets_1;
uint8_t settings_save (uint16_t addr, settings_var * sets)
	{
	uint16_t sets_size,i,j=0;
	uint8_t sets_chunk[SETS_CHUNK_SIZE];
	sets_size = sizeof (sets_1);
	for(uint16_t i = 0; i < sets_size; i++)
	  {
		sets_chunk[j++] = ((uint8_t*)sets)[i];
		if (j==SETS_CHUNK_SIZE)
			{
			ee_write_page(addr+i-SETS_CHUNK_SIZE+1,sets_chunk,SETS_CHUNK_SIZE);
			j=0;
			}
	  }
	return 0;
	}

uint8_t settings_read (uint16_t addr, settings_var * sets)
	{
	uint16_t sets_size,i,j=0;
	uint8_t sets_chunk[SETS_CHUNK_SIZE];
	sets_size = sizeof (sets_1);
	while (i<sets_size)
		{
		ee_read_page(addr+i,&sets_chunk,SETS_CHUNK_SIZE);
		for (j=0;j<SETS_CHUNK_SIZE;j++)
			{
			((uint8_t*)sets)[i++] = sets_chunk[j];
			}
		}
	if (sets->nplc>5) sets->nplc = 0;
	if (sets->input>1) sets->input = 0;
	if (sets->filter_analog>1) sets->filter_analog=0;
	if (sets->filter_digital>1) sets->filter_digital=0;
	if (sets->ac_sampling>1) sets->ac_sampling=0;
	if (sets->autozero>1) sets->autozero=0;
	if (sets->beep>1) sets->beep=0;
	if (sets->digits>6) sets->digits=3;
	return 0;
	}

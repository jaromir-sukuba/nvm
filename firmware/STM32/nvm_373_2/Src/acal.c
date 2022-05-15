#include "hw.h"
#include "acal.h"
#include <stdio.h>
#include <string.h>
#include "stm32f373xc.h"

volatile float acal_res_10V_zero,acal_res_10V_7V,acal_res_10V_07V;
volatile float acal_res_1V_zero,acal_res_1V_07V,acal_res_1V_70M;
volatile float acal_res_100M_zero,acal_res_100M_70M,acal_res_100M_9M;
volatile float acal_res_10M_zero,acal_res_10M_9M;
volatile float acal_res_1M_zero,acal_res_100U_zero;
volatile float acal_res_off_low,acal_res_off_high;
volatile uint16_t adc_ratio,dac_volt_zero;

extern uint8_t f_vol_newval,f_disp_update,f_range_updated,f_input_changed,adc_update_stat,range;
extern float voltage;
extern int16_t nd;
extern settings_var settings;
extern adc_cfg_var adc_cfg;
extern uint8_t main_state;
extern calibration_var calibration_act;
extern char lcd_str[50];

void main_state_acal (void)
	{
	static uint8_t acal_state=0,acal_state_next,throwaway_count,average_count;
	float gain_1,gain_10, gain_100,gain_amp,volt_07,volt_70M,volt_9M;
	static float volt_acc;
	static uint64_t ndp_acc;
	float ftemp1,ftemp2;
	if (acal_state==99)
		{
		if (f_vol_newval)
			{
			f_vol_newval=0;
			if (throwaway_count>0) throwaway_count--;
			else
				{
				if (average_count>0)
					{
					average_count--;
					volt_acc = volt_acc + voltage;
					}
				else
					acal_state = acal_state_next;
				}
			}
		}
	if (acal_state==98)
		{
		if (f_vol_newval)
			{
			f_vol_newval=0;
			if (throwaway_count>0) throwaway_count--;
			else
				{
				if (average_count>0)
					{
					if (nd>0)
						{
						ndp_acc = ndp_acc + nd;
						average_count--;
						}
					}
				else
					acal_state = acal_state_next;
				}
			}
		}
	if (acal_state==0)
		{
		f_disp_update = 1;
		adc_cfg.az = 0;
		adc_cfg.fen = 0;
		adc_cfg.mux = ADC_MUX_GND;
		adc_cfg.gain = ADC_GAIN_1;
		adc_cfg.plc = 0;
		adc_cfg.re2a = 1;
		adc_update_stat= 1;
		acal_state_next = 1;
		acal_state = 98;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		ndp_acc = 0;
		}
	if (acal_state==1)
		{
		f_disp_update = 1;
		adc_ratio = ndp_acc / ACAL_CYC_AVERAGE;
		calibration_act.adc_scale = adc_ratio;
		adc_cfg.az = 1;
		adc_cfg.mux = ADC_MUX_GND;
		adc_cfg.gain = ADC_GAIN_1;
		adc_cfg.plc = ACAL_NPLC_SET;
		settings.nplc = adc_cfg.plc - 3;
		adc_update_stat= 1;
		acal_state_next = 2;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==2)
		{
		f_disp_update = 1;
		acal_res_10V_zero = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_R7V;
		adc_update_stat= 1;
		acal_state_next = 3;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==3)
		{
		f_disp_update = 1;
		acal_res_10V_7V = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_R07V;
		adc_update_stat= 1;
		acal_state_next = 4;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==4)
		{
		f_disp_update = 1;
		acal_res_10V_07V = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_GND;
		adc_cfg.gain = ADC_GAIN_10;
		adc_update_stat= 1;
		acal_state_next = 5;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==5)
		{
		f_disp_update = 1;
		acal_res_1V_zero = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_R07V;
		adc_update_stat= 1;
		acal_state_next = 6;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==6)
		{
		f_disp_update = 1;
		acal_res_1V_07V = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_R70M;
		adc_update_stat= 1;
		acal_state_next = 7;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==7)
		{
		f_disp_update = 1;
		acal_res_1V_70M = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_GND;
		adc_cfg.gain = ADC_GAIN_100;
		adc_update_stat= 1;
		acal_state_next = 8;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==8)
		{
		f_disp_update = 1;
		acal_res_100M_zero = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_R70M;
		adc_update_stat= 1;
		acal_state_next = 9;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==9)
		{
		f_disp_update = 1;
		acal_res_100M_70M = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_R9M;
		adc_cfg.re3 = 1;
		adc_update_stat= 1;
		acal_state_next = 10;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==10)
		{
		f_disp_update = 1;
		acal_res_100M_9M = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.mux = ADC_MUX_AMP;
		adc_cfg.gain = ADC_GAIN_1;
		adc_update_stat= 1;
		acal_state_next = 11;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==11)
		{
		f_disp_update = 1;
		acal_res_10M_9M = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.re3 = 0;
		adc_cfg.gain = ADC_GAIN_10;
		adc_cfg.dac_w = 0x100;
		adc_cfg.dac_c = ADC_DAC_B;
		adc_update_stat= 1;
		acal_state_next = 12;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==12)
		{
		f_disp_update = 1;
		acal_res_off_low = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_cfg.dac_w = 0x200;
		adc_update_stat= 1;
		acal_state_next = 13;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==13)
		{
		f_disp_update = 1;
		acal_res_off_high = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_update_stat= 1;
		acal_state_next = 14;
		adc_cfg.gain = ADC_GAIN_1;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		ftemp1 = acal_res_off_high - acal_res_off_low;
		ftemp2 = (float)(0x200-0x100);;
		ftemp1 = ftemp1/ftemp2;
		ftemp1 = -acal_res_off_low/ftemp1;
		dac_volt_zero = 0x100 + ((int)(ftemp1+0.5));
		adc_cfg.dac_w = dac_volt_zero;
		}

	if (acal_state==14)
		{
		f_disp_update = 1;
		acal_res_10M_zero = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_update_stat= 1;
		adc_cfg.gain = ADC_GAIN_10;
		acal_state_next = 15;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==15)
		{
		f_disp_update = 1;
		acal_res_1M_zero = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_update_stat= 1;
		adc_cfg.gain = ADC_GAIN_100;
		acal_state_next = 16;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}
	if (acal_state==16)
		{
		f_disp_update = 1;
		acal_res_100U_zero = volt_acc / ((float)(ACAL_CYC_AVERAGE));
		adc_update_stat= 1;
		adc_cfg.gain = ADC_GAIN_100;
		acal_state_next = 90;
		acal_state = 99;
		throwaway_count = ACAL_CYC_WAIT;
		average_count = ACAL_CYC_AVERAGE;
		volt_acc = 0.0;
		}

/*
 volatile float acal_res_10V_zero,acal_res_10V_7V,acal_res_10V_07V;
volatile float acal_res_1V_zero,acal_res_1V_07V,acal_res_1V_70M;
volatile float acal_res_100M_zero,acal_res_100M_70M,acal_res_100M_9M;
volatile float acal_res_10M_zero,acal_res_10M_9M;
volatile float acal_res_off_low,acal_res_off_high;
 */
	if (acal_state==90)
		{
		/*
		sprintf(tx_str,"A %f %f %f\n",acal_res_10V_zero,acal_res_10V_7V,acal_res_10V_07V);
		uart3_send_str(tx_str);
		sprintf(tx_str,"B %f %f %f\n",acal_res_1V_zero,acal_res_1V_07V,acal_res_1V_70M);
		uart3_send_str(tx_str);
		sprintf(tx_str,"C %f %f %f\n",acal_res_100M_zero,acal_res_100M_70M,acal_res_100M_9M);
		uart3_send_str(tx_str);
		sprintf(tx_str,"D %f %f\n",acal_res_off_low,acal_res_off_high);
		uart3_send_str(tx_str);
		sprintf(tx_str,"E %f %f\n",acal_res_10M_zero,acal_res_10M_9M);
		uart3_send_str(tx_str);
		sprintf(tx_str,"F %f %f\n",acal_res_1M_zero,acal_res_100U_zero);
		uart3_send_str(tx_str);
		sprintf(tx_str,"G %d %d\n",dac_volt_zero,adc_ratio);
		uart3_send_str(tx_str);
*/
		gain_1 = (acal_res_10V_7V-acal_res_10V_zero) / calibration_act.VREF_7;
		volt_07 = (acal_res_10V_07V-acal_res_10V_zero) / gain_1;
		gain_10 = (acal_res_1V_07V-acal_res_1V_zero) / volt_07;
		volt_70M = (acal_res_1V_70M - acal_res_1V_zero ) / gain_10;
		gain_100 = (acal_res_100M_70M -acal_res_100M_zero) / volt_70M;
		volt_9M = (acal_res_100M_9M-acal_res_100M_zero) / gain_100;
		gain_amp = (acal_res_10M_9M - acal_res_10M_zero) / volt_9M;

		calibration_act.adc_scale = adc_ratio;
		calibration_act.dac_v = dac_volt_zero;
		calibration_act.dac_i = 0x180;
		calibration_act.ranges[5].range_zero_corr = - acal_res_10V_zero;
		calibration_act.ranges[5].range_gain_corr = gain_1;
		calibration_act.ranges[4].range_zero_corr = - acal_res_1V_zero;
		calibration_act.ranges[4].range_gain_corr = gain_10;
		calibration_act.ranges[3].range_zero_corr = - acal_res_100M_zero;
		calibration_act.ranges[3].range_gain_corr = gain_100;
		calibration_act.ranges[2].range_zero_corr = - acal_res_10M_zero;
		calibration_act.ranges[2].range_gain_corr = gain_1*gain_amp;
		calibration_act.ranges[1].range_zero_corr = - acal_res_1M_zero;
		calibration_act.ranges[1].range_gain_corr = gain_10*gain_amp;
		calibration_act.ranges[0].range_zero_corr = - acal_res_100U_zero;
		calibration_act.ranges[0].range_gain_corr = gain_100*gain_amp;

		calibration_save(EE_ADDR_CAL1, &calibration_act);
		acal_state = 91;
		adc_cfg.fen=1;
		adc_cfg.mux = ADC_MUX_IN;
		adc_cfg.gain = ADC_GAIN_1;
		adc_cfg.dac_w = dac_volt_zero;
		adc_cfg.dac_c = ADC_DAC_B;
		adc_cfg.plc = settings.nplc;
		settings.nplc = adc_cfg.plc - 3;
		adc_cfg.re2b = 1;
		adc_cfg.az = settings.autozero;
		adc_update_stat= 1;
		range = 5;
		f_range_updated = 1;
		f_input_changed = 1;
		settings.filter_analog = 1;
		settings.filter_digital = 1;
//		f_uzero_enabled = 0;
//		voltage_uzero = 0.0;
		}
	if (acal_state==91)
		{
		acal_state = 0;
		main_state=ST_MAIN_NORMAL;
		}
	if (f_disp_update)
		{
		memset(lcd_str,' ',sizeof(lcd_str));
		sprintf(lcd_str,"ACAL %d/%d",acal_state_next-1,ACAL_STEPS);
		}

	}

//sudo rmmod ftdi_sio

module nvm_ctrl(
	CLK_32M,
	RESET,
	LED,LED2,DEBUG_TP1,DEBUG_TP2,DEBUG_TP3,
	SW_P, SW_N, SW_IN,
	AD_ACS,AD_ADO,AD_ACLK,
	COMP_IN,UART_RX,CON_START,
	UART_TX, CLK_OUT,
	RE3,RE4,RE1A,RE1B,RE2A,RE2B,MAG1,MAG10,MAG100,
	MS_A0,MS_A1,MS_A2,FEN_A,FEN_B,FEN_C,
	JA_DOUT,JA_DIN,JA_COMP,JA_C1,JA_C2,JA_C3,JA_SCK,JA_CS,
	AZ_SW, PW1, PW2, SU_A, SU_B
);
/*
39 - FC9 - AD_DI (unused)
42 - FC6 - ADACS
41 - FC5 - ADADO
40 - FC0 - ADACLK
51 - FC4 - COMP
52 - FC1 - S1 - INT_VP_GND/INT_VP_ACT
53 - FC2 - S2 - INT_IN_GND/INT_IN_ACT
54 - FC3 - S3 - INT_VN_GND/INT_VN_ACT
1 - FC10 - RE3
2 - FC11 - RE4
3 - FC12 - R1A
8 - FC13 - R1B
9 - FC14 - R2A
10 - FC15 - R2B
75 - FC16 - MAG1
71 - FC17 - MAG10
69 - FC18 - MAG100
74 - FC19 - MS_A2
70 - FC20 - MS_A1
68 - FC21 - MS_A0
66 - FC22 - JA_DOUT
64 - FC23 - JA_DIN
62 - FC24 - JA_COMP
67 - FC25 - JA_C1
65 - FC26 - JA_C2
63 - FC27 - JA_C3
61 - FC28 - JA_CS
60 - FC29 - JA_SCK
59 - FC30 - FEN_A
57 - FC31 - FEN_B
58 - FC32 - FEN_C
*/





input  CLK_32M,COMP_IN,UART_RX,CON_START,RESET;
output LED,LED2,SW_P,SW_N,SW_IN,UART_TX;
output DEBUG_TP1,DEBUG_TP2,DEBUG_TP3;
output AD_ACS,AD_ACLK,CLK_OUT;
input AD_ADO;
output RE3,RE4,RE1A,RE1B,RE2A,RE2B,MAG1,MAG10,MAG100;
output MS_A0,MS_A1,MS_A2,FEN_A,FEN_B,FEN_C;
input JA_DOUT,JA_COMP;
output JA_C1,JA_C2,JA_C3,JA_SCK,JA_CS,JA_DIN;
output AZ_SW, PW1, PW2, SU_A, SU_B;


reg led_r,sw_in_r,sw_p_r, sw_n_r;
reg comp_in_r,comp_in_ff,ad_ado_ff,ad_ado_r,con_start_ff,con_start_r;
reg ad_acs_r,ad_aclk_r;
reg reset_in_r,reset_in_ff;
reg debug_A,debug_B;
reg [20:0] cnt_msm;
reg [20:0] cnt_ic;
reg [20:0] cnt_ic_set;
reg [20:0] cnt_ic_pos;
reg [20:0] cnt_ic_neg;
reg [15:0] adc_res;
reg [4:0] main_state;
reg [6:0] spi_cnt;

reg uart_tx_start, uart_frame_start,uart_rx_rst;
reg [2:0] uart_frame_state,uart_frame_r;
reg [3:0] uart_frame_cnt;
wire uart_busy,uart_tx_bit_clock,uart_rx_bit_clock,uart_rx_ready;
reg [47:0] frame_content;
reg [47:0] result_content;
reg [31:0] uart_rx_frame;
reg [7:0] uart_tx_register;
reg [2:0] uart_rx_state;
wire [7:0] uart_rx_register;
reg[5:0] uart_divider;
reg[2:0] uart_rx_cnt;
reg[5:0] uart_prediv;
reg cal_en;
reg az_state, az_switch;

reg [4:0] adc_chrg_cnt;
reg [4:0] adc_chrg;
reg [10:0] adc_chrg_acc;
reg adc_chrg_pol,adc_chrg_force,sw_final;
reg cstart_slow, cstart_slow_sync;
reg [2:0] uart_rx_state;
reg dac_update;
reg [2:0] dac_state;
reg [7:0] dac_cnt;
reg [15:0] dac_word;
reg [15:0] dac_div;
reg dac_clk_r,dac_do_r,dac_cs_r,su_a_r,su_b_r;
reg [32:0] startup_cnt;

/*
always @(posedge CLK_32M)
	begin
	cnt_msm <= cnt_msm + 1;
	if (cnt_msm==2000)
		begin
		cnt_msm <= 0;
		cnt_ic  <= cnt_ic + 1;
		led_r <= ~ led_r;
		if (cnt_ic[0]==0)
			begin
			sw_p_r <= 0;
			sw_n_r <= 1;
			end
		else
			begin
			sw_p_r <= 1;
			sw_n_r <= 0;
			end			
		end
	end
*/



always @(posedge CLK_32M)
begin
	reset_in_ff <= RESET;
	reset_in_r <= reset_in_ff;
	if (reset_in_r==0) 
		begin
		startup_cnt<=0;
		end
	else
		begin
		if (startup_cnt>=10000000*32)
			su_a_r<=1;
		else
			su_a_r<=0;
		if (startup_cnt>=13000000*32)
			su_b_r<=1;
		else
			su_b_r<=0;
		if (startup_cnt<13000001*32)
			begin
			startup_cnt<=startup_cnt+1;
			end
		end
	
	
end

always @(posedge CLK_32M)
begin
	cstart_slow_sync <= CON_START;
	cstart_slow <= cstart_slow_sync;
	if (main_state==11)
		begin
		uart_rx_cnt<=0;
		dac_update<=0;
		end
	if (uart_rx_state==0)
		begin
		if (uart_rx_ready==1)
			begin
			//do something with rx data
			if (uart_rx_cnt==0)
				uart_rx_frame[7:0] <= uart_rx_register;
			if (uart_rx_cnt==1)
				uart_rx_frame[15:8] <= uart_rx_register;
			if (uart_rx_cnt==2)
				uart_rx_frame[23:16] <= uart_rx_register;
			if (uart_rx_cnt==3)
				begin
				uart_rx_frame[31:24] <= uart_rx_register;
				dac_update<=1;
				end
			uart_rx_state<=1;
			end
		end
	if (uart_rx_state==1)
		begin
		uart_rx_rst<=1;
		uart_rx_cnt<=uart_rx_cnt+1;
		uart_rx_state<=2;
		end
	if (uart_rx_state==2)
		begin
		if (uart_rx_ready==0)
			begin
			uart_rx_rst<=0;
			uart_rx_state<=0;
			end
		end
	if (dac_update==1)
		begin
		dac_word[15:8] <= uart_rx_frame[31:24];
		dac_word[7:2] <= uart_rx_frame[23:18];
		dac_word[1:0] <= 0;
		dac_state<=1;
		dac_cs_r <= 0;
		end
	if (dac_state==0)
		begin
		dac_cs_r <= 1;
		end
	if (dac_state==1)
		begin
		dac_update<=0;
		dac_cnt<=0;
		dac_state<=2;
		end
	if (dac_state==2)
		begin
		dac_div<=10;
		if (dac_cnt[0]==0)
			begin
			dac_do_r<= dac_word[15];
			dac_clk_r<=0;
			end
		if (dac_cnt[0]==1)
			begin
			dac_word[15:1]<=dac_word[14:0];
			dac_clk_r<=1;			
			end
		if (dac_cnt==32)
			begin
			dac_div<=10;
			dac_state<=4;
			end
		else
			begin
			dac_state<=3;
			dac_cnt<=dac_cnt+1;
			end
		end
	if (dac_state==3)
		begin
		dac_div<=dac_div-1;
		if (dac_div==0)
			dac_state<=2;
		end
	if (dac_state==4)
		begin
		dac_div<=dac_div-1;
		if (dac_div==0)
			dac_state<=0;
		end
		
end


always @(posedge CLK_32M)
	begin
	con_start_ff <= CON_START;
	con_start_r <= con_start_ff;
	comp_in_ff <= COMP_IN;
	comp_in_r <= comp_in_ff;
	ad_ado_ff <= AD_ADO;
	ad_ado_r <= ad_ado_ff;
	cnt_msm <= cnt_msm + 1;
	uart_prediv <= uart_prediv + 1;
	
	if (con_start_r==0)
		begin
		sw_p_r <= 1;
		sw_n_r <= 1;
		sw_in_r <= 1;		
		main_state <= 0;
		cnt_ic<=0;
		spi_cnt<=0;
		cnt_msm <= 0;
		cnt_ic_neg<=0;
		cnt_ic_pos<=0;
		end
	if (uart_prediv==4)
		begin
		uart_prediv<=0;
		uart_divider<=uart_divider+1;
		end
		
	if (main_state==6)
		begin
		if (cnt_msm==1279)
			begin
			cnt_msm <= 0;
			main_state <= 0;
			end
		end
		
	if (main_state==0)
		begin
		debug_A<=0;
		spi_cnt<=0;
		if (con_start_r==1)
			begin
			main_state <= 11;
			cnt_msm <= 0;
			debug_A<=1;
			end
		end
		
	if (main_state==11)
		begin
		sw_p_r <= 1;
		sw_n_r <= 1;
		sw_in_r <= 1;
		ad_acs_r <= 0;
		if (cnt_msm==50)
			begin
			cnt_msm <= 0;
			if (spi_cnt[0]==0)
				begin
				ad_aclk_r<=0;
				adc_res[15:1]<=adc_res[14:0];
				end
			else
				begin
				ad_aclk_r<=1;
				adc_res[0]<= ad_ado_r;
				end
			spi_cnt <= spi_cnt + 1;
			if (spi_cnt==32)
				begin
				result_content[47:32] <= cnt_ic_neg;
				result_content[31:16] <= cnt_ic_pos;
				result_content[15] <= az_state;
				result_content[14:0] <= adc_res[14:0];
				cnt_ic_pos<=0;
				cnt_ic_neg<=0;
				main_state <= 12;
				uart_frame_start<=1;				
				cnt_msm <= 0;
				cnt_ic<=0;
				ad_acs_r <= 1;
				if (uart_rx_frame[15]==1)
					begin
					az_switch <= ~az_switch;
					end
				else
					begin
					az_switch <= 0;
					end

				case (uart_rx_frame[7:5])
					3'b000 : cnt_ic_set<=1;
					3'b001 : cnt_ic_set<=2;
					3'b010 : cnt_ic_set<=2500;
					3'b011 : cnt_ic_set<=2500;
					3'b100 : cnt_ic_set<=5000;
					3'b101 : cnt_ic_set<=12500;
					3'b110 : cnt_ic_set<=25000;
					3'b111 : cnt_ic_set<=50000;
					endcase
				case (uart_rx_frame[7:5])
					3'b000 : cal_en<=1;
					3'b001 : cal_en<=1;
					3'b010 : cal_en<=0;
					3'b011 : cal_en<=0;
					3'b100 : cal_en<=0;
					3'b101 : cal_en<=0;
					3'b110 : cal_en<=0;
					3'b111 : cal_en<=0;
					endcase

				end
			end
		end
	
	if (main_state==12)
		begin
		if (cnt_msm==1279)
			begin
			cnt_msm <= 0;
			main_state <= 7;
			end
		end
		
	if (main_state==7)
		begin
		uart_frame_start<=0;
		if (cnt_msm==16000)
			begin
			cnt_msm <= 0;
			if (cal_en==1)
				main_state <= 8;
			else
				main_state <= 1;
			end
		end
		
	if (main_state==8)
		begin
		uart_frame_start<=0;
		if (cnt_msm==640000)
			begin
			cnt_msm <= 0;
			main_state <= 1;
			adc_chrg_acc <= 500;
			end
		end
		
	if (main_state==1)
		begin
		if (cnt_ic==cnt_ic_set)
		//if (cnt_ic==101)
			begin
			cnt_msm <= 0;
			cnt_ic<=0;
			spi_cnt<=0;
			main_state <= 6;
			sw_p_r <= 1;
			sw_n_r <= 1;
			sw_in_r <= 1;
			az_state <= az_switch;
			end
		if (cnt_msm==0)
			begin
			led_r <= ~ led_r;
			adc_chrg_cnt<=0;
			adc_chrg<=0;
			end
		//jar ??? two if
		if (cnt_msm[4:0]==0)			if (cnt_msm==0)
				begin
				led_r <= ~ led_r;
				adc_chrg_cnt<=0;
				adc_chrg<=0;
				end
			else
				begin
				adc_chrg_cnt<=adc_chrg_cnt+1;
				if (comp_in_r==0)
					begin
					adc_chrg<=adc_chrg+1;
					end
				end
		if (cnt_msm==1)
			begin
			sw_in_r <= cal_en;
			if (adc_chrg_force==0)
				sw_final<=comp_in_r;
			else
				sw_final<=~adc_chrg_pol;
			//jar - decision either classic algorithm or avg volt balance
//			if (sw_final==0)
			if (comp_in_r==0)
				begin
				sw_p_r <= 1;
				sw_n_r <= 0;
				cnt_ic_neg<=cnt_ic_neg+1;
				end
			else
				begin
				sw_p_r <= 0;
				sw_n_r <= 1;
				cnt_ic_pos<=cnt_ic_pos+1;
				end
			end			
		if (cnt_msm==225)
			begin
			sw_p_r <= ~ sw_p_r;
			sw_n_r <= ~ sw_n_r;
			end
		if (cnt_msm==255)
			begin
			cnt_ic <= cnt_ic + 1;
			cnt_msm <= 0;	
			adc_chrg_acc <= adc_chrg_acc + adc_chrg - 4;
			
			if (adc_chrg_acc<300)
				adc_chrg_acc<=300;
			if (adc_chrg_acc>700)
				adc_chrg_acc<=700;
			
			if (adc_chrg_acc<500)
				adc_chrg_pol<=0;
			else
				adc_chrg_pol<=1;
			
			if ((adc_chrg_acc>490)&(adc_chrg_acc<510))
				adc_chrg_force<=0;
			else
				adc_chrg_force<=1;
			end
		end			
		
	end

/*
1 - FC10 - RE3
2 - FC11 - RE4
3 - FC12 - R1A
8 - FC13 - R1B
9 - FC14 - R2A
10 - FC15 - R2B
75 - FC16 - MAG1
71 - FC17 - MAG10
69 - FC18 - MAG100
74 - FC19 - MS_A2
70 - FC20 - MS_A1
68 - FC21 - MS_A0
59 - FC30 - FEN_A
57 - FC31 - FEN_B
58 - FC32 - FEN_C

*/	

	assign JA_SCK = dac_clk_r;
	assign JA_DIN = dac_do_r;
	assign JA_CS = dac_cs_r;

	assign CLK_OUT = uart_rx_register[1];
	assign LED = led_r;
	assign SW_P = sw_p_r;
	assign SW_N = sw_n_r;
	assign SW_IN = sw_in_r;
	assign AD_ACLK = ad_aclk_r;
	assign AD_ACS = ad_acs_r;
	assign DEBUG_TP1 = uart_rx_cnt[0];
	assign DEBUG_TP2 = uart_rx_cnt[1];
	assign DEBUG_TP3 = uart_rx_cnt[2];
	assign LED2 = uart_rx_frame[0];
	assign RE1A = uart_rx_frame[0];
	assign RE1B = uart_rx_frame[1];
	assign RE2A = uart_rx_frame[2];
	assign RE2B = uart_rx_frame[3];
	assign RE3 = uart_rx_frame[4];
	assign RE4 = ~uart_rx_frame[4];
	assign MAG1 = uart_rx_frame[8];
	assign MAG10 = uart_rx_frame[9];
	assign MAG100 = uart_rx_frame[10];
	assign MS_A0 = uart_rx_frame[11];
	assign MS_A1 = uart_rx_frame[12];
	assign MS_A2 = uart_rx_frame[13];
	assign FEN_A = ~uart_rx_frame[14];
	assign FEN_B = uart_rx_frame[14];
	assign FEN_C = ~uart_rx_frame[14];
//	assign az_enabled = uart_rx_frame[15];
	assign PW1 = uart_rx_frame[16];
	assign PW2 = uart_rx_frame[17];
	assign AZ_SW = az_switch;
	assign SU_A = su_a_r;
	assign SU_B = su_b_r;	
	
//assign deb_0 = si_dat;
//assign deb_1 = si_dat;
//assign deb_2 = debug[0];
assign uart_tx_bit_clock = uart_divider[3];
assign uart_rx_bit_clock = uart_divider[0];
assign vref_su = 1;
//assign par_out[13:0] = par_out_r[13:0];

always @ (posedge uart_tx_bit_clock)
	begin
	if (uart_frame_start)
		begin
		uart_frame_r <=1;
		end
	if ((uart_frame_r==1)&(uart_frame_start==0))
		begin
		uart_frame_r <=0;
		uart_frame_cnt <= 0;
		//frame_content <= 48'h3366AA550FF0;
		frame_content <= result_content;
		uart_frame_state <=0;		
		end
	if (uart_frame_state==0)
		begin
		if (uart_frame_cnt==0)
			uart_tx_register <= frame_content[47:40];
		if (uart_frame_cnt==1)
			uart_tx_register <= frame_content[39:32];
		if (uart_frame_cnt==2)
			uart_tx_register <= frame_content[31:24];
		if (uart_frame_cnt==3)
			uart_tx_register <= frame_content[23:16];
		if (uart_frame_cnt==4)
			uart_tx_register <= frame_content[15:8];
		if (uart_frame_cnt==5)
			uart_tx_register <= frame_content[7:0];
		uart_tx_start<=1;
		if (uart_busy==1)
			uart_frame_state <=1;
		end
	else if (uart_frame_state==1)
		begin
		uart_tx_start<=0;
		if (uart_busy==0)
			begin
			if (uart_frame_cnt==5)
				begin
				uart_frame_state <=2;
				end
			else
				begin
				uart_frame_cnt <= uart_frame_cnt + 1;
				uart_frame_state <=0;
				end
			end
		end
	else if (uart_frame_state==2)
		begin
		end
	end

	
	
	uart_tx uart_tx_a(
	.uart_tx_bclk(uart_tx_bit_clock),
	.uart_tx_start(uart_tx_start),
	//.uart_tx_start(uart_frame_start),
	.uart_tx_data(uart_tx_register),
	//.uart_tx_data(8'hA6),
	.uart_tx_pin(UART_TX),
	.uart_tx_busy(uart_busy)
	);


	uart_rx uart_rx_a(
	.uart_rx_bclk(uart_rx_bit_clock),
	.uart_rx_pin_raw(UART_RX),
	.uart_rx_data(uart_rx_register),
	.uart_rx_rdy(uart_rx_ready),
	.uart_rx_clr(uart_rx_rst),
	.uart_rx_dbg(deb_1)
	);
	
	
endmodule
	

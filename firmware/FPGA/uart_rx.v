


module uart_rx(
			input uart_rx_bclk, 
			output reg [7:0] uart_rx_data,
			input uart_rx_pin_raw,
			output reg uart_rx_rdy,
			input uart_rx_clr,
			output reg uart_rx_dbg
		);
		
reg uart_rx_pin_tmp, uart_rx_pin;
reg[2:0] uart_rx_state;
reg[4:0] uart_rx_cnt;
reg[4:0] uart_rx_bit;
reg[4:0] uart_rx_zero_cnt;
reg[7:0] uart_rx_tmp;
reg rx_pin_state;


always @(posedge uart_rx_bclk)
	begin
	uart_rx_pin_tmp <= uart_rx_pin_raw;
	uart_rx_pin <= uart_rx_pin_tmp;
	if (uart_rx_clr)
		begin
		uart_rx_rdy<=0;
		uart_rx_state<=4;
		end	
	if (uart_rx_state==0)
		begin
		if (uart_rx_pin==0)
			begin
			uart_rx_cnt<=uart_rx_cnt+1;		
			if (uart_rx_cnt==6)
				begin
				uart_rx_state<=1;
				uart_rx_zero_cnt<=0;
				uart_rx_bit<=0;
				uart_rx_cnt<=0;
				uart_rx_tmp<=0;
				end
			end
		else
			begin
			uart_rx_cnt<=0;
			end
			
		end
	if (uart_rx_state==1)
		begin
		uart_rx_cnt<=uart_rx_cnt+1;
		if (uart_rx_pin==0)
			begin
			uart_rx_zero_cnt<=uart_rx_zero_cnt+1;
			end
		if (uart_rx_zero_cnt>3) 
			begin
			rx_pin_state<=0;
			end
		else 
			begin
			rx_pin_state<=1;
			end
		uart_rx_dbg = rx_pin_state;
		
		if (uart_rx_cnt==7)
			begin
			uart_rx_tmp[uart_rx_bit]<=rx_pin_state;
			uart_rx_zero_cnt<=0;
			uart_rx_bit<=uart_rx_bit+1;
			uart_rx_cnt<=0;
			
			if (uart_rx_bit==7)
				begin
				uart_rx_state<=2;
				end
			end
		end
	if (uart_rx_state==2)
		begin
		uart_rx_dbg =~ uart_rx_dbg;
		uart_rx_cnt<=uart_rx_cnt+1;
		if (uart_rx_pin==0)
			begin
			uart_rx_zero_cnt<=uart_rx_zero_cnt+1;
			end
		if (uart_rx_cnt==8)
			begin
			if (uart_rx_zero_cnt<3)
				begin
				uart_rx_state<=3;
				end
			end
		end
	if (uart_rx_state==3)
		begin
		uart_rx_rdy<=1;
		uart_rx_data<=uart_rx_tmp;
		end
	if (uart_rx_state==4)
		begin
		if (uart_rx_clr==0)
			begin
			uart_rx_rdy<=0;
			uart_rx_state<=0;
			end
		end	
	end
endmodule

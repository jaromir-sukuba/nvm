
module uart_tx(
			input uart_tx_bclk, 
			input uart_tx_start,
			input [7:0] uart_tx_data,
			output reg uart_tx_pin,
			output reg uart_tx_busy
		);
reg[2:0] uart_tx_state;
reg[2:0] uart_tx_bit;

always @(posedge uart_tx_bclk)
	begin
	if (uart_tx_start==1)
		begin
		uart_tx_state<=0;
		end
	if (uart_tx_state==0)
		begin
		uart_tx_busy<=1;
		if (uart_tx_start==0)
			uart_tx_state<=1;
		end
	if (uart_tx_state==1)
		begin
		uart_tx_pin <=0;
		uart_tx_state<=2;
		uart_tx_bit<=0;
		end	
	else if (uart_tx_state==2)
		begin
//		uart_tx_busy = ~ uart_tx_busy;
		uart_tx_pin <= uart_tx_data[uart_tx_bit];
		if (uart_tx_bit<7)
			uart_tx_bit <= uart_tx_bit + 1;
		else
			begin
			uart_tx_state<=3;
			end
		end
	else if (uart_tx_state==3)
		begin
		uart_tx_pin <=1;
		uart_tx_state<=4;
		end		
	else if (uart_tx_state==4)
		begin
		uart_tx_busy<=0;
		end	
	end		
endmodule

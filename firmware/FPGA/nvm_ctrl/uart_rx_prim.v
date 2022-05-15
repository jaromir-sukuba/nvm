// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Mar 15 00:34:17 2022
//
// Verilog Description of module uart_rx
//

module uart_rx (uart_rx_bclk, uart_rx_data, uart_rx_pin_raw, uart_rx_rdy, 
            uart_rx_clr, uart_rx_dbg) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(4[8:15])
    input uart_rx_bclk;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(5[10:22])
    output [7:0]uart_rx_data;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    input uart_rx_pin_raw;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(7[10:25])
    output uart_rx_rdy;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(8[15:26])
    input uart_rx_clr;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(9[10:21])
    output uart_rx_dbg;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(10[15:26])
    
    wire uart_rx_bclk_c /* synthesis SET_AS_NETWORK=uart_rx_bclk_c, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(5[10:22])
    
    wire GND_net, VCC_net, uart_rx_data_c_7, uart_rx_data_c_6, uart_rx_data_c_5, 
        uart_rx_data_c_4, uart_rx_data_c_3, uart_rx_data_c_2, uart_rx_data_c_1, 
        uart_rx_data_c_0, uart_rx_pin_raw_c, uart_rx_rdy_c, uart_rx_clr_c, 
        uart_rx_dbg_c, uart_rx_pin_tmp, uart_rx_pin;
    wire [2:0]uart_rx_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(14[10:23])
    wire [4:0]uart_rx_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(15[10:21])
    wire [4:0]uart_rx_bit;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(16[10:21])
    wire [4:0]uart_rx_zero_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(17[10:26])
    wire [7:0]uart_rx_tmp;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(18[10:21])
    
    wire rx_pin_state, n6, uart_rx_bclk_c_enable_1, uart_rx_bclk_c_enable_16, 
        uart_rx_bclk_c_enable_23, n27, n28, n1, n27_adj_1, uart_rx_bclk_c_enable_9, 
        n933, uart_rx_bclk_c_enable_27, n11, n946, n6_adj_2, uart_rx_bclk_c_enable_4, 
        rx_pin_state_N_99, n938, n28_adj_3, n29, n29_adj_4;
    wire [7:0]uart_rx_tmp_7__N_27;
    
    wire n30, n1690, n30_adj_5, uart_rx_dbg_N_96, n28_adj_6, n26, 
        n26_adj_7, n27_adj_8, n26_adj_9, n1578, uart_rx_rdy_N_91, 
        uart_rx_bclk_c_enable_10, n1587, n1689, n804, n1695, n1708, 
        n1707, n627, n29_adj_10, n1706, uart_rx_bclk_c_enable_2, n1254, 
        n1705, n1703, uart_rx_bclk_c_enable_5, n1591, uart_rx_bclk_c_enable_6, 
        uart_rx_bclk_c_enable_7, uart_rx_bclk_c_enable_8, n1294, uart_rx_bclk_c_enable_18, 
        uart_rx_bclk_c_enable_19, n1694, n1702, n1723, uart_rx_bclk_c_enable_3, 
        n1701, n1713, n1712, n1700, n1699, n1608, n1693, n1692, 
        n10, n1710, n1691, n1709;
    
    VHI i2 (.Z(VCC_net));
    GSR GSR_INST (.GSR(VCC_net));
    OB uart_rx_data_pad_5 (.I(uart_rx_data_c_5), .O(uart_rx_data[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    FD1P3AX uart_rx_data_i0_i1 (.D(uart_rx_tmp[0]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_0));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i1.GSR = "ENABLED";
    FD1P3IX uart_rx_state__i2 (.D(n1723), .SP(uart_rx_clr_c), .CD(n1591), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_state[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i2.GSR = "ENABLED";
    OB uart_rx_data_pad_6 (.I(uart_rx_data_c_6), .O(uart_rx_data[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    FD1P3AX uart_rx_tmp_i0 (.D(uart_rx_tmp_7__N_27[0]), .SP(uart_rx_bclk_c_enable_1), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i0.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i6 (.D(uart_rx_tmp_7__N_27[6]), .SP(uart_rx_bclk_c_enable_2), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i6.GSR = "ENABLED";
    FD1S3AX uart_rx_pin_92 (.D(uart_rx_pin_tmp), .CK(uart_rx_bclk_c), .Q(uart_rx_pin));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_pin_92.GSR = "ENABLED";
    FD1P3AX uart_rx_rdy_93 (.D(uart_rx_rdy_N_91), .SP(uart_rx_bclk_c_enable_3), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_rdy_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_rdy_93.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i5 (.D(uart_rx_tmp_7__N_27[5]), .SP(uart_rx_bclk_c_enable_4), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i5.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i4 (.D(uart_rx_tmp_7__N_27[4]), .SP(uart_rx_bclk_c_enable_5), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i4.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i3 (.D(uart_rx_tmp_7__N_27[3]), .SP(uart_rx_bclk_c_enable_6), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i3.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i2 (.D(uart_rx_tmp_7__N_27[2]), .SP(uart_rx_bclk_c_enable_7), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i2.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i1 (.D(uart_rx_tmp_7__N_27[1]), .SP(uart_rx_bclk_c_enable_8), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i1.GSR = "ENABLED";
    FD1S3AX uart_rx_dbg_100 (.D(uart_rx_dbg_N_96), .CK(uart_rx_bclk_c), 
            .Q(uart_rx_dbg_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_dbg_100.GSR = "ENABLED";
    FD1S3AX uart_rx_pin_tmp_91 (.D(uart_rx_pin_raw_c), .CK(uart_rx_bclk_c), 
            .Q(uart_rx_pin_tmp));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_pin_tmp_91.GSR = "ENABLED";
    FD1P3AX uart_rx_state__i0 (.D(n6_adj_2), .SP(uart_rx_bclk_c_enable_9), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_state[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i0.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i8 (.D(uart_rx_tmp[7]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_7));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i8.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i7 (.D(uart_rx_tmp[6]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_6));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i6 (.D(uart_rx_tmp[5]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_5));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i6.GSR = "ENABLED";
    OB uart_rx_data_pad_7 (.I(uart_rx_data_c_7), .O(uart_rx_data[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    LUT4 i807_2_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), .Z(n1254)) /* synthesis lut_function=(A (B)) */ ;
    defparam i807_2_lut.init = 16'h8888;
    FD1P3AX uart_rx_data_i0_i5 (.D(uart_rx_tmp[4]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_4));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i5.GSR = "ENABLED";
    LUT4 i980_2_lut (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), .Z(n29_adj_4)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i980_2_lut.init = 16'h6666;
    FD1P3AX uart_rx_data_i0_i4 (.D(uart_rx_tmp[3]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_3));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i3 (.D(uart_rx_tmp[2]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i3.GSR = "ENABLED";
    LUT4 i947_2_lut_rep_28 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .Z(n1706)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i947_2_lut_rep_28.init = 16'h8888;
    LUT4 i958_2_lut_3_lut_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), 
         .C(uart_rx_cnt[3]), .D(uart_rx_cnt[2]), .Z(n27_adj_1)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i958_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX uart_rx_data_i0_i2 (.D(uart_rx_tmp[1]), .SP(uart_rx_rdy_N_91), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_data_c_1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i2.GSR = "ENABLED";
    IB uart_rx_clr_pad (.I(uart_rx_clr), .O(uart_rx_clr_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(9[10:21])
    IB uart_rx_pin_raw_pad (.I(uart_rx_pin_raw), .O(uart_rx_pin_raw_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(7[10:25])
    IB uart_rx_bclk_pad (.I(uart_rx_bclk), .O(uart_rx_bclk_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(5[10:22])
    OB uart_rx_dbg_pad (.I(uart_rx_dbg_c), .O(uart_rx_dbg));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(10[15:26])
    OB uart_rx_rdy_pad (.I(uart_rx_rdy_c), .O(uart_rx_rdy));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(8[15:26])
    OB uart_rx_data_pad_0 (.I(uart_rx_data_c_0), .O(uart_rx_data[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    OB uart_rx_data_pad_1 (.I(uart_rx_data_c_1), .O(uart_rx_data[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    OB uart_rx_data_pad_2 (.I(uart_rx_data_c_2), .O(uart_rx_data[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    FD1P3AX rx_pin_state_99 (.D(rx_pin_state_N_99), .SP(uart_rx_bclk_c_enable_10), 
            .CK(uart_rx_bclk_c), .Q(rx_pin_state));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam rx_pin_state_99.GSR = "ENABLED";
    OB uart_rx_data_pad_3 (.I(uart_rx_data_c_3), .O(uart_rx_data[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    FD1P3IX uart_rx_zero_cnt_230__i0 (.D(n30_adj_5), .SP(uart_rx_bclk_c_enable_16), 
            .CD(n946), .CK(uart_rx_bclk_c), .Q(uart_rx_zero_cnt[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_230__i0.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_230__i1 (.D(n29_adj_4), .SP(uart_rx_bclk_c_enable_16), 
            .CD(n946), .CK(uart_rx_bclk_c), .Q(uart_rx_zero_cnt[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_230__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_230__i2 (.D(n28), .SP(uart_rx_bclk_c_enable_16), 
            .CD(n946), .CK(uart_rx_bclk_c), .Q(uart_rx_zero_cnt[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_230__i2.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_230__i3 (.D(n27), .SP(uart_rx_bclk_c_enable_16), 
            .CD(n946), .CK(uart_rx_bclk_c), .Q(uart_rx_zero_cnt[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_230__i3.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_234__i0 (.D(n30), .SP(uart_rx_bclk_c_enable_27), 
            .CD(n933), .CK(uart_rx_bclk_c), .Q(uart_rx_cnt[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_234__i0.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_230__i4 (.D(n26), .SP(uart_rx_bclk_c_enable_16), 
            .CD(n946), .CK(uart_rx_bclk_c), .Q(uart_rx_zero_cnt[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_230__i4.GSR = "ENABLED";
    OB uart_rx_data_pad_4 (.I(uart_rx_data_c_4), .O(uart_rx_data[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(6[21:33])
    FD1P3IX uart_rx_bit_232__i0 (.D(n1), .SP(uart_rx_bclk_c_enable_23), 
            .CD(n938), .CK(uart_rx_bclk_c), .Q(uart_rx_bit[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_232__i0.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i7 (.D(uart_rx_tmp_7__N_27[7]), .SP(uart_rx_bclk_c_enable_18), 
            .CK(uart_rx_bclk_c), .Q(uart_rx_tmp[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i7.GSR = "ENABLED";
    FD1P3IX uart_rx_state__i1 (.D(n1689), .SP(uart_rx_bclk_c_enable_19), 
            .CD(n1708), .CK(uart_rx_bclk_c), .Q(uart_rx_state[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_bit_232__i1 (.D(n29_adj_10), .SP(uart_rx_bclk_c_enable_23), 
            .CD(n938), .CK(uart_rx_bclk_c), .Q(uart_rx_bit[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_232__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_bit_232__i2 (.D(n28_adj_6), .SP(uart_rx_bclk_c_enable_23), 
            .CD(n938), .CK(uart_rx_bclk_c), .Q(uart_rx_bit[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_232__i2.GSR = "ENABLED";
    FD1P3IX uart_rx_bit_232__i3 (.D(n27_adj_8), .SP(uart_rx_bclk_c_enable_23), 
            .CD(n938), .CK(uart_rx_bclk_c), .Q(uart_rx_bit[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_232__i3.GSR = "ENABLED";
    FD1P3IX uart_rx_bit_232__i4 (.D(n26_adj_7), .SP(uart_rx_bclk_c_enable_23), 
            .CD(n938), .CK(uart_rx_bclk_c), .Q(uart_rx_bit[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_232__i4.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_234__i1 (.D(n29), .SP(uart_rx_bclk_c_enable_27), 
            .CD(n933), .CK(uart_rx_bclk_c), .Q(uart_rx_cnt[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_234__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_234__i2 (.D(n28_adj_3), .SP(uart_rx_bclk_c_enable_27), 
            .CD(n933), .CK(uart_rx_bclk_c), .Q(uart_rx_cnt[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_234__i2.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3IX uart_rx_cnt_234__i3 (.D(n27_adj_1), .SP(uart_rx_bclk_c_enable_27), 
            .CD(n933), .CK(uart_rx_bclk_c), .Q(uart_rx_cnt[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_234__i3.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_234__i4 (.D(n26_adj_9), .SP(uart_rx_bclk_c_enable_27), 
            .CD(n933), .CK(uart_rx_bclk_c), .Q(uart_rx_cnt[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_234__i4.GSR = "ENABLED";
    LUT4 i951_2_lut_3_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .C(uart_rx_cnt[2]), 
         .Z(n28_adj_3)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i951_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_then_4_lut (.A(uart_rx_state[0]), .B(uart_rx_state[2]), 
         .C(rx_pin_state), .D(uart_rx_state[1]), .Z(n1710)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(D))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'heefd;
    LUT4 i1_4_lut_else_4_lut (.A(uart_rx_state[0]), .B(uart_rx_state[2]), 
         .C(rx_pin_state), .D(uart_rx_state[1]), .Z(n1709)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h1120;
    LUT4 i811_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1690), .C(rx_pin_state), 
         .D(uart_rx_bit[2]), .Z(uart_rx_tmp_7__N_27[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i811_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1168_3_lut_4_lut_4_lut_3_lut_3_lut_then_3_lut (.A(uart_rx_state[2]), 
         .B(uart_rx_state[1]), .C(n1695), .Z(n1713)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(102[6:22])
    defparam i1168_3_lut_4_lut_4_lut_3_lut_3_lut_then_3_lut.init = 16'h0101;
    LUT4 i1185_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1690), .C(n1694), 
         .D(uart_rx_bit[2]), .Z(uart_rx_bclk_c_enable_5)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1185_2_lut_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i819_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1690), .C(rx_pin_state), 
         .D(uart_rx_bit[2]), .Z(uart_rx_tmp_7__N_27[4])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i819_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1168_3_lut_4_lut_4_lut_3_lut_3_lut_else_3_lut (.A(uart_rx_state[2]), 
         .B(n804), .C(uart_rx_state[1]), .D(uart_rx_pin), .Z(n1712)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(102[6:22])
    defparam i1168_3_lut_4_lut_4_lut_3_lut_3_lut_else_3_lut.init = 16'h0501;
    LUT4 uart_rx_clr_c_bdd_4_lut (.A(uart_rx_clr_c), .B(uart_rx_state[1]), 
         .C(uart_rx_state[0]), .D(uart_rx_state[2]), .Z(uart_rx_bclk_c_enable_3)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam uart_rx_clr_c_bdd_4_lut.init = 16'habea;
    LUT4 i942_1_lut (.A(uart_rx_cnt[0]), .Z(n30)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i942_1_lut.init = 16'h5555;
    LUT4 i1174_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1691), .C(n1694), 
         .D(uart_rx_bit[2]), .Z(uart_rx_bclk_c_enable_8)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1174_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i5_3_lut_rep_15 (.A(uart_rx_bit[0]), .B(n10), .C(n1695), .Z(n1693)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i5_3_lut_rep_15.init = 16'hfdfd;
    LUT4 i1217_2_lut_rep_11_2_lut_4_lut (.A(uart_rx_bit[0]), .B(n10), .C(n1695), 
         .D(n627), .Z(n1689)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i1217_2_lut_rep_11_2_lut_4_lut.init = 16'hff02;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i822_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1691), .C(rx_pin_state), 
         .D(uart_rx_bit[2]), .Z(uart_rx_tmp_7__N_27[1])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i822_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1202_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1691), .C(n1694), 
         .D(uart_rx_bit[2]), .Z(uart_rx_bclk_c_enable_4)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1202_2_lut_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i818_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1691), .C(rx_pin_state), 
         .D(uart_rx_bit[2]), .Z(uart_rx_tmp_7__N_27[5])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i818_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i281_1_lut (.A(uart_rx_bit[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i281_1_lut.init = 16'h5555;
    LUT4 i908_2_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), .Z(n29_adj_10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i908_2_lut.init = 16'h6666;
    LUT4 i817_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n1254), .Z(uart_rx_tmp_7__N_27[6])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i817_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1208_2_lut_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(n1694), 
         .D(n1254), .Z(uart_rx_bclk_c_enable_2)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i1208_2_lut_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i492_2_lut_3_lut_3_lut_4_lut (.A(n804), .B(n1699), .C(n1695), 
         .D(uart_rx_bclk_c_enable_10), .Z(n938)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i492_2_lut_3_lut_3_lut_4_lut.init = 16'h1011;
    LUT4 i1193_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n804), .B(n1699), .C(n1695), 
         .D(uart_rx_bclk_c_enable_10), .Z(uart_rx_bclk_c_enable_23)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;
    defparam i1193_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h1f11;
    LUT4 i944_2_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .Z(n29)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i944_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_14_2_lut_4_lut (.A(uart_rx_cnt[0]), .B(n1587), .C(n1705), 
         .D(uart_rx_bclk_c_enable_10), .Z(n1692)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i1_2_lut_rep_14_2_lut_4_lut.init = 16'hdfff;
    LUT4 i798_4_lut_4_lut (.A(n1708), .B(n1693), .C(n627), .D(n1694), 
         .Z(n6_adj_2)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i798_4_lut_4_lut.init = 16'h5054;
    LUT4 i1_2_lut_rep_13_3_lut_3_lut_4_lut (.A(uart_rx_state[0]), .B(n1702), 
         .C(n1695), .D(uart_rx_bit[0]), .Z(n1691)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(51[6:22])
    defparam i1_2_lut_rep_13_3_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i911_2_lut_rep_29 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), .Z(n1707)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i911_2_lut_rep_29.init = 16'h8888;
    LUT4 i4_4_lut (.A(rx_pin_state_N_99), .B(n1608), .C(uart_rx_cnt[0]), 
         .D(n6), .Z(n627)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_12_3_lut_3_lut_4_lut (.A(uart_rx_state[0]), .B(n1702), 
         .C(n1695), .D(uart_rx_bit[0]), .Z(n1690)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(51[6:22])
    defparam i1_2_lut_rep_12_3_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1162_4_lut (.A(uart_rx_cnt[2]), .B(n1701), .C(uart_rx_cnt[1]), 
         .D(uart_rx_cnt[4]), .Z(n1608)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1162_4_lut.init = 16'hfffe;
    LUT4 i915_2_lut_3_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), .C(uart_rx_bit[2]), 
         .Z(n28_adj_6)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i915_2_lut_3_lut.init = 16'h7878;
    LUT4 i1171_3_lut_4_lut (.A(uart_rx_state[1]), .B(n1703), .C(uart_rx_pin), 
         .D(n1294), .Z(uart_rx_bclk_c_enable_16)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(81[6:22])
    defparam i1171_3_lut_4_lut.init = 16'h02ff;
    LUT4 i922_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
         .C(uart_rx_bit[3]), .D(uart_rx_bit[2]), .Z(n27_adj_8)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i922_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1190_4_lut_rep_30 (.A(uart_rx_clr_c), .B(uart_rx_state[1]), .C(uart_rx_state[2]), 
         .D(uart_rx_state[0]), .Z(n1708)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1190_4_lut_rep_30.init = 16'h0010;
    LUT4 i1_2_lut_rep_22_4_lut (.A(uart_rx_clr_c), .B(uart_rx_state[1]), 
         .C(uart_rx_state[2]), .D(uart_rx_state[0]), .Z(n1700)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_22_4_lut.init = 16'haaba;
    LUT4 i965_3_lut_4_lut (.A(uart_rx_cnt[2]), .B(n1706), .C(uart_rx_cnt[3]), 
         .D(uart_rx_cnt[4]), .Z(n26_adj_9)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i965_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4_4_lut_adj_1 (.A(uart_rx_bclk_c_enable_10), .B(n1254), .C(uart_rx_bit[3]), 
         .D(uart_rx_bit[4]), .Z(n10)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i4_4_lut_adj_1.init = 16'hfff7;
    LUT4 i1224_3_lut (.A(uart_rx_zero_cnt[3]), .B(uart_rx_zero_cnt[4]), 
         .C(uart_rx_zero_cnt[2]), .Z(rx_pin_state_N_99)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1224_3_lut.init = 16'h0101;
    LUT4 i835_2_lut_rep_16_4_lut (.A(n1703), .B(uart_rx_pin), .C(uart_rx_state[1]), 
         .D(n804), .Z(n1694)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(102[6:22])
    defparam i835_2_lut_rep_16_4_lut.init = 16'hfffe;
    LUT4 i929_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n1707), .C(uart_rx_bit[3]), 
         .D(uart_rx_bit[4]), .Z(n26_adj_7)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i929_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n1708), .B(n1694), .C(n1693), .D(n627), 
         .Z(n1591)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hffbf;
    LUT4 i1_2_lut (.A(uart_rx_cnt[3]), .B(uart_rx_cnt[4]), .Z(n1587)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1177_2_lut_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(n1694), 
         .D(n1578), .Z(uart_rx_bclk_c_enable_7)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i1177_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i821_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n1578), .Z(uart_rx_tmp_7__N_27[2])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i821_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1001_3_lut_4_lut (.A(uart_rx_zero_cnt[2]), .B(n1701), .C(uart_rx_zero_cnt[3]), 
         .D(uart_rx_zero_cnt[4]), .Z(n26)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i1001_3_lut_4_lut.init = 16'h7f80;
    LUT4 i983_2_lut_rep_23 (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
         .Z(n1701)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i983_2_lut_rep_23.init = 16'h8888;
    LUT4 i820_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n1578), .Z(uart_rx_tmp_7__N_27[3])) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i820_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i987_2_lut_3_lut (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
         .C(uart_rx_zero_cnt[2]), .Z(n28)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i987_2_lut_3_lut.init = 16'h7878;
    LUT4 i994_2_lut_3_lut_4_lut (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
         .C(uart_rx_zero_cnt[3]), .D(uart_rx_zero_cnt[2]), .Z(n27)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i994_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i794_2_lut_rep_24 (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .Z(n1702)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i794_2_lut_rep_24.init = 16'heeee;
    LUT4 i1182_2_lut_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(n1694), 
         .D(n1578), .Z(uart_rx_bclk_c_enable_6)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1182_2_lut_2_lut_3_lut_4_lut.init = 16'h0f4f;
    LUT4 i1199_2_lut_rep_18_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .C(uart_rx_state[0]), .Z(uart_rx_bclk_c_enable_10)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1199_2_lut_rep_18_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_adj_2 (.A(uart_rx_bit[2]), .B(uart_rx_bit[1]), .Z(n1578)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1_2_lut_adj_2.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_25 (.A(uart_rx_state[2]), .B(uart_rx_state[0]), .Z(n1703)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(102[6:22])
    defparam i1_2_lut_rep_25.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(uart_rx_state[2]), .B(uart_rx_state[0]), 
         .C(uart_rx_cnt[3]), .D(uart_rx_state[1]), .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(102[6:22])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_rep_21_4_lut (.A(uart_rx_state[2]), .B(uart_rx_state[0]), 
         .C(uart_rx_state[1]), .D(uart_rx_pin), .Z(n1699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(102[6:22])
    defparam i2_3_lut_rep_21_4_lut.init = 16'hfffe;
    LUT4 i1214_2_lut_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(n1694), 
         .D(n1254), .Z(uart_rx_bclk_c_enable_18)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1214_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 i816_2_lut_3_lut_4_lut (.A(n1692), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n1254), .Z(uart_rx_tmp_7__N_27[7])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i816_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1211_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(n1690), .C(n1694), 
         .D(uart_rx_bit[2]), .Z(uart_rx_bclk_c_enable_1)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1211_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i1220_2_lut_3_lut (.A(uart_rx_state[0]), .B(uart_rx_state[1]), 
         .C(uart_rx_state[2]), .Z(uart_rx_bclk_c_enable_27)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i1220_2_lut_3_lut.init = 16'h0707;
    LUT4 i1179_2_lut_rep_20_3_lut (.A(uart_rx_state[0]), .B(uart_rx_state[1]), 
         .C(uart_rx_state[2]), .Z(uart_rx_rdy_N_91)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1179_2_lut_rep_20_3_lut.init = 16'h0808;
    LUT4 i805_2_lut_rep_27 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), .Z(n1705)) /* synthesis lut_function=(A (B)) */ ;
    defparam i805_2_lut_rep_27.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n1694), .B(n1700), .C(n627), .D(n1693), 
         .Z(uart_rx_bclk_c_enable_19)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_3_lut_rep_17_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
         .C(n1587), .D(uart_rx_cnt[0]), .Z(n1695)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_rep_17_4_lut.init = 16'hf7ff;
    LUT4 i2_3_lut_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), .C(uart_rx_cnt[0]), 
         .D(n1587), .Z(n804)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(n1694), .B(n1700), .C(n1693), 
         .D(n627), .Z(uart_rx_bclk_c_enable_9)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'hffdf;
    LUT4 i1205_4_lut (.A(n1294), .B(uart_rx_state[2]), .C(uart_rx_pin), 
         .D(n11), .Z(n946)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i1205_4_lut.init = 16'h5455;
    LUT4 i22_3_lut (.A(n1695), .B(uart_rx_state[1]), .C(uart_rx_state[0]), 
         .Z(n11)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam i22_3_lut.init = 16'h2c2c;
    LUT4 i978_1_lut (.A(uart_rx_zero_cnt[0]), .Z(n30_adj_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i978_1_lut.init = 16'h5555;
    LUT4 i847_4_lut (.A(n1694), .B(uart_rx_pin), .C(uart_rx_bclk_c_enable_10), 
         .D(n1695), .Z(n1294)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;
    defparam i847_4_lut.init = 16'h8a0a;
    PFUMX i1229 (.BLUT(n1712), .ALUT(n1713), .C0(uart_rx_state[0]), .Z(n933));
    LUT4 m1_lut (.Z(n1723)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PFUMX i1227 (.BLUT(n1709), .ALUT(n1710), .C0(uart_rx_dbg_c), .Z(uart_rx_dbg_N_96));
    VLO i1231 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


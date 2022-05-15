// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun May  8 22:04:05 2022
//
// Verilog Description of module nvm_ctrl
//

module nvm_ctrl (CLK_32M, RESET, LED, LED2, DEBUG_TP1, DEBUG_TP2, 
            DEBUG_TP3, SW_P, SW_N, SW_IN, AD_ACS, AD_ADO, AD_ACLK, 
            COMP_IN, UART_RX, CON_START, UART_TX, CLK_OUT, RE3, 
            RE4, RE1A, RE1B, RE2A, RE2B, MAG1, MAG10, MAG100, 
            MS_A0, MS_A1, MS_A2, FEN_A, FEN_B, FEN_C, JA_DOUT, 
            JA_DIN, JA_COMP, JA_C1, JA_C2, JA_C3, JA_SCK, JA_CS, 
            AZ_SW, PW1, PW2, SU_A, SU_B) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(3[8:16])
    input CLK_32M;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[8:15])
    input RESET;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[42:47])
    output LED;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[8:11])
    output LED2;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[12:16])
    output DEBUG_TP1;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(56[8:17])
    output DEBUG_TP2;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(56[18:27])
    output DEBUG_TP3;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(56[28:37])
    output SW_P;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[17:21])
    output SW_N;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[22:26])
    output SW_IN;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[27:32])
    output AD_ACS;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(57[8:14])
    input AD_ADO;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(58[7:13])
    output AD_ACLK;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(57[15:22])
    input COMP_IN;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[16:23])
    input UART_RX;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[24:31])
    input CON_START;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[32:41])
    output UART_TX;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[33:40])
    output CLK_OUT;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(57[23:30])
    output RE3;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[8:11])
    output RE4;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[12:15])
    output RE1A;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[16:20])
    output RE1B;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[21:25])
    output RE2A;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[26:30])
    output RE2B;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[31:35])
    output MAG1;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[36:40])
    output MAG10;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[41:46])
    output MAG100;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[47:53])
    output MS_A0;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[8:13])
    output MS_A1;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[14:19])
    output MS_A2;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[20:25])
    output FEN_A;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[26:31])
    output FEN_B;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[32:37])
    output FEN_C;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[38:43])
    input JA_DOUT;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(61[7:14])
    output JA_DIN;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[39:45])
    input JA_COMP;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(61[15:22])
    output JA_C1;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[8:13])
    output JA_C2;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[14:19])
    output JA_C3;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[20:25])
    output JA_SCK;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[26:32])
    output JA_CS;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[33:38])
    output AZ_SW;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[8:13])
    output PW1;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[15:18])
    output PW2;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[20:23])
    output SU_A;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[25:29])
    output SU_B;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[31:35])
    
    wire CLK_32M_c /* synthesis SET_AS_NETWORK=CLK_32M_c, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[8:15])
    wire uart_tx_bit_clock /* synthesis SET_AS_NETWORK=uart_tx_bit_clock, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(83[16:33])
    wire uart_rx_bit_clock /* synthesis SET_AS_NETWORK=uart_rx_bit_clock, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(83[34:51])
    
    wire GND_net, VCC_net, COMP_IN_c, UART_RX_c, CON_START_c, RESET_c, 
        LED_c, RE1A_c, SW_P_c, SW_N_c, SW_IN_c, UART_TX_c, DEBUG_TP1_c_0, 
        DEBUG_TP2_c_1, DEBUG_TP3_c_2, AD_ACS_c, AD_ACLK_c, CLK_OUT_c_1, 
        AD_ADO_c, RE3_c_4, RE4_c, RE1B_c_1, RE2A_c_2, RE2B_c_3, 
        MAG1_c_8, MAG10_c_9, MAG100_c_10, MS_A0_c_11, MS_A1_c_12, 
        MS_A2_c_13, FEN_C_c, FEN_B_c_14, JA_SCK_c, JA_CS_c, JA_DIN_c, 
        AZ_SW_c, PW1_c_16, PW2_c_17, SU_A_c, SU_B_c, comp_in_r, 
        comp_in_ff, ad_ado_ff, ad_ado_r, con_start_ff, con_start_r, 
        reset_in_r, reset_in_ff;
    wire [20:0]cnt_msm;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(71[12:19])
    wire [20:0]cnt_ic;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(72[12:18])
    
    wire n6612;
    wire [20:0]cnt_ic_set;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(73[12:22])
    
    wire n22_adj_1089;
    wire [20:0]cnt_ic_pos;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(74[12:22])
    wire [20:0]cnt_ic_neg;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(75[12:22])
    wire [15:0]adc_res;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(76[12:19])
    wire [4:0]main_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(77[11:21])
    wire [6:0]spi_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(78[11:18])
    
    wire uart_tx_start, uart_frame_start, uart_rx_rst;
    wire [2:0]uart_frame_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(81[11:27])
    wire [2:0]uart_frame_r;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(81[28:40])
    wire [3:0]uart_frame_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(82[11:25])
    
    wire uart_busy, uart_rx_ready;
    wire [47:0]frame_content;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(84[12:25])
    wire [47:0]result_content;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(85[12:26])
    wire [31:0]uart_rx_frame;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(86[12:25])
    wire [7:0]uart_tx_register;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(87[11:27])
    
    wire n6781;
    wire [2:0]uart_rx_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(88[11:24])
    wire [7:0]uart_rx_register;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(89[12:28])
    wire [5:0]uart_prediv;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(92[10:21])
    
    wire cal_en, az_state, dac_update;
    wire [2:0]dac_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(103[11:20])
    wire [7:0]dac_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(104[11:18])
    wire [15:0]dac_word;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(105[12:20])
    wire [15:0]dac_div;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(106[12:19])
    wire [32:0]startup_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(108[12:23])
    
    wire startup_cnt_32__N_436, SU_A_N_920, SU_B_N_922, n6480, n8, 
        n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, 
        n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, 
        n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, 
        n39, n40, n6779, n6076, n5185, n18_adj_1090, n7830, n7318, 
        n6795, n6794, n6793, n6792, n110, n109, n108;
    wire [2:0]uart_rx_state_2__N_470;
    
    wire n17_adj_1091, n5651, n5722, JA_SCK_N_904, n5699, n5698, 
        dac_word_15__N_306, dac_word_15__N_311, dac_word_15__N_314, dac_word_15__N_317, 
        dac_word_15__N_320, dac_word_15__N_323, dac_word_15__N_326, dac_word_15__N_329, 
        dac_word_15__N_332, dac_word_15__N_335, dac_word_15__N_338, dac_word_15__N_341, 
        dac_word_15__N_344, n107, n106, n105, n104, n103, n102, 
        n101, n100, CLK_32M_c_enable_112, n99, n98, n97, n96, 
        n95, n94, CLK_32M_c_enable_137, n38_adj_1092, n28_adj_1093, 
        n6790, n5281, n45, n44, n43, n42, n41, n40_adj_1094, 
        n39_adj_1095, n38_adj_1096, n5276, n51, uart_tx_bit_clock_enable_10, 
        n5097, uart_tx_bit_clock_enable_68, CLK_32M_c_enable_50, CLK_32M_c_enable_93, 
        CLK_32M_c_enable_243, n6786, n4760, n110_adj_1097, n109_adj_1098, 
        n108_adj_1099, n107_adj_1100, n106_adj_1101, n105_adj_1102, 
        n104_adj_1103, n103_adj_1104, n102_adj_1105, n101_adj_1106, 
        n100_adj_1107, n99_adj_1108, n98_adj_1109, n97_adj_1110, n96_adj_1111, 
        n95_adj_1112, n94_adj_1113, n93, n92, n91, n90, AZ_SW_N_915, 
        n5252, n6611, cal_en_N_941, n5226, n6789, n6788, n6780, 
        n6615, n25_adj_1114, n24_adj_1115, n23_adj_1116, n22_adj_1117, 
        n5232, CLK_32M_c_enable_229, n19_adj_1118, n18_adj_1119, CLK_32M_c_enable_241, 
        CLK_32M_c_enable_152, n5261, uart_tx_bit_clock_enable_12, n7429, 
        CLK_32M_c_enable_104, n5239, n4387, n7828, n7423, CLK_32M_c_enable_145, 
        n7827, n7875, n7826, n5106, n7421, n13_adj_1120, n12_adj_1121, 
        CLK_32M_c_enable_43, n6787, n6785, CLK_32M_c_enable_129, n5643, 
        n6180, n5727, CLK_32M_c_enable_203, n6778, n6783, CLK_32M_c_enable_238, 
        n1690, n1693, CLK_32M_c_enable_256, n7323, n1759, n7341, 
        SW_P_N_869, n85, n84, n83, n82, n81, n80, n79, n78, 
        n77, n76, n75, n74, n73, n72, n71, n70, n108_adj_1122, 
        n109_adj_1123, n110_adj_1124, n6493, n5679, LED_N_858, n7820, 
        n3644, n3645, n3646, n3647, n3648, n3649, n3650, n3651, 
        n3652, n3653, n3654, n3655, n3656, n3657, n3658, n3659, 
        n3660, n3661, n3662, n3663, n3664, n107_adj_1125, n35_adj_1126, 
        n34_adj_1127, n33_adj_1128, n32_adj_1129, n31_adj_1130, n30_adj_1131, 
        SW_P_N_866, SW_N_N_878, n7335, n6931, n5725, CLK_32M_c_enable_153, 
        CLK_32M_c_enable_60, n7267, n7265, n7350, n5021, n7274, 
        n7251;
    wire [4:0]main_state_4__N_122;
    
    wire SW_IN_N_885, n7817, n4377, n4, n4_adj_1132, n7816, n6, 
        n6_adj_1133, CLK_32M_c_enable_260, n7815, CLK_32M_c_enable_51, 
        n15_adj_1134, n7310, CLK_32M_c_enable_25, n7473, n7472, n103_adj_1135, 
        n40_adj_1136, n3921, n39_adj_1137, n38_adj_1138, n5156, n37_adj_1139, 
        n36_adj_1140, n35_adj_1141, n34_adj_1142;
    wire [7:0]uart_tx_register_7__N_831;
    
    wire n106_adj_1143, n105_adj_1144, n7193, n102_adj_1145, n5, n6614;
    wire [2:0]uart_frame_state_2__N_134;
    
    wire n8046, n42_adj_1146;
    wire [2:0]uart_tx_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(9[10:23])
    
    wire CLK_32M_c_enable_264, n36_adj_1147, n7327, n7470, n7867, 
        n6350, n6344, n7866, n3951, n7865, n4_adj_1148, n3802, 
        n5638, n2, n6308, n7862, n6856, n25_adj_1149, n24_adj_1150, 
        n23_adj_1151, n22_adj_1152, n6855, n3, n2_adj_1153, n97_adj_1154, 
        n98_adj_1155, n99_adj_1156, n100_adj_1157, n101_adj_1158, n12_adj_1159, 
        n6854, n6853, n6782, n6851, n10_adj_1160, n7813, n5_adj_1161, 
        uart_tx_bit_clock_enable_66, n6850, n6254, n6849, CLK_32M_c_enable_258, 
        n6848, n7812, n6847, n6846, n6845, n6844, n7760, n7469, 
        n6843, n6842, n4131, n7467, n7851, n40_adj_1162, n7850, 
        n7849, n7848, n4130, n4129, n4128, n4127, n4126, n6838, 
        n4125, n4124, n6837, CLK_32M_c_enable_155, n7869, n6777, 
        n5179, n6613, n6836, n6835, n6834, n6833, n6832, n6831, 
        n6776, n7466, n6830, CLK_32M_c_enable_54, CLK_32M_c_enable_53, 
        n6829, n3916, n6825, n6824, n6823, n6822, n5636, n6821, 
        n6820, n6819, n6818, n7810, n6816, n4103, CLK_32M_c_enable_55, 
        n7844, n6815, n6814, n7464, n4102, n4101, n4100, n4099, 
        n7463, n7808, n7461, n4098, n4097, n4096, n6812, n4_adj_1163, 
        n6784, n2_adj_1164, CLK_32M_c_enable_56, n3844, CLK_32M_c_enable_265, 
        n5_adj_1165, n6811, n7843, n3830, n104_adj_1166, n6810, 
        uart_tx_bit_clock_enable_19, n9_adj_1167, n6809, n7842, n10_adj_1168, 
        n6775, n96_adj_1169, n95_adj_1170, n94_adj_1171, n6808, n25_adj_1172, 
        n7460, n7836, n6807, n6806, n7835, n8_adj_1173, n4007, 
        n7806, n96_adj_1174, CLK_32M_c_enable_248, n30_adj_1175, n6805, 
        n7458, n6804, n7457, n6803, CLK_32M_c_enable_4, n28_adj_1176, 
        n7344, n7280, n7455, n6802, n6801, n7454, n7452, n6800, 
        n6799, n7451, CLK_32M_c_enable_57, CLK_32M_c_enable_233, n26_adj_1177, 
        n6798, n7871, n6797, n6796, n7831, n7325, n7397, n7870, 
        n51_adj_1178, n4594;
    
    VHI i2 (.Z(VCC_net));
    uart_tx uart_tx_a (.uart_tx_bit_clock(uart_tx_bit_clock), .uart_tx_bit_clock_enable_68(uart_tx_bit_clock_enable_68), 
            .uart_tx_state({uart_tx_state}), .uart_tx_register({uart_tx_register}), 
            .uart_busy(uart_busy), .n8046(n8046), .UART_TX_c(UART_TX_c), 
            .uart_tx_start(uart_tx_start)) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(618[10] 626[3])
    FD1S3IX uart_prediv_1156__i0 (.D(n35_adj_1126), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_60), 
            .Q(uart_prediv[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156__i0.GSR = "ENABLED";
    CCU2D cnt_ic_20__I_0_15 (.A0(cnt_ic[18]), .B0(cnt_ic[17]), .C0(cnt_ic[16]), 
          .D0(cnt_ic[10]), .A1(cnt_ic_set[14]), .B1(cnt_ic[14]), .C1(cnt_ic_set[13]), 
          .D1(cnt_ic[13]), .CIN(n6611), .COUT(n6612));
    defparam cnt_ic_20__I_0_15.INIT0 = 16'h0001;
    defparam cnt_ic_20__I_0_15.INIT1 = 16'h9009;
    defparam cnt_ic_20__I_0_15.INJECT1_0 = "YES";
    defparam cnt_ic_20__I_0_15.INJECT1_1 = "YES";
    CCU2D add_7_9 (.A0(startup_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(startup_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6778), .COUT(n6779), .S0(n33), .S1(n32));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_9.INIT0 = 16'h5aaa;
    defparam add_7_9.INIT1 = 16'h5aaa;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    FD1P3AX dac_state__i0 (.D(n6_adj_1133), .SP(CLK_32M_c_enable_233), .CK(CLK_32M_c), 
            .Q(dac_state[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_state__i0.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i4 (.D(n106), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i4.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i5 (.D(n105), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i5.GSR = "ENABLED";
    PFUMX i4222 (.BLUT(n7466), .ALUT(n7467), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[2]));
    OB RE3_pad (.I(RE3_c_4), .O(RE3));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[8:11])
    FD1P3IX uart_rx_rst_442 (.D(n8046), .SP(uart_rx_state_2__N_470[1]), 
            .CD(n3844), .CK(CLK_32M_c), .Q(uart_rx_rst));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_rst_442.GSR = "ENABLED";
    FD1P3AX dac_cs_r_445 (.D(n7836), .SP(CLK_32M_c_enable_4), .CK(CLK_32M_c), 
            .Q(JA_CS_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_cs_r_445.GSR = "ENABLED";
    FD1S3AX con_start_ff_450 (.D(CON_START_c), .CK(CLK_32M_c), .Q(con_start_ff));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam con_start_ff_450.GSR = "ENABLED";
    OB CLK_OUT_pad (.I(CLK_OUT_c_1), .O(CLK_OUT));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(57[23:30])
    OB RE4_pad (.I(RE4_c), .O(RE4));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[12:15])
    OB UART_TX_pad (.I(UART_TX_c), .O(UART_TX));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[33:40])
    PFUMX i4225 (.BLUT(n7469), .ALUT(n7470), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[1]));
    OB AD_ACLK_pad (.I(AD_ACLK_c), .O(AD_ACLK));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(57[15:22])
    OB AD_ACS_pad (.I(AD_ACS_c), .O(AD_ACS));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(57[8:14])
    OB SW_IN_pad (.I(SW_IN_c), .O(SW_IN));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[27:32])
    FD1P3AX result_content_i0_i0 (.D(adc_res[0]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i0.GSR = "ENABLED";
    CCU2D add_7_7 (.A0(startup_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(startup_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6777), .COUT(n6778), .S0(n35), .S1(n34));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_7.INIT0 = 16'h5aaa;
    defparam add_7_7.INIT1 = 16'h5aaa;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    FD1P3AX main_state_i0 (.D(main_state_4__N_122[0]), .SP(CLK_32M_c_enable_155), 
            .CK(CLK_32M_c), .Q(main_state[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam main_state_i0.GSR = "ENABLED";
    FD1S3AX con_start_r_451 (.D(con_start_ff), .CK(CLK_32M_c), .Q(con_start_r));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam con_start_r_451.GSR = "ENABLED";
    FD1S3AX comp_in_ff_452 (.D(COMP_IN_c), .CK(CLK_32M_c), .Q(comp_in_ff));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam comp_in_ff_452.GSR = "ENABLED";
    FD1S3AX comp_in_r_453 (.D(comp_in_ff), .CK(CLK_32M_c), .Q(comp_in_r));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam comp_in_r_453.GSR = "ENABLED";
    FD1S3AX ad_ado_ff_454 (.D(AD_ADO_c), .CK(CLK_32M_c), .Q(ad_ado_ff));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam ad_ado_ff_454.GSR = "ENABLED";
    FD1S3AX ad_ado_r_455 (.D(ad_ado_ff), .CK(CLK_32M_c), .Q(ad_ado_r));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam ad_ado_r_455.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i0 (.D(result_content[0]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i0.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i0 (.D(uart_tx_register_7__N_831[0]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i0.GSR = "ENABLED";
    CCU2D cnt_ic_20__I_0_21 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6615), .S0(SW_P_N_869));
    defparam cnt_ic_20__I_0_21.INIT0 = 16'hFFFF;
    defparam cnt_ic_20__I_0_21.INIT1 = 16'h0000;
    defparam cnt_ic_20__I_0_21.INJECT1_0 = "NO";
    defparam cnt_ic_20__I_0_21.INJECT1_1 = "NO";
    CCU2D add_7_5 (.A0(startup_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(startup_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6776), .COUT(n6777), .S0(n37), .S1(n36));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_5.INIT0 = 16'h5aaa;
    defparam add_7_5.INIT1 = 16'h5aaa;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    FD1P3AX uart_frame_state_i0 (.D(uart_frame_state_2__N_134[0]), .SP(uart_tx_bit_clock_enable_12), 
            .CK(uart_tx_bit_clock), .Q(uart_frame_state[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_frame_state_i0.GSR = "ENABLED";
    FD1S3AX uart_tx_start_489 (.D(n7193), .CK(uart_tx_bit_clock), .Q(uart_tx_start));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_start_489.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i6 (.D(n104), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i6.GSR = "ENABLED";
    FD1S3AX reset_in_ff_431 (.D(RESET_c), .CK(CLK_32M_c), .Q(reset_in_ff));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam reset_in_ff_431.GSR = "ENABLED";
    LUT4 i4411_2_lut_rep_46_2_lut_4_lut (.A(main_state[3]), .B(n7865), .C(main_state[2]), 
         .D(n7816), .Z(CLK_32M_c_enable_53)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i4411_2_lut_rep_46_2_lut_4_lut.init = 16'h0008;
    OB SW_N_pad (.I(SW_N_c), .O(SW_N));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[22:26])
    FD1P3IX cnt_ic_pos_1160__i7 (.D(n103), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i7.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i8 (.D(n102), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i8.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i1 (.D(uart_rx_register[0]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(RE1A_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i1.GSR = "ENABLED";
    FD1S3IX spi_cnt_1170__i0 (.D(n40_adj_1136), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i0.GSR = "ENABLED";
    FD1S3IX uart_prediv_1156__i5 (.D(n30_adj_1131), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_60), 
            .Q(uart_prediv[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156__i5.GSR = "ENABLED";
    FD1S3IX uart_prediv_1156__i4 (.D(n31_adj_1130), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_60), 
            .Q(uart_prediv[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156__i4.GSR = "ENABLED";
    FD1P3IX startup_cnt__i0 (.D(n40), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i0.GSR = "ENABLED";
    CCU2D add_7_11 (.A0(startup_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(startup_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6779), .COUT(n6780), .S0(n31), .S1(n30));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_11.INIT0 = 16'h5aaa;
    defparam add_7_11.INIT1 = 16'h5aaa;
    defparam add_7_11.INJECT1_0 = "NO";
    defparam add_7_11.INJECT1_1 = "NO";
    FD1P3AX adc_res_i0_i14 (.D(adc_res[13]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i14.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i13 (.D(adc_res[12]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i13.GSR = "ENABLED";
    CCU2D add_7_3 (.A0(startup_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(startup_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6775), .COUT(n6776), .S0(n39), .S1(n38));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_3.INIT0 = 16'h5aaa;
    defparam add_7_3.INIT1 = 16'h5aaa;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    FD1P3AX adc_res_i0_i12 (.D(adc_res[11]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i12.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i11 (.D(adc_res[10]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i11.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i10 (.D(adc_res[9]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[10]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i10.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i9 (.D(adc_res[8]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i9.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i8 (.D(adc_res[7]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i8.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i7 (.D(adc_res[6]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i7.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i6 (.D(adc_res[5]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i6.GSR = "ENABLED";
    OB SW_P_pad (.I(SW_P_c), .O(SW_P));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[17:21])
    FD1P3AX adc_res_i0_i5 (.D(adc_res[4]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i5.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i4 (.D(adc_res[3]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i4.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i3 (.D(adc_res[2]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i3.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i2 (.D(adc_res[1]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i2.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i1 (.D(adc_res[0]), .SP(CLK_32M_c_enable_25), .CK(CLK_32M_c), 
            .Q(adc_res[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i1.GSR = "ENABLED";
    PFUMX i4228 (.BLUT(n7472), .ALUT(n7473), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[4]));
    FD1P3IX cnt_ic__i20 (.D(n3644), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[20]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i20.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n8046)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3IX cnt_ic_neg_1159__i16 (.D(n94_adj_1171), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i16.GSR = "ENABLED";
    FD1P3IX cnt_ic__i19 (.D(n3645), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[19]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i19.GSR = "ENABLED";
    FD1P3IX cnt_ic__i18 (.D(n3646), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[18]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i18.GSR = "ENABLED";
    FD1S3IX uart_prediv_1156__i3 (.D(n32_adj_1129), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_60), 
            .Q(uart_prediv[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156__i3.GSR = "ENABLED";
    FD1P3IX cnt_ic__i17 (.D(n3647), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[17]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i17.GSR = "ENABLED";
    FD1P3IX cnt_ic__i16 (.D(n3648), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[16]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i16.GSR = "ENABLED";
    FD1P3IX cnt_ic__i15 (.D(n3649), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i15.GSR = "ENABLED";
    OB DEBUG_TP3_pad (.I(DEBUG_TP3_c_2), .O(DEBUG_TP3));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(56[28:37])
    FD1S3IX uart_prediv_1156__i2 (.D(n33_adj_1128), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_60), 
            .Q(uart_prediv[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156__i2.GSR = "ENABLED";
    OB DEBUG_TP2_pad (.I(DEBUG_TP2_c_1), .O(DEBUG_TP2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(56[18:27])
    FD1P3IX cnt_ic__i14 (.D(n3650), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i14.GSR = "ENABLED";
    OB DEBUG_TP1_pad (.I(DEBUG_TP1_c_0), .O(DEBUG_TP1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(56[8:17])
    FD1P3IX cnt_ic__i13 (.D(n3651), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i13.GSR = "ENABLED";
    FD1P3IX cnt_ic__i12 (.D(n3652), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i12.GSR = "ENABLED";
    FD1P3IX cnt_ic__i11 (.D(n3653), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i11.GSR = "ENABLED";
    FD1P3IX cnt_ic__i10 (.D(n3654), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[10]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i10.GSR = "ENABLED";
    PFUMX i4477 (.BLUT(n7869), .ALUT(n7870), .C0(dac_state[0]), .Z(n7871));
    LUT4 i1_2_lut_2_lut_4_lut (.A(main_state[3]), .B(n7865), .C(main_state[2]), 
         .D(n7816), .Z(n4377)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i1_2_lut_2_lut_4_lut.init = 16'h0800;
    FD1P3IX cnt_ic__i9 (.D(n3655), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i9.GSR = "ENABLED";
    FD1P3AX dac_state__i1 (.D(n7871), .SP(CLK_32M_c_enable_233), .CK(CLK_32M_c), 
            .Q(dac_state[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_state__i1.GSR = "ENABLED";
    OB LED2_pad (.I(RE1A_c), .O(LED2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[12:16])
    FD1P3AX uart_divider_1157_1247__i0 (.D(n25_adj_1149), .SP(CLK_32M_c_enable_60), 
            .CK(CLK_32M_c), .Q(uart_rx_bit_clock)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247__i0.GSR = "ENABLED";
    FD1P3IX cnt_ic__i8 (.D(n3656), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i8.GSR = "ENABLED";
    FD1P3IX cnt_ic__i7 (.D(n3657), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i7.GSR = "ENABLED";
    FD1P3IX ad_acs_r_468 (.D(n7844), .SP(CLK_32M_c_enable_43), .CD(n4377), 
            .CK(CLK_32M_c), .Q(AD_ACS_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam ad_acs_r_468.GSR = "ENABLED";
    FD1P3IX cnt_ic__i6 (.D(n3658), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i6.GSR = "ENABLED";
    FD1P3IX cnt_ic__i5 (.D(n3659), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i5.GSR = "ENABLED";
    FD1P3IX cnt_ic__i4 (.D(n3660), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i4.GSR = "ENABLED";
    FD1P3IX cnt_ic__i3 (.D(n3661), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i3.GSR = "ENABLED";
    FD1P3IX cnt_ic__i2 (.D(n3662), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i2.GSR = "ENABLED";
    FD1P3IX cnt_ic__i1 (.D(n3663), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i1.GSR = "ENABLED";
    FD1P3IX cnt_ic__i0 (.D(n3664), .SP(CLK_32M_c_enable_50), .CD(n4387), 
            .CK(CLK_32M_c), .Q(cnt_ic[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic__i0.GSR = "ENABLED";
    FD1P3AX adc_res_i0_i0 (.D(ad_ado_r), .SP(CLK_32M_c_enable_51), .CK(CLK_32M_c), 
            .Q(adc_res[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam adc_res_i0_i0.GSR = "ENABLED";
    FD1P3IX uart_frame_r__i1 (.D(n8046), .SP(uart_frame_start), .CD(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(uart_frame_r[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_frame_r__i1.GSR = "ENABLED";
    OB LED_pad (.I(LED_c), .O(LED));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(55[8:11])
    LUT4 i4253_3_lut (.A(n4126), .B(n4098), .C(uart_frame_cnt[0]), .Z(n7463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4253_3_lut.init = 16'hcaca;
    FD1P3AX cal_en_475 (.D(cal_en_N_941), .SP(CLK_32M_c_enable_243), .CK(CLK_32M_c), 
            .Q(cal_en));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cal_en_475.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    FD1S3IX uart_prediv_1156__i1 (.D(n34_adj_1127), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_60), 
            .Q(uart_prediv[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156__i1.GSR = "ENABLED";
    FD1P3AX ad_aclk_r_469 (.D(spi_cnt[0]), .SP(CLK_32M_c_enable_53), .CK(CLK_32M_c), 
            .Q(AD_ACLK_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam ad_aclk_r_469.GSR = "ENABLED";
    FD1P3AX led_r_478 (.D(LED_N_858), .SP(CLK_32M_c_enable_54), .CK(CLK_32M_c), 
            .Q(LED_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam led_r_478.GSR = "ENABLED";
    FD1P3AX az_state_477 (.D(AZ_SW_c), .SP(CLK_32M_c_enable_55), .CK(CLK_32M_c), 
            .Q(az_state));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam az_state_477.GSR = "ENABLED";
    FD1P3AX dac_do_r_448 (.D(dac_word[15]), .SP(CLK_32M_c_enable_56), .CK(CLK_32M_c), 
            .Q(JA_DIN_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_do_r_448.GSR = "ENABLED";
    FD1P3AX dac_clk_r_449 (.D(JA_SCK_N_904), .SP(CLK_32M_c_enable_57), .CK(CLK_32M_c), 
            .Q(JA_SCK_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_clk_r_449.GSR = "ENABLED";
    FD1P3AX su_a_r_434 (.D(SU_A_N_920), .SP(reset_in_r), .CK(CLK_32M_c), 
            .Q(SU_A_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam su_a_r_434.GSR = "ENABLED";
    FD1P3AX su_b_r_435 (.D(SU_B_N_922), .SP(reset_in_r), .CK(CLK_32M_c), 
            .Q(SU_B_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam su_b_r_435.GSR = "ENABLED";
    FD1P3AX uart_divider_1157_1247__i3 (.D(n22_adj_1152), .SP(CLK_32M_c_enable_60), 
            .CK(CLK_32M_c), .Q(uart_tx_bit_clock)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247__i3.GSR = "ENABLED";
    CCU2D cnt_ic_20__I_0_0 (.A0(cnt_ic_set[15]), .B0(cnt_ic[15]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic[20]), .B1(cnt_ic[19]), .C1(GND_net), 
          .D1(GND_net), .COUT(n6611));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(414[7:25])
    defparam cnt_ic_20__I_0_0.INIT0 = 16'h9000;
    defparam cnt_ic_20__I_0_0.INIT1 = 16'h1111;
    defparam cnt_ic_20__I_0_0.INJECT1_0 = "NO";
    defparam cnt_ic_20__I_0_0.INJECT1_1 = "YES";
    CCU2D cnt_ic_20__I_0_21_3452 (.A0(cnt_ic_set[3]), .B0(cnt_ic[3]), .C0(cnt_ic_set[2]), 
          .D0(cnt_ic[2]), .A1(cnt_ic_set[1]), .B1(cnt_ic[1]), .C1(cnt_ic_set[0]), 
          .D1(cnt_ic[0]), .CIN(n6614), .COUT(n6615));
    defparam cnt_ic_20__I_0_21_3452.INIT0 = 16'h9009;
    defparam cnt_ic_20__I_0_21_3452.INIT1 = 16'h9009;
    defparam cnt_ic_20__I_0_21_3452.INJECT1_0 = "YES";
    defparam cnt_ic_20__I_0_21_3452.INJECT1_1 = "YES";
    CCU2D cnt_ic_20__I_0_19 (.A0(cnt_ic_set[7]), .B0(cnt_ic[7]), .C0(cnt_ic_set[6]), 
          .D0(cnt_ic[6]), .A1(cnt_ic_set[5]), .B1(cnt_ic[5]), .C1(cnt_ic_set[4]), 
          .D1(cnt_ic[4]), .CIN(n6613), .COUT(n6614));
    defparam cnt_ic_20__I_0_19.INIT0 = 16'h9009;
    defparam cnt_ic_20__I_0_19.INIT1 = 16'h9009;
    defparam cnt_ic_20__I_0_19.INJECT1_0 = "YES";
    defparam cnt_ic_20__I_0_19.INJECT1_1 = "YES";
    FD1P3AX uart_divider_1157_1247__i2 (.D(n23_adj_1151), .SP(CLK_32M_c_enable_60), 
            .CK(CLK_32M_c), .Q(n2_adj_1153)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247__i2.GSR = "ENABLED";
    FD1P3AX uart_divider_1157_1247__i1 (.D(n24_adj_1150), .SP(CLK_32M_c_enable_60), 
            .CK(CLK_32M_c), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247__i1.GSR = "ENABLED";
    LUT4 mux_983_i1_3_lut (.A(frame_content[32]), .B(frame_content[0]), 
         .C(uart_frame_cnt[2]), .Z(n4103)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i1_3_lut.init = 16'hcaca;
    LUT4 i2519_2_lut_3_lut_4_lut_2_lut_4_lut (.A(dac_state[0]), .B(dac_state[2]), 
         .C(dac_state[1]), .Z(n5699)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i2519_2_lut_3_lut_4_lut_2_lut_4_lut.init = 16'h0202;
    LUT4 i4341_2_lut_2_lut_3_lut_4_lut_4_lut_4_lut (.A(dac_state[0]), .B(dac_state[2]), 
         .C(dac_state[1]), .D(n15_adj_1134), .Z(CLK_32M_c_enable_112)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i4341_2_lut_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h1202;
    LUT4 i1_2_lut_4_lut (.A(n96_adj_1174), .B(CLK_32M_c_enable_55), .C(CLK_32M_c_enable_265), 
         .D(n7323), .Z(CLK_32M_c_enable_155)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(77[11:21])
    defparam i1_2_lut_4_lut.init = 16'hfeff;
    LUT4 i4364_3_lut (.A(uart_prediv[3]), .B(n10_adj_1160), .C(uart_prediv[4]), 
         .Z(CLK_32M_c_enable_60)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(285[6:20])
    defparam i4364_3_lut.init = 16'h0101;
    LUT4 i4292_2_lut_2_lut_4_lut_4_lut (.A(main_state[2]), .B(main_state[0]), 
         .C(main_state[1]), .D(main_state[3]), .Z(n4760)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i4292_2_lut_2_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i3577_3_lut (.A(DEBUG_TP3_c_2), .B(DEBUG_TP2_c_1), .C(DEBUG_TP1_c_0), 
         .Z(n18_adj_1119)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(193[16:29])
    defparam i3577_3_lut.init = 16'h6a6a;
    LUT4 i3570_2_lut (.A(DEBUG_TP2_c_1), .B(DEBUG_TP1_c_0), .Z(n19_adj_1118)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(193[16:29])
    defparam i3570_2_lut.init = 16'h6666;
    LUT4 i3_3_lut_4_lut (.A(n7251), .B(n7848), .C(n7806), .D(n7813), 
         .Z(CLK_32M_c_enable_153)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(293[7:20])
    defparam i3_3_lut_4_lut.init = 16'hf1ff;
    LUT4 n15_bdd_4_lut (.A(n15_adj_1134), .B(dac_state[1]), .C(dac_state[0]), 
         .D(dac_state[2]), .Z(n7875)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n15_bdd_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_43_3_lut (.A(main_state[1]), .B(main_state[3]), .C(n7251), 
         .Z(n7808)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i1_2_lut_rep_43_3_lut.init = 16'hfbfb;
    CCU2D add_7_15 (.A0(startup_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6781), .COUT(n6782), .S0(n27), .S1(n26));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_15.INIT0 = 16'h5aaa;
    defparam add_7_15.INIT1 = 16'h5aaa;
    defparam add_7_15.INJECT1_0 = "NO";
    defparam add_7_15.INJECT1_1 = "NO";
    LUT4 i4255_3_lut (.A(n4125), .B(n4097), .C(uart_frame_cnt[0]), .Z(n7460)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4255_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_84 (.A(dac_state[2]), .B(dac_state[1]), .Z(n7849)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(246[6:18])
    defparam i1_2_lut_rep_84.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_65_3_lut (.A(dac_state[2]), .B(dac_state[1]), .C(dac_state[0]), 
         .Z(n7830)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(246[6:18])
    defparam i1_2_lut_rep_65_3_lut.init = 16'hfbfb;
    LUT4 i4267_2_lut_3_lut_4_lut (.A(dac_state[2]), .B(dac_state[1]), .C(JA_SCK_N_904), 
         .D(dac_state[0]), .Z(CLK_32M_c_enable_56)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(246[6:18])
    defparam i4267_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1528_2_lut_rep_62_3_lut_4_lut (.A(dac_state[2]), .B(dac_state[1]), 
         .C(JA_SCK_N_904), .D(dac_state[0]), .Z(n7827)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(246[6:18])
    defparam i1528_2_lut_rep_62_3_lut_4_lut.init = 16'h0040;
    LUT4 i4257_3_lut (.A(n4124), .B(n4096), .C(uart_frame_cnt[0]), .Z(n7457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4257_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_85 (.A(cnt_msm[4]), .B(cnt_msm[1]), .Z(n7850)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(404[7:22])
    defparam i1_2_lut_rep_85.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(cnt_msm[4]), .B(cnt_msm[1]), .C(cnt_msm[7]), 
         .D(n5276), .Z(n7335)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(404[7:22])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 i2967_3_lut_4_lut (.A(SW_P_N_869), .B(CLK_32M_c_enable_54), .C(n7813), 
         .D(n1693), .Z(main_state_4__N_122[1])) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[2] 495[6])
    defparam i2967_3_lut_4_lut.init = 16'hf888;
    LUT4 i2882_3_lut_4_lut (.A(SW_P_N_869), .B(CLK_32M_c_enable_54), .C(n51), 
         .D(n1759), .Z(main_state_4__N_122[0])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[2] 495[6])
    defparam i2882_3_lut_4_lut.init = 16'h7707;
    CCU2D dac_cnt_1152_add_4_9 (.A0(dac_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6856), .S0(n38_adj_1096));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152_add_4_9.INIT0 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_9.INIT1 = 16'h0000;
    defparam dac_cnt_1152_add_4_9.INJECT1_0 = "NO";
    defparam dac_cnt_1152_add_4_9.INJECT1_1 = "NO";
    CCU2D dac_cnt_1152_add_4_7 (.A0(dac_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6855), .COUT(n6856), .S0(n40_adj_1094), 
          .S1(n39_adj_1095));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152_add_4_7.INIT0 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_7.INIT1 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_7.INJECT1_0 = "NO";
    defparam dac_cnt_1152_add_4_7.INJECT1_1 = "NO";
    CCU2D dac_cnt_1152_add_4_5 (.A0(dac_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6854), .COUT(n6855), .S0(n42), .S1(n41));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152_add_4_5.INIT0 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_5.INIT1 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_5.INJECT1_0 = "NO";
    defparam dac_cnt_1152_add_4_5.INJECT1_1 = "NO";
    CCU2D dac_cnt_1152_add_4_3 (.A0(dac_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6853), .COUT(n6854), .S0(n44), .S1(n43));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152_add_4_3.INIT0 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_3.INIT1 = 16'hfaaa;
    defparam dac_cnt_1152_add_4_3.INJECT1_0 = "NO";
    defparam dac_cnt_1152_add_4_3.INJECT1_1 = "NO";
    CCU2D dac_cnt_1152_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(JA_SCK_N_904), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6853), .S1(n45));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152_add_4_1.INIT0 = 16'hF000;
    defparam dac_cnt_1152_add_4_1.INIT1 = 16'h0555;
    defparam dac_cnt_1152_add_4_1.INJECT1_0 = "NO";
    defparam dac_cnt_1152_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_msm_1153_add_4_21 (.A0(cnt_msm[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6851), .S0(n91), .S1(n90));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_21.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_21.INJECT1_1 = "NO";
    FD1S3IX cnt_msm_1153__i0 (.D(n110_adj_1097), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i0.GSR = "ENABLED";
    CCU2D cnt_msm_1153_add_4_19 (.A0(cnt_msm[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6850), .COUT(n6851), .S0(n93), .S1(n92));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_19.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_19.INJECT1_1 = "NO";
    FD1P3IX startup_cnt__i32 (.D(n8), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[32]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i32.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i0 (.D(n85), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_86 (.A(cnt_msm[2]), .B(cnt_msm[3]), .Z(n7851)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(404[7:22])
    defparam i1_2_lut_rep_86.init = 16'heeee;
    LUT4 i2_3_lut_rep_66_4_lut (.A(cnt_msm[2]), .B(cnt_msm[3]), .C(n5185), 
         .D(cnt_msm[10]), .Z(n7831)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(404[7:22])
    defparam i2_3_lut_rep_66_4_lut.init = 16'hfeff;
    CCU2D cnt_msm_1153_add_4_17 (.A0(cnt_msm[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6849), .COUT(n6850), .S0(n95_adj_1112), 
          .S1(n94_adj_1113));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_17.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_msm_1153_add_4_15 (.A0(cnt_msm[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6848), .COUT(n6849), .S0(n97_adj_1110), 
          .S1(n96_adj_1111));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_15.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_msm_1153_add_4_13 (.A0(cnt_msm[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6847), .COUT(n6848), .S0(n99_adj_1108), 
          .S1(n98_adj_1109));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_13.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_msm_1153_add_4_11 (.A0(cnt_msm[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6846), .COUT(n6847), .S0(n101_adj_1106), 
          .S1(n100_adj_1107));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_11.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_11.INJECT1_1 = "NO";
    FD1P3IX startup_cnt__i31 (.D(n9), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[31]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i31.GSR = "ENABLED";
    FD1P3IX startup_cnt__i30 (.D(n10), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[30]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i30.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(cnt_msm[2]), .B(cnt_msm[3]), .C(cnt_msm[10]), 
         .Z(n5179)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(404[7:22])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4259_3_lut (.A(n4131), .B(n4103), .C(uart_frame_cnt[0]), .Z(n7454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4259_3_lut.init = 16'hcaca;
    LUT4 i4261_3_lut (.A(n4128), .B(n4100), .C(uart_frame_cnt[0]), .Z(n7451)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4261_3_lut.init = 16'hcaca;
    LUT4 i4198_2_lut_rep_55_4_lut (.A(dac_state[2]), .B(dac_state[0]), .C(dac_state[1]), 
         .D(n5226), .Z(n7820)) /* synthesis lut_function=(A (B+(C+(D)))+!A (((D)+!C)+!B)) */ ;
    defparam i4198_2_lut_rep_55_4_lut.init = 16'hffbd;
    CCU2D cnt_msm_1153_add_4_9 (.A0(cnt_msm[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6845), .COUT(n6846), .S0(n103_adj_1104), 
          .S1(n102_adj_1105));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_9.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_msm_1153_add_4_7 (.A0(cnt_msm[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6844), .COUT(n6845), .S0(n105_adj_1102), 
          .S1(n104_adj_1103));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_7.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_7.INJECT1_1 = "NO";
    FD1P3IX startup_cnt__i29 (.D(n11), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[29]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i29.GSR = "ENABLED";
    FD1P3IX startup_cnt__i28 (.D(n12), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[28]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i28.GSR = "ENABLED";
    FD1P3IX startup_cnt__i27 (.D(n13), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[27]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i27.GSR = "ENABLED";
    FD1P3IX startup_cnt__i26 (.D(n14), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[26]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i26.GSR = "ENABLED";
    FD1P3IX startup_cnt__i25 (.D(n15), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[25]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i25.GSR = "ENABLED";
    FD1P3IX startup_cnt__i24 (.D(n16), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[24]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i24.GSR = "ENABLED";
    FD1P3IX startup_cnt__i23 (.D(n17), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[23]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i23.GSR = "ENABLED";
    FD1P3IX startup_cnt__i22 (.D(n18), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[22]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i22.GSR = "ENABLED";
    FD1P3IX startup_cnt__i21 (.D(n19), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[21]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i21.GSR = "ENABLED";
    FD1P3IX startup_cnt__i20 (.D(n20), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[20]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i20.GSR = "ENABLED";
    FD1P3IX startup_cnt__i19 (.D(n21), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[19]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i19.GSR = "ENABLED";
    FD1P3IX startup_cnt__i18 (.D(n22), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[18]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i18.GSR = "ENABLED";
    FD1P3IX startup_cnt__i17 (.D(n23), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[17]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i17.GSR = "ENABLED";
    FD1P3IX startup_cnt__i16 (.D(n24), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[16]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i16.GSR = "ENABLED";
    FD1P3IX startup_cnt__i15 (.D(n25), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i15.GSR = "ENABLED";
    FD1P3IX startup_cnt__i14 (.D(n26), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i14.GSR = "ENABLED";
    FD1P3IX startup_cnt__i13 (.D(n27), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i13.GSR = "ENABLED";
    FD1P3IX startup_cnt__i12 (.D(n28), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i12.GSR = "ENABLED";
    FD1P3IX startup_cnt__i11 (.D(n29), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i11.GSR = "ENABLED";
    FD1P3IX startup_cnt__i10 (.D(n30), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[10]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i10.GSR = "ENABLED";
    FD1P3IX startup_cnt__i9 (.D(n31), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i9.GSR = "ENABLED";
    FD1P3IX startup_cnt__i8 (.D(n32), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i8.GSR = "ENABLED";
    FD1P3IX startup_cnt__i7 (.D(n33), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i7.GSR = "ENABLED";
    FD1P3IX startup_cnt__i6 (.D(n34), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i6.GSR = "ENABLED";
    FD1P3IX startup_cnt__i5 (.D(n35), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i5.GSR = "ENABLED";
    LUT4 i4387_2_lut_2_lut_3_lut_4_lut_3_lut (.A(dac_state[2]), .B(dac_state[0]), 
         .C(dac_state[1]), .Z(n5638)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4387_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'h1010;
    FD1P3IX startup_cnt__i4 (.D(n36), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i4.GSR = "ENABLED";
    LUT4 i4325_2_lut_2_lut_3_lut_4_lut_3_lut (.A(dac_state[2]), .B(dac_state[0]), 
         .C(dac_state[1]), .Z(CLK_32M_c_enable_241)) /* synthesis lut_function=(!(A (B+(C))+!A !(C))) */ ;
    defparam i4325_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'h5252;
    CCU2D cnt_msm_1153_add_4_5 (.A0(cnt_msm[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6843), .COUT(n6844), .S0(n107_adj_1100), 
          .S1(n106_adj_1101));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_5.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_msm_1153_add_4_3 (.A0(cnt_msm[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6842), .COUT(n6843), .S0(n109_adj_1098), 
          .S1(n108_adj_1099));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_msm_1153_add_4_3.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_3.INJECT1_1 = "NO";
    FD1P3IX startup_cnt__i3 (.D(n37), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i3.GSR = "ENABLED";
    FD1P3IX startup_cnt__i2 (.D(n38), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i2.GSR = "ENABLED";
    FD1P3IX startup_cnt__i1 (.D(n39), .SP(CLK_32M_c_enable_93), .CD(startup_cnt_32__N_436), 
            .CK(CLK_32M_c), .Q(startup_cnt[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam startup_cnt__i1.GSR = "ENABLED";
    FD1S3IX spi_cnt_1170__i6 (.D(n34_adj_1142), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i6.GSR = "ENABLED";
    CCU2D cnt_msm_1153_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_msm[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6842), .S1(n110_adj_1097));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153_add_4_1.INIT0 = 16'hF000;
    defparam cnt_msm_1153_add_4_1.INIT1 = 16'h0555;
    defparam cnt_msm_1153_add_4_1.INJECT1_0 = "NO";
    defparam cnt_msm_1153_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_ic_pos_1160_add_4_17 (.A0(cnt_ic_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6838), .S0(n95), .S1(n94));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_17.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_89 (.A(uart_rx_state[0]), .B(uart_rx_ready), .C(uart_rx_state[1]), 
         .Z(CLK_32M_c_enable_258)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_89.init = 16'h0404;
    CCU2D cnt_ic_pos_1160_add_4_15 (.A0(cnt_ic_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6837), .COUT(n6838), .S0(n97), .S1(n96));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_15.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_47 (.A(uart_frame_state[1]), .B(uart_frame_state[0]), 
         .C(uart_busy), .D(uart_tx_bit_clock_enable_66), .Z(uart_tx_bit_clock_enable_12)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(595[7] 613[6])
    defparam i1_2_lut_4_lut_adj_47.init = 16'hff14;
    LUT4 i3_4_lut_rep_51 (.A(n5179), .B(n5185), .C(cnt_msm[7]), .D(n5106), 
         .Z(n7816)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i3_4_lut_rep_51.init = 16'hfffe;
    CCU2D cnt_ic_pos_1160_add_4_13 (.A0(cnt_ic_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6836), .COUT(n6837), .S0(n99), .S1(n98));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_13.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_13.INJECT1_1 = "NO";
    LUT4 uart_frame_r_2__I_18_2_lut_rep_90 (.A(uart_frame_r[0]), .B(uart_frame_start), 
         .Z(uart_tx_bit_clock_enable_66)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(569[6:45])
    defparam uart_frame_r_2__I_18_2_lut_rep_90.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_48 (.A(uart_frame_r[0]), .B(uart_frame_start), 
         .C(n3951), .Z(uart_tx_bit_clock_enable_10)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(569[6:45])
    defparam i1_2_lut_3_lut_adj_48.init = 16'h2f2f;
    FD1P3IX dac_cnt_1152__i7 (.D(n38_adj_1096), .SP(CLK_32M_c_enable_112), 
            .CD(n5699), .CK(CLK_32M_c), .Q(dac_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i7.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i6 (.D(n39_adj_1095), .SP(CLK_32M_c_enable_112), 
            .CD(n5699), .CK(CLK_32M_c), .Q(dac_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i6.GSR = "ENABLED";
    LUT4 i2518_2_lut_3_lut (.A(uart_frame_r[0]), .B(uart_frame_start), .C(n3951), 
         .Z(n5698)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(569[6:45])
    defparam i2518_2_lut_3_lut.init = 16'h2020;
    LUT4 i3_4_lut (.A(n5276), .B(n5261), .C(cnt_msm[6]), .D(n5179), 
         .Z(n7341)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(426[7:17])
    defparam i3_4_lut.init = 16'hfffe;
    CCU2D add_7_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(startup_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6775), .S1(n40));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_1.INIT0 = 16'hF000;
    defparam add_7_1.INIT1 = 16'h5555;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_52 (.A(cnt_msm[0]), .B(n7341), .Z(n7817)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(426[7:17])
    defparam i1_2_lut_rep_52.init = 16'hdddd;
    LUT4 i4_4_lut (.A(uart_prediv[2]), .B(uart_prediv[5]), .C(uart_prediv[0]), 
         .D(uart_prediv[1]), .Z(n10_adj_1160)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(285[6:20])
    defparam i4_4_lut.init = 16'hfffd;
    CCU2D cnt_ic_pos_1160_add_4_11 (.A0(cnt_ic_pos[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6835), .COUT(n6836), .S0(n101), .S1(n100));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_11.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_ic_pos_1160_add_4_9 (.A0(cnt_ic_pos[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6834), .COUT(n6835), .S0(n103), .S1(n102));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_9.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_ic_pos_1160_add_4_7 (.A0(cnt_ic_pos[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6833), .COUT(n6834), .S0(n105), .S1(n104));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_7.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_ic_pos_1160_add_4_5 (.A0(cnt_ic_pos[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6832), .COUT(n6833), .S0(n107), .S1(n106));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_5.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_5.INJECT1_1 = "NO";
    LUT4 mux_995_i1_3_lut (.A(frame_content[40]), .B(frame_content[8]), 
         .C(uart_frame_cnt[2]), .Z(n4131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i1_3_lut.init = 16'hcaca;
    FD1S3IX spi_cnt_1170__i5 (.D(n35_adj_1141), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i5.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i5 (.D(n40_adj_1094), .SP(CLK_32M_c_enable_112), 
            .CD(n5699), .CK(CLK_32M_c), .Q(dac_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i5.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i4 (.D(n41), .SP(CLK_32M_c_enable_112), .CD(n5699), 
            .CK(CLK_32M_c), .Q(dac_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i4.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i3 (.D(n42), .SP(CLK_32M_c_enable_112), .CD(n5699), 
            .CK(CLK_32M_c), .Q(dac_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i3.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i2 (.D(n43), .SP(CLK_32M_c_enable_112), .CD(n5699), 
            .CK(CLK_32M_c), .Q(dac_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i2.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i1 (.D(n44), .SP(CLK_32M_c_enable_112), .CD(n5699), 
            .CK(CLK_32M_c), .Q(dac_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i1.GSR = "ENABLED";
    FD1P3IX uart_frame_cnt_1161__i3 (.D(n22_adj_1117), .SP(uart_tx_bit_clock_enable_10), 
            .CD(n5698), .CK(uart_tx_bit_clock), .Q(uart_frame_cnt[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam uart_frame_cnt_1161__i3.GSR = "ENABLED";
    FD1P3IX uart_frame_cnt_1161__i2 (.D(n23_adj_1116), .SP(uart_tx_bit_clock_enable_10), 
            .CD(n5698), .CK(uart_tx_bit_clock), .Q(uart_frame_cnt[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam uart_frame_cnt_1161__i2.GSR = "ENABLED";
    FD1P3IX uart_frame_cnt_1161__i1 (.D(n24_adj_1115), .SP(uart_tx_bit_clock_enable_10), 
            .CD(n5698), .CK(uart_tx_bit_clock), .Q(uart_frame_cnt[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam uart_frame_cnt_1161__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1163__i3 (.D(n18_adj_1119), .SP(CLK_32M_c_enable_238), 
            .CD(n6493), .CK(CLK_32M_c), .Q(DEBUG_TP3_c_2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(193[16:29])
    defparam uart_rx_cnt_1163__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_49 (.A(uart_rx_state[0]), .B(uart_rx_ready), 
         .C(uart_rx_state[1]), .Z(n3844)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_49.init = 16'h1010;
    FD1P3IX cnt_ic_set__i2 (.D(cal_en_N_941), .SP(CLK_32M_c_enable_265), 
            .CD(n6180), .CK(CLK_32M_c), .Q(cnt_ic_set[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i2.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1163__i2 (.D(n19_adj_1118), .SP(CLK_32M_c_enable_238), 
            .CD(n6493), .CK(CLK_32M_c), .Q(DEBUG_TP2_c_1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(193[16:29])
    defparam uart_rx_cnt_1163__i2.GSR = "ENABLED";
    LUT4 i20_2_lut_3_lut (.A(uart_rx_state[0]), .B(uart_rx_ready), .C(uart_rx_state[1]), 
         .Z(CLK_32M_c_enable_104)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i20_2_lut_3_lut.init = 16'h1e1e;
    FD1S3IX spi_cnt_1170__i4 (.D(n36_adj_1140), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i4.GSR = "ENABLED";
    FD1S3IX spi_cnt_1170__i3 (.D(n37_adj_1139), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i3.GSR = "ENABLED";
    FD1S3IX spi_cnt_1170__i2 (.D(n38_adj_1138), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i2.GSR = "ENABLED";
    CCU2D cnt_ic_pos_1160_add_4_3 (.A0(cnt_ic_pos[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6831), .COUT(n6832), .S0(n109), .S1(n108));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_ic_pos_1160_add_4_3.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_3.INJECT1_1 = "NO";
    FD1S3IX spi_cnt_1170__i1 (.D(n39_adj_1137), .CK(CLK_32M_c), .CD(CLK_32M_c_enable_55), 
            .Q(spi_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170__i1.GSR = "ENABLED";
    CCU2D cnt_ic_pos_1160_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_pos[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6831), .S1(n110));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160_add_4_1.INIT0 = 16'hF000;
    defparam cnt_ic_pos_1160_add_4_1.INIT1 = 16'h0555;
    defparam cnt_ic_pos_1160_add_4_1.INJECT1_0 = "NO";
    defparam cnt_ic_pos_1160_add_4_1.INJECT1_1 = "NO";
    CCU2D uart_divider_1157_1247_add_4_5 (.A0(uart_tx_bit_clock), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6830), .S0(n22_adj_1152));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247_add_4_5.INIT0 = 16'hfaaa;
    defparam uart_divider_1157_1247_add_4_5.INIT1 = 16'h0000;
    defparam uart_divider_1157_1247_add_4_5.INJECT1_0 = "NO";
    defparam uart_divider_1157_1247_add_4_5.INJECT1_1 = "NO";
    CCU2D uart_divider_1157_1247_add_4_3 (.A0(n3), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_1153), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6829), .COUT(n6830), .S0(n24_adj_1150), 
          .S1(n23_adj_1151));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247_add_4_3.INIT0 = 16'hfaaa;
    defparam uart_divider_1157_1247_add_4_3.INIT1 = 16'hfaaa;
    defparam uart_divider_1157_1247_add_4_3.INJECT1_0 = "NO";
    defparam uart_divider_1157_1247_add_4_3.INJECT1_1 = "NO";
    CCU2D uart_divider_1157_1247_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(uart_rx_bit_clock), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6829), .S1(n25_adj_1149));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(288[17:31])
    defparam uart_divider_1157_1247_add_4_1.INIT0 = 16'hF000;
    defparam uart_divider_1157_1247_add_4_1.INIT1 = 16'h0555;
    defparam uart_divider_1157_1247_add_4_1.INJECT1_0 = "NO";
    defparam uart_divider_1157_1247_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_ic_neg_1159_add_4_17 (.A0(cnt_ic_neg[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6825), .S0(n95_adj_1170), .S1(n94_adj_1171));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_17.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_ic_neg_1159_add_4_15 (.A0(cnt_ic_neg[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6824), .COUT(n6825), .S0(n97_adj_1154), 
          .S1(n96_adj_1169));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_15.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_15.INJECT1_1 = "NO";
    FD1P3IX uart_rx_state__i1 (.D(uart_rx_state_2__N_470[1]), .SP(CLK_32M_c_enable_104), 
            .CD(n3844), .CK(CLK_32M_c), .Q(uart_rx_state[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_state__i1.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i5 (.D(n105_adj_1144), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i5.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i10 (.D(n100_adj_1157), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i10.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i4 (.D(n7867), .SP(CLK_32M_c_enable_265), .CD(n5722), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i4.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i9 (.D(n76), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i9.GSR = "ENABLED";
    FD1P3JX dac_div_1155__i1 (.D(n84), .SP(CLK_32M_c_enable_241), .PD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i1.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i5 (.D(uart_rx_frame[5]), .SP(CLK_32M_c_enable_265), 
            .CD(n5722), .CK(CLK_32M_c), .Q(cnt_ic_set[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i5.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i10 (.D(n75), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i10.GSR = "ENABLED";
    FD1P3IX dac_cnt_1152__i0 (.D(n45), .SP(CLK_32M_c_enable_112), .CD(n5699), 
            .CK(CLK_32M_c), .Q(JA_SCK_N_904)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(243[13:22])
    defparam dac_cnt_1152__i0.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i2 (.D(n83), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i2.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i11 (.D(n74), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i11.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i12 (.D(n73), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i12.GSR = "ENABLED";
    FD1P3JX dac_div_1155__i3 (.D(n82), .SP(CLK_32M_c_enable_241), .PD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i3.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n7820), .B(n7830), .C(dac_update), .D(n7842), 
         .Z(CLK_32M_c_enable_233)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut.init = 16'hfff7;
    FD1P3IX cnt_ic_set__i6 (.D(n5156), .SP(CLK_32M_c_enable_265), .CD(n5636), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i6.GSR = "ENABLED";
    FD1P3IX uart_frame_cnt_1161__i0 (.D(n25_adj_1114), .SP(uart_tx_bit_clock_enable_10), 
            .CD(n5698), .CK(uart_tx_bit_clock), .Q(uart_frame_cnt[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam uart_frame_cnt_1161__i0.GSR = "ENABLED";
    CCU2D cnt_ic_neg_1159_add_4_13 (.A0(cnt_ic_neg[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6823), .COUT(n6824), .S0(n99_adj_1156), 
          .S1(n98_adj_1155));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_13.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_13.INJECT1_1 = "NO";
    FD1P3IX dac_div_1155__i4 (.D(n81), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i4.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i13 (.D(n72), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i13.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i5 (.D(n80), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i5.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(uart_rx_frame[7]), .B(uart_rx_frame[6]), .Z(n5156)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i1_2_lut.init = 16'h8888;
    CCU2D cnt_ic_neg_1159_add_4_11 (.A0(cnt_ic_neg[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6822), .COUT(n6823), .S0(n101_adj_1158), 
          .S1(n100_adj_1157));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_11.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_ic_neg_1159_add_4_9 (.A0(cnt_ic_neg[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6821), .COUT(n6822), .S0(n103_adj_1135), 
          .S1(n102_adj_1145));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_9.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_9.INJECT1_1 = "NO";
    FD1P3IX cnt_ic_pos_1160__i9 (.D(n101), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i9.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_50 (.A(cnt_msm[19]), .B(cnt_msm[14]), .C(cnt_msm[15]), 
         .D(cnt_msm[16]), .Z(n5276)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(426[7:17])
    defparam i3_4_lut_adj_50.init = 16'hfffe;
    FD1P3AX uart_rx_frame__i32 (.D(uart_rx_register[7]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[31]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i32.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i31 (.D(uart_rx_register[6]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[30]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i31.GSR = "ENABLED";
    LUT4 i3590_1_lut (.A(uart_frame_cnt[0]), .Z(n25_adj_1114)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam i3590_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_51 (.A(n5232), .B(cnt_msm[5]), .C(cnt_msm[7]), .D(n7850), 
         .Z(n5261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(404[7:22])
    defparam i3_4_lut_adj_51.init = 16'hfffe;
    LUT4 i13_3_lut_3_lut (.A(uart_rx_frame[5]), .B(uart_rx_frame[7]), .C(uart_rx_frame[6]), 
         .Z(n5_adj_1165)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i13_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i4209_3_lut (.A(frame_content[24]), .B(frame_content[16]), .C(uart_frame_cnt[0]), 
         .Z(n7455)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4209_3_lut.init = 16'hcaca;
    LUT4 i12_3_lut_3_lut (.A(uart_rx_frame[5]), .B(uart_rx_frame[7]), .C(uart_rx_frame[6]), 
         .Z(n3802)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i12_3_lut_3_lut.init = 16'h3838;
    LUT4 i1_4_lut_4_lut (.A(CLK_32M_c_enable_265), .B(n7813), .C(n7808), 
         .D(CLK_32M_c_enable_55), .Z(main_state_4__N_122[2])) /* synthesis lut_function=(A (B+(D))+!A (B ((D)+!C)+!B (D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i1_4_lut_4_lut.init = 16'hff8c;
    FD1P3AX uart_rx_frame__i30 (.D(uart_rx_register[5]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[29]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i30.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i29 (.D(uart_rx_register[4]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[28]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i29.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i28 (.D(uart_rx_register[3]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[27]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i28.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i27 (.D(uart_rx_register[2]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[26]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i27.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i26 (.D(CLK_OUT_c_1), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[25]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i26.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i25 (.D(uart_rx_register[0]), .SP(CLK_32M_c_enable_129), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[24]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i25.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i24 (.D(uart_rx_register[7]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[23]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i24.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i23 (.D(uart_rx_register[6]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[22]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i23.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i22 (.D(uart_rx_register[5]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[21]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i22.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i21 (.D(uart_rx_register[4]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[20]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i21.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i20 (.D(uart_rx_register[3]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[19]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i20.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i19 (.D(uart_rx_register[2]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[18]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i19.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i18 (.D(CLK_OUT_c_1), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(PW2_c_17));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i18.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i17 (.D(uart_rx_register[0]), .SP(CLK_32M_c_enable_137), 
            .CK(CLK_32M_c), .Q(PW1_c_16));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i17.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i16 (.D(uart_rx_register[7]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i16.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i15 (.D(uart_rx_register[6]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(FEN_B_c_14));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i15.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i14 (.D(uart_rx_register[5]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(MS_A2_c_13));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i14.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i13 (.D(uart_rx_register[4]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(MS_A1_c_12));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i13.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i12 (.D(uart_rx_register[3]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(MS_A0_c_11));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i12.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i11 (.D(uart_rx_register[2]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(MAG100_c_10));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i11.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i10 (.D(CLK_OUT_c_1), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(MAG10_c_9));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i10.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i9 (.D(uart_rx_register[0]), .SP(CLK_32M_c_enable_145), 
            .CK(CLK_32M_c), .Q(MAG1_c_8));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i9.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i8 (.D(uart_rx_register[7]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i8.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i7 (.D(uart_rx_register[6]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i7.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i6 (.D(uart_rx_register[5]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(uart_rx_frame[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i6.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i5 (.D(uart_rx_register[4]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(RE3_c_4));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i5.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i4 (.D(uart_rx_register[3]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(RE2B_c_3));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i4.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i3 (.D(uart_rx_register[2]), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(RE2A_c_2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i3.GSR = "ENABLED";
    FD1P3AX uart_rx_frame__i2 (.D(CLK_OUT_c_1), .SP(CLK_32M_c_enable_152), 
            .CK(CLK_32M_c), .Q(RE1B_c_1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_frame__i2.GSR = "ENABLED";
    FD1P3AX uart_frame_state_i1 (.D(uart_frame_state_2__N_134[1]), .SP(uart_tx_bit_clock_enable_12), 
            .CK(uart_tx_bit_clock), .Q(uart_frame_state[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_frame_state_i1.GSR = "ENABLED";
    CCU2D cnt_ic_neg_1159_add_4_7 (.A0(cnt_ic_neg[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6820), .COUT(n6821), .S0(n105_adj_1144), 
          .S1(n104_adj_1166));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_7.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_7.INJECT1_1 = "NO";
    FD1P3AX uart_tx_register_i0_i7 (.D(uart_tx_register_7__N_831[7]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i7.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i6 (.D(uart_tx_register_7__N_831[6]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i6.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i5 (.D(uart_tx_register_7__N_831[5]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i5.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i4 (.D(uart_tx_register_7__N_831[4]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i4.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i3 (.D(uart_tx_register_7__N_831[3]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i3.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i2 (.D(uart_tx_register_7__N_831[2]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i2.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i1 (.D(uart_tx_register_7__N_831[1]), .SP(uart_tx_bit_clock_enable_19), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_register[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam uart_tx_register_i0_i1.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i47 (.D(result_content[47]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[47]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i47.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i46 (.D(result_content[46]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[46]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i46.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i45 (.D(result_content[45]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[45]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i45.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i44 (.D(result_content[44]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[44]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i44.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i43 (.D(result_content[43]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[43]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i43.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i42 (.D(result_content[42]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[42]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i42.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i41 (.D(result_content[41]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[41]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i41.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i40 (.D(result_content[40]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[40]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i40.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i39 (.D(result_content[39]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[39]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i39.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i38 (.D(result_content[38]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[38]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i38.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i37 (.D(result_content[37]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[37]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i37.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i36 (.D(result_content[36]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[36]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i36.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i35 (.D(result_content[35]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[35]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i35.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i34 (.D(result_content[34]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[34]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i34.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i33 (.D(result_content[33]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[33]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i33.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i32 (.D(result_content[32]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[32]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i32.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i31 (.D(result_content[31]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[31]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i31.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i30 (.D(result_content[30]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[30]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i30.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i29 (.D(result_content[29]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[29]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i29.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i28 (.D(result_content[28]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[28]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i28.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i27 (.D(result_content[27]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[27]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i27.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i26 (.D(result_content[26]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[26]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i26.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i25 (.D(result_content[25]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[25]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i25.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i24 (.D(result_content[24]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[24]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i24.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i23 (.D(result_content[23]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[23]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i23.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i22 (.D(result_content[22]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[22]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i22.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i21 (.D(result_content[21]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[21]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i21.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i20 (.D(result_content[20]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[20]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i20.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i19 (.D(result_content[19]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[19]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i19.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i18 (.D(result_content[18]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[18]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i18.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i17 (.D(result_content[17]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[17]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i17.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i16 (.D(result_content[16]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[16]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i16.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i15 (.D(result_content[15]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i15.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i14 (.D(result_content[14]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i14.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i13 (.D(result_content[13]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i13.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i12 (.D(result_content[12]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i12.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i11 (.D(result_content[11]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i11.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i10 (.D(result_content[10]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[10]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i10.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i9 (.D(result_content[9]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i9.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i8 (.D(result_content[8]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i8.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i7 (.D(result_content[7]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i7.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i6 (.D(result_content[6]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i6.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i5 (.D(result_content[5]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i5.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i4 (.D(result_content[4]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i4.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i3 (.D(result_content[3]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i3.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i2 (.D(result_content[2]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i2.GSR = "ENABLED";
    FD1P3AX frame_content_i0_i1 (.D(result_content[1]), .SP(uart_tx_bit_clock_enable_66), 
            .CK(uart_tx_bit_clock), .Q(frame_content[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam frame_content_i0_i1.GSR = "ENABLED";
    FD1P3AX main_state_i3 (.D(main_state_4__N_122[3]), .SP(CLK_32M_c_enable_153), 
            .CK(CLK_32M_c), .Q(main_state[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam main_state_i3.GSR = "ENABLED";
    FD1P3AX main_state_i2 (.D(main_state_4__N_122[2]), .SP(CLK_32M_c_enable_155), 
            .CK(CLK_32M_c), .Q(main_state[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam main_state_i2.GSR = "ENABLED";
    FD1P3AX main_state_i1 (.D(main_state_4__N_122[1]), .SP(CLK_32M_c_enable_155), 
            .CK(CLK_32M_c), .Q(main_state[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam main_state_i1.GSR = "ENABLED";
    CCU2D cnt_ic_neg_1159_add_4_5 (.A0(cnt_ic_neg[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6819), .COUT(n6820), .S0(n107_adj_1125), 
          .S1(n106_adj_1143));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_5.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_5.INJECT1_1 = "NO";
    FD1P3AX result_content_i0_i47 (.D(cnt_ic_neg[15]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[47]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i47.GSR = "ENABLED";
    FD1P3AX result_content_i0_i46 (.D(cnt_ic_neg[14]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[46]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i46.GSR = "ENABLED";
    FD1P3AX result_content_i0_i45 (.D(cnt_ic_neg[13]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[45]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i45.GSR = "ENABLED";
    FD1P3AX result_content_i0_i44 (.D(cnt_ic_neg[12]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[44]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i44.GSR = "ENABLED";
    FD1P3AX result_content_i0_i43 (.D(cnt_ic_neg[11]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[43]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i43.GSR = "ENABLED";
    FD1P3AX result_content_i0_i42 (.D(cnt_ic_neg[10]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[42]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i42.GSR = "ENABLED";
    FD1P3AX result_content_i0_i41 (.D(cnt_ic_neg[9]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[41]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i41.GSR = "ENABLED";
    FD1P3AX result_content_i0_i40 (.D(cnt_ic_neg[8]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[40]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i40.GSR = "ENABLED";
    FD1P3AX result_content_i0_i39 (.D(cnt_ic_neg[7]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[39]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i39.GSR = "ENABLED";
    FD1P3AX result_content_i0_i38 (.D(cnt_ic_neg[6]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[38]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i38.GSR = "ENABLED";
    FD1P3AX result_content_i0_i37 (.D(cnt_ic_neg[5]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[37]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i37.GSR = "ENABLED";
    FD1P3AX result_content_i0_i36 (.D(cnt_ic_neg[4]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[36]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i36.GSR = "ENABLED";
    FD1P3AX result_content_i0_i35 (.D(cnt_ic_neg[3]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[35]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i35.GSR = "ENABLED";
    FD1P3AX result_content_i0_i34 (.D(cnt_ic_neg[2]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[34]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i34.GSR = "ENABLED";
    FD1P3AX result_content_i0_i33 (.D(cnt_ic_neg[1]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[33]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i33.GSR = "ENABLED";
    FD1P3AX result_content_i0_i32 (.D(cnt_ic_neg[0]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[32]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i32.GSR = "ENABLED";
    FD1P3AX result_content_i0_i31 (.D(cnt_ic_pos[15]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[31]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i31.GSR = "ENABLED";
    FD1P3AX result_content_i0_i30 (.D(cnt_ic_pos[14]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[30]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i30.GSR = "ENABLED";
    FD1P3AX result_content_i0_i29 (.D(cnt_ic_pos[13]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[29]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i29.GSR = "ENABLED";
    FD1P3AX result_content_i0_i28 (.D(cnt_ic_pos[12]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[28]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i28.GSR = "ENABLED";
    FD1P3AX result_content_i0_i27 (.D(cnt_ic_pos[11]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[27]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i27.GSR = "ENABLED";
    FD1P3AX result_content_i0_i26 (.D(cnt_ic_pos[10]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[26]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i26.GSR = "ENABLED";
    FD1P3AX result_content_i0_i25 (.D(cnt_ic_pos[9]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[25]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i25.GSR = "ENABLED";
    FD1P3AX result_content_i0_i24 (.D(cnt_ic_pos[8]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[24]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i24.GSR = "ENABLED";
    FD1P3AX result_content_i0_i23 (.D(cnt_ic_pos[7]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[23]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i23.GSR = "ENABLED";
    FD1P3AX result_content_i0_i22 (.D(cnt_ic_pos[6]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[22]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i22.GSR = "ENABLED";
    FD1P3AX result_content_i0_i21 (.D(cnt_ic_pos[5]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[21]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i21.GSR = "ENABLED";
    FD1P3AX result_content_i0_i20 (.D(cnt_ic_pos[4]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[20]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i20.GSR = "ENABLED";
    FD1P3AX result_content_i0_i19 (.D(cnt_ic_pos[3]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[19]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i19.GSR = "ENABLED";
    FD1P3AX result_content_i0_i18 (.D(cnt_ic_pos[2]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[18]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i18.GSR = "ENABLED";
    FD1P3AX result_content_i0_i17 (.D(cnt_ic_pos[1]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[17]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i17.GSR = "ENABLED";
    FD1P3AX result_content_i0_i16 (.D(cnt_ic_pos[0]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[16]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i16.GSR = "ENABLED";
    FD1P3AX result_content_i0_i15 (.D(az_state), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i15.GSR = "ENABLED";
    FD1P3AX result_content_i0_i14 (.D(adc_res[14]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i14.GSR = "ENABLED";
    FD1P3AX result_content_i0_i13 (.D(adc_res[13]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i13.GSR = "ENABLED";
    FD1P3AX result_content_i0_i12 (.D(adc_res[12]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i12.GSR = "ENABLED";
    FD1P3AX result_content_i0_i11 (.D(adc_res[11]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i11.GSR = "ENABLED";
    FD1P3AX result_content_i0_i10 (.D(adc_res[10]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[10]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i10.GSR = "ENABLED";
    FD1P3AX result_content_i0_i9 (.D(adc_res[9]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i9.GSR = "ENABLED";
    FD1P3AX result_content_i0_i8 (.D(adc_res[8]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i8.GSR = "ENABLED";
    FD1P3AX result_content_i0_i7 (.D(adc_res[7]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i7.GSR = "ENABLED";
    FD1P3AX result_content_i0_i6 (.D(adc_res[6]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i6.GSR = "ENABLED";
    FD1P3AX result_content_i0_i5 (.D(adc_res[5]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i5.GSR = "ENABLED";
    FD1P3AX result_content_i0_i4 (.D(adc_res[4]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i4.GSR = "ENABLED";
    FD1P3AX result_content_i0_i3 (.D(adc_res[3]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i3.GSR = "ENABLED";
    FD1P3AX result_content_i0_i2 (.D(adc_res[2]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i2.GSR = "ENABLED";
    FD1P3AX result_content_i0_i1 (.D(adc_res[1]), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(result_content[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam result_content_i0_i1.GSR = "ENABLED";
    FD1P3AX sw_in_r_460 (.D(SW_IN_N_885), .SP(CLK_32M_c_enable_203), .CK(CLK_32M_c), 
            .Q(SW_IN_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam sw_in_r_460.GSR = "ENABLED";
    LUT4 i20_2_lut_rep_97 (.A(uart_rx_frame[6]), .B(uart_rx_frame[5]), .Z(n7862)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i20_2_lut_rep_97.init = 16'h6666;
    LUT4 i1415_1_lut_2_lut (.A(uart_rx_frame[6]), .B(uart_rx_frame[5]), 
         .Z(n4594)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i1415_1_lut_2_lut.init = 16'h9999;
    FD1P3AX dac_word_i15 (.D(dac_word_15__N_306), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i15.GSR = "ENABLED";
    LUT4 i2953_2_lut_rep_100 (.A(main_state[0]), .B(main_state[1]), .Z(n7865)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2953_2_lut_rep_100.init = 16'h8888;
    LUT4 i2_3_lut_rep_78_4_lut (.A(main_state[0]), .B(main_state[1]), .C(main_state[2]), 
         .D(main_state[3]), .Z(n7843)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_78_4_lut.init = 16'hf7ff;
    LUT4 i2_3_lut_4_lut_adj_52 (.A(main_state[0]), .B(main_state[1]), .C(main_state[3]), 
         .D(main_state[2]), .Z(n5252)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_52.init = 16'hf7ff;
    LUT4 equal_549_i10_1_lut_rep_60_3_lut_4_lut (.A(main_state[0]), .B(main_state[1]), 
         .C(main_state[2]), .D(main_state[3]), .Z(CLK_32M_c_enable_43)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam equal_549_i10_1_lut_rep_60_3_lut_4_lut.init = 16'h0800;
    FD1P3AX az_switch_473 (.D(AZ_SW_N_915), .SP(CLK_32M_c_enable_243), .CK(CLK_32M_c), 
            .Q(AZ_SW_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam az_switch_473.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(spi_cnt[3]), .B(spi_cnt[0]), .C(spi_cnt[4]), .D(spi_cnt[2]), 
         .Z(n12_adj_1159)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam i5_4_lut.init = 16'hfffe;
    CCU2D cnt_ic_neg_1159_add_4_3 (.A0(cnt_ic_neg[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6818), .COUT(n6819), .S0(n109_adj_1123), 
          .S1(n108_adj_1122));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_ic_neg_1159_add_4_3.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_101 (.A(main_state[1]), .B(main_state[3]), .C(main_state[2]), 
         .Z(n7866)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(300[6:19])
    defparam i2_3_lut_rep_101.init = 16'hfefe;
    LUT4 i4182_2_lut_rep_70_4_lut (.A(main_state[1]), .B(main_state[3]), 
         .C(main_state[2]), .D(main_state[0]), .Z(n7835)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(300[6:19])
    defparam i4182_2_lut_rep_70_4_lut.init = 16'hfffe;
    LUT4 i4308_2_lut_rep_80_4_lut (.A(main_state[1]), .B(main_state[3]), 
         .C(main_state[2]), .D(main_state[0]), .Z(CLK_32M_c_enable_54)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(300[6:19])
    defparam i4308_2_lut_rep_80_4_lut.init = 16'h0100;
    FD1P3JX sw_n_r_459 (.D(SW_N_N_878), .SP(CLK_32M_c_enable_248), .PD(n5643), 
            .CK(CLK_32M_c), .Q(SW_N_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam sw_n_r_459.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i14 (.D(n71), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i14.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i0 (.D(n110), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i0.GSR = "ENABLED";
    LUT4 i1019_1_lut_rep_102 (.A(uart_rx_frame[5]), .Z(n7867)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i1019_1_lut_rep_102.init = 16'h5555;
    FD1P3IX cnt_ic_neg_1159__i6 (.D(n104_adj_1166), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i6.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i6 (.D(n79), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i6.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i7 (.D(n78), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i7.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i15 (.D(n70), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i15.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i11 (.D(n99_adj_1156), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i11.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i12 (.D(n98_adj_1155), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i12.GSR = "ENABLED";
    FD1P3JX cnt_ic_set__i9 (.D(n2_adj_1164), .SP(CLK_32M_c_enable_265), 
            .PD(n5727), .CK(CLK_32M_c), .Q(cnt_ic_set[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i9.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut (.A(uart_rx_frame[5]), .B(uart_rx_frame[7]), .Z(n2_adj_1164)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    FD1P3IX cnt_ic_neg_1159__i0 (.D(n110_adj_1124), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_53 (.A(cnt_msm[6]), .B(cnt_msm[0]), .Z(n5185)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[7:21])
    defparam i1_2_lut_adj_53.init = 16'heeee;
    FD1P3IX cnt_ic_set__i10 (.D(n4594), .SP(CLK_32M_c_enable_265), .CD(n5722), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i10.GSR = "ENABLED";
    FD1P3AX dac_word_i14 (.D(dac_word_15__N_311), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i14.GSR = "ENABLED";
    FD1P3AX dac_word_i13 (.D(dac_word_15__N_314), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i13.GSR = "ENABLED";
    FD1P3AX dac_word_i12 (.D(dac_word_15__N_317), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i12.GSR = "ENABLED";
    FD1P3AX dac_word_i11 (.D(dac_word_15__N_320), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i11.GSR = "ENABLED";
    FD1P3AX dac_word_i10 (.D(dac_word_15__N_323), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[10]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i10.GSR = "ENABLED";
    FD1P3AX dac_word_i9 (.D(dac_word_15__N_326), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[9]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i9.GSR = "ENABLED";
    FD1P3AX dac_word_i8 (.D(dac_word_15__N_329), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[8]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i8.GSR = "ENABLED";
    FD1P3AX dac_word_i7 (.D(dac_word_15__N_332), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i7.GSR = "ENABLED";
    FD1P3AX dac_word_i6 (.D(dac_word_15__N_335), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i6.GSR = "ENABLED";
    FD1P3AX dac_word_i5 (.D(dac_word_15__N_338), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[5]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i5.GSR = "ENABLED";
    FD1P3AX dac_word_i4 (.D(dac_word_15__N_341), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i4.GSR = "ENABLED";
    FD1P3AX dac_word_i3 (.D(dac_word_15__N_344), .SP(CLK_32M_c_enable_229), 
            .CK(CLK_32M_c), .Q(dac_word[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i3.GSR = "ENABLED";
    FD1P3IX dac_word_i2 (.D(uart_rx_frame[18]), .SP(dac_update), .CD(n7827), 
            .CK(CLK_32M_c), .Q(dac_word[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_word_i2.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n7350), .B(n5276), .C(cnt_msm[4]), .D(cnt_msm[1]), 
         .Z(n5106)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_adj_54 (.A(n5232), .B(cnt_msm[5]), .Z(n7350)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_54.init = 16'hbbbb;
    LUT4 i4_4_lut_adj_55 (.A(cnt_msm[11]), .B(n7274), .C(cnt_msm[9]), 
         .D(n6), .Z(n5232)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[7:21])
    defparam i4_4_lut_adj_55.init = 16'hfffe;
    FD1P3AX cnt_ic_set__i8 (.D(n5_adj_1165), .SP(CLK_32M_c_enable_265), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[7]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i8.GSR = "ENABLED";
    FD1P3AX cnt_ic_set__i7 (.D(n3830), .SP(CLK_32M_c_enable_265), .CK(CLK_32M_c), 
            .Q(cnt_ic_set[6]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i7.GSR = "ENABLED";
    FD1P3AX cnt_ic_set__i3 (.D(n3802), .SP(CLK_32M_c_enable_265), .CK(CLK_32M_c), 
            .Q(cnt_ic_set[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_56 (.A(cnt_msm[12]), .B(cnt_msm[13]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[7:21])
    defparam i1_2_lut_adj_56.init = 16'heeee;
    FD1P3AX dac_state__i2 (.D(n7875), .SP(CLK_32M_c_enable_233), .CK(CLK_32M_c), 
            .Q(dac_state[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_state__i2.GSR = "ENABLED";
    CCU2D cnt_ic_neg_1159_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_ic_neg[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6818), .S1(n110_adj_1124));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159_add_4_1.INIT0 = 16'hF000;
    defparam cnt_ic_neg_1159_add_4_1.INIT1 = 16'h0555;
    defparam cnt_ic_neg_1159_add_4_1.INJECT1_0 = "NO";
    defparam cnt_ic_neg_1159_add_4_1.INJECT1_1 = "NO";
    FD1P3IX cnt_ic_set__i1 (.D(cal_en_N_941), .SP(CLK_32M_c_enable_265), 
            .CD(n5636), .CK(CLK_32M_c), .Q(cnt_ic_set[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i1.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i11 (.D(uart_rx_frame[6]), .SP(CLK_32M_c_enable_265), 
            .CD(n5725), .CK(CLK_32M_c), .Q(cnt_ic_set[11]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i11.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i13 (.D(n97_adj_1154), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i13.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i7 (.D(n103_adj_1135), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i7.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1163__i1 (.D(n6480), .SP(CLK_32M_c_enable_238), 
            .CD(n6493), .CK(CLK_32M_c), .Q(DEBUG_TP1_c_0));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(193[16:29])
    defparam uart_rx_cnt_1163__i1.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_57 (.A(cnt_msm[18]), .B(cnt_msm[17]), .C(cnt_msm[8]), 
         .D(cnt_msm[20]), .Z(n7274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[7:21])
    defparam i3_4_lut_adj_57.init = 16'hfffe;
    LUT4 i2_4_lut_adj_58 (.A(cal_en), .B(n4_adj_1132), .C(n1690), .D(n51_adj_1178), 
         .Z(main_state_4__N_122[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[2] 495[6])
    defparam i2_4_lut_adj_58.init = 16'hc088;
    FD1P3IX cnt_ic_neg_1159__i8 (.D(n102_adj_1145), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i8.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i12 (.D(n2), .SP(CLK_32M_c_enable_265), .CD(n5722), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[12]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i12.GSR = "ENABLED";
    FD1P3IX dac_div_1155__i8 (.D(n77), .SP(CLK_32M_c_enable_241), .CD(n5638), 
            .CK(CLK_32M_c), .Q(dac_div[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155__i8.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i14 (.D(n96_adj_1169), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i14.GSR = "ENABLED";
    FD1P3IX uart_frame_start_472 (.D(n8046), .SP(CLK_32M_c_enable_243), 
            .CD(n4760), .CK(CLK_32M_c), .Q(uart_frame_start));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam uart_frame_start_472.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i15 (.D(n95_adj_1170), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i15.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i10 (.D(n100), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i10.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i1 (.D(n109_adj_1123), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i1.GSR = "ENABLED";
    FD1P3IX cnt_ic_neg_1159__i2 (.D(n108_adj_1122), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i2.GSR = "ENABLED";
    FD1P3JX sw_p_r_458 (.D(SW_P_N_866), .SP(CLK_32M_c_enable_248), .PD(n5643), 
            .CK(CLK_32M_c), .Q(SW_P_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam sw_p_r_458.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i11 (.D(n99), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i11.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i12 (.D(n98), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i12.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i13 (.D(n97), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i13.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i14 (.D(n96), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i14.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i15 (.D(n95), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i15.GSR = "ENABLED";
    FD1S3AX reset_in_r_432 (.D(reset_in_ff), .CK(CLK_32M_c), .Q(reset_in_r));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam reset_in_r_432.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1484_3_lut_4_lut (.A(CLK_32M_c_enable_265), .B(con_start_r), .C(n4007), 
         .D(n7815), .Z(n4387)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i1484_3_lut_4_lut.init = 16'hbfb0;
    OB RE1A_pad (.I(RE1A_c), .O(RE1A));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[16:20])
    OB RE1B_pad (.I(RE1B_c_1), .O(RE1B));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[21:25])
    OB RE2A_pad (.I(RE2A_c_2), .O(RE2A));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[26:30])
    OB RE2B_pad (.I(RE2B_c_3), .O(RE2B));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[31:35])
    OB MAG1_pad (.I(MAG1_c_8), .O(MAG1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[36:40])
    OB MAG10_pad (.I(MAG10_c_9), .O(MAG10));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[41:46])
    OB MAG100_pad (.I(MAG100_c_10), .O(MAG100));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(59[47:53])
    OB MS_A0_pad (.I(MS_A0_c_11), .O(MS_A0));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[8:13])
    OB MS_A1_pad (.I(MS_A1_c_12), .O(MS_A1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[14:19])
    OB MS_A2_pad (.I(MS_A2_c_13), .O(MS_A2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[20:25])
    OB FEN_A_pad (.I(FEN_C_c), .O(FEN_A));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[26:31])
    OB FEN_B_pad (.I(FEN_B_c_14), .O(FEN_B));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[32:37])
    OB FEN_C_pad (.I(FEN_C_c), .O(FEN_C));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(60[38:43])
    OB JA_DIN_pad (.I(JA_DIN_c), .O(JA_DIN));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[39:45])
    OB JA_C1_pad (.I(GND_net), .O(JA_C1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[8:13])
    OB JA_C2_pad (.I(GND_net), .O(JA_C2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[14:19])
    OB JA_C3_pad (.I(GND_net), .O(JA_C3));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[20:25])
    OB JA_SCK_pad (.I(JA_SCK_c), .O(JA_SCK));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[26:32])
    OB JA_CS_pad (.I(JA_CS_c), .O(JA_CS));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(62[33:38])
    OB AZ_SW_pad (.I(AZ_SW_c), .O(AZ_SW));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[8:13])
    OB PW1_pad (.I(PW1_c_16), .O(PW1));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[15:18])
    OB PW2_pad (.I(PW2_c_17), .O(PW2));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[20:23])
    OB SU_A_pad (.I(SU_A_c), .O(SU_A));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[25:29])
    OB SU_B_pad (.I(SU_B_c), .O(SU_B));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(63[31:35])
    IB CLK_32M_pad (.I(CLK_32M), .O(CLK_32M_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[8:15])
    IB RESET_pad (.I(RESET), .O(RESET_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[42:47])
    IB AD_ADO_pad (.I(AD_ADO), .O(AD_ADO_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(58[7:13])
    IB COMP_IN_pad (.I(COMP_IN), .O(COMP_IN_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[16:23])
    IB UART_RX_pad (.I(UART_RX), .O(UART_RX_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[24:31])
    IB CON_START_pad (.I(CON_START), .O(CON_START_c));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(54[32:41])
    LUT4 mux_983_i8_3_lut (.A(frame_content[39]), .B(frame_content[7]), 
         .C(uart_frame_cnt[2]), .Z(n4096)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i8_3_lut.init = 16'hcaca;
    LUT4 i2878_2_lut (.A(AZ_SW_c), .B(uart_rx_frame[15]), .Z(AZ_SW_N_915)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(350[6] 352[9])
    defparam i2878_2_lut.init = 16'h4444;
    LUT4 mux_995_i8_3_lut (.A(frame_content[47]), .B(frame_content[15]), 
         .C(uart_frame_cnt[2]), .Z(n4124)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_59 (.A(n5281), .B(SW_P_N_869), .Z(n4_adj_1148)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_59.init = 16'h2222;
    LUT4 i1_2_lut_rep_48 (.A(n51_adj_1178), .B(n51), .Z(n7813)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[7:21])
    defparam i1_2_lut_rep_48.init = 16'h8888;
    LUT4 i2_3_lut_rep_41_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), .C(CLK_32M_c_enable_55), 
         .D(n96_adj_1174), .Z(n7806)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i2_3_lut_rep_41_4_lut.init = 16'hfff8;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n51_adj_1178), .B(n51), .C(n7848), .D(n7251), 
         .Z(n7323)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[7:21])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8880;
    LUT4 SW_N_I_25_4_lut (.A(comp_in_r), .B(SW_N_c), .C(n5281), .D(n7817), 
         .Z(SW_N_N_878)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(469[3] 473[7])
    defparam SW_N_I_25_4_lut.init = 16'h03a3;
    LUT4 i3_4_lut_adj_60 (.A(n5179), .B(n7335), .C(n6254), .D(n7350), 
         .Z(n5281)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(474[7:19])
    defparam i3_4_lut_adj_60.init = 16'hffef;
    LUT4 i4353_3_lut_3_lut (.A(n7844), .B(n7843), .C(n7816), .Z(CLK_32M_c_enable_243)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i4353_3_lut_3_lut.init = 16'h0202;
    LUT4 i929_3_lut_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(SW_P_N_869), 
         .C(n5239), .D(cnt_msm[10]), .Z(n4007)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i929_3_lut_4_lut_4_lut.init = 16'h7775;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n7842), .B(n7843), .C(n7828), .D(DEBUG_TP2_c_1), 
         .Z(CLK_32M_c_enable_260)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfbbb;
    LUT4 i4212_3_lut (.A(frame_content[31]), .B(frame_content[23]), .C(uart_frame_cnt[0]), 
         .Z(n7458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4212_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n7835), .B(con_start_r), .C(n7843), 
         .D(n7816), .Z(n25_adj_1172)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(C+(D))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h888f;
    LUT4 mux_995_i6_3_lut (.A(frame_content[45]), .B(frame_content[13]), 
         .C(uart_frame_cnt[2]), .Z(n4126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i6_3_lut.init = 16'hcaca;
    LUT4 i3040_4_lut_4_lut (.A(n7842), .B(n7830), .C(n7820), .D(n15_adj_1134), 
         .Z(n6_adj_1133)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i3040_4_lut_4_lut.init = 16'h7040;
    LUT4 i2463_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(n5281), .C(n7817), 
         .D(CLK_32M_c_enable_248), .Z(n5643)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i2463_4_lut_4_lut.init = 16'hd500;
    LUT4 i4392_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(n4_adj_1148), .C(n7318), 
         .D(n7817), .Z(CLK_32M_c_enable_248)) /* synthesis lut_function=(!(A (B (C (D)))+!A (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i4392_4_lut_4_lut.init = 16'h2faf;
    LUT4 i1523_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[4]), 
         .D(uart_rx_frame[21]), .Z(dac_word_15__N_338)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1523_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1519_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[6]), 
         .D(uart_rx_frame[23]), .Z(dac_word_15__N_332)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1519_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1521_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[5]), 
         .D(uart_rx_frame[22]), .Z(dac_word_15__N_335)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1521_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1505_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[13]), 
         .D(uart_rx_frame[30]), .Z(dac_word_15__N_311)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1505_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1517_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[7]), 
         .D(uart_rx_frame[24]), .Z(dac_word_15__N_329)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1517_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1507_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[12]), 
         .D(uart_rx_frame[29]), .Z(dac_word_15__N_314)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1507_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1509_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[11]), 
         .D(uart_rx_frame[28]), .Z(dac_word_15__N_317)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1509_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1515_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[8]), 
         .D(uart_rx_frame[25]), .Z(dac_word_15__N_326)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1515_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1503_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[14]), 
         .D(uart_rx_frame[31]), .Z(dac_word_15__N_306)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1503_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1513_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[9]), 
         .D(uart_rx_frame[26]), .Z(dac_word_15__N_323)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1513_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1511_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[10]), 
         .D(uart_rx_frame[27]), .Z(dac_word_15__N_320)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1511_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1525_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[3]), 
         .D(uart_rx_frame[20]), .Z(dac_word_15__N_341)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1525_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1527_3_lut_4_lut (.A(JA_SCK_N_904), .B(n7830), .C(dac_word[2]), 
         .D(uart_rx_frame[19]), .Z(dac_word_15__N_344)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(222[2] 245[6])
    defparam i1527_3_lut_4_lut.init = 16'hfd20;
    LUT4 i7_4_lut (.A(n13_adj_1120), .B(dac_cnt[3]), .C(n12_adj_1121), 
         .D(dac_cnt[5]), .Z(n15_adj_1134)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(235[7:18])
    defparam i7_4_lut.init = 16'hfeff;
    LUT4 i4270_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(n7817), .C(n7318), 
         .D(SW_P_N_869), .Z(CLK_32M_c_enable_203)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(C)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i4270_4_lut_4_lut.init = 16'haf2f;
    LUT4 i5_4_lut_adj_61 (.A(JA_SCK_N_904), .B(dac_cnt[2]), .C(dac_cnt[6]), 
         .D(dac_cnt[4]), .Z(n13_adj_1120)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(235[7:18])
    defparam i5_4_lut_adj_61.init = 16'hfffe;
    LUT4 i1_2_lut_rep_47_3_lut_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(comp_in_r), 
         .C(n7341), .D(cnt_msm[0]), .Z(n7812)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i1_2_lut_rep_47_3_lut_4_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_rep_45_3_lut_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(comp_in_r), 
         .C(n7341), .D(cnt_msm[0]), .Z(n7810)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i1_2_lut_rep_45_3_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(CLK_32M_c_enable_54), .B(cal_en), 
         .C(n7341), .D(cnt_msm[0]), .Z(SW_IN_N_885)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i11_3_lut (.A(uart_rx_frame[6]), .B(uart_rx_frame[5]), .C(uart_rx_frame[7]), 
         .Z(n3830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(354[5] 363[13])
    defparam i11_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut (.A(dac_cnt[1]), .B(dac_cnt[7]), .Z(n12_adj_1121)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(235[7:18])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_62 (.A(main_state[2]), .B(main_state[0]), .C(n7848), 
         .D(n5261), .Z(n5_adj_1161)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i1_2_lut_4_lut_adj_62.init = 16'hfffe;
    LUT4 i2944_4_lut_else_3_lut (.A(dac_state[2]), .B(dac_state[1]), .C(n15_adj_1134), 
         .Z(n7869)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam i2944_4_lut_else_3_lut.init = 16'h4040;
    LUT4 i3318_1_lut (.A(DEBUG_TP1_c_0), .Z(n6480)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(193[16:29])
    defparam i3318_1_lut.init = 16'h5555;
    CCU2D spi_cnt_1170_add_4_7 (.A0(n7816), .B0(n7843), .C0(n7826), .D0(spi_cnt[5]), 
          .A1(n7816), .B1(n7843), .C1(n7826), .D1(spi_cnt[6]), .CIN(n6816), 
          .S0(n35_adj_1141), .S1(n34_adj_1142));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170_add_4_7.INIT0 = 16'hf100;
    defparam spi_cnt_1170_add_4_7.INIT1 = 16'hf100;
    defparam spi_cnt_1170_add_4_7.INJECT1_0 = "NO";
    defparam spi_cnt_1170_add_4_7.INJECT1_1 = "NO";
    CCU2D spi_cnt_1170_add_4_5 (.A0(n7816), .B0(n7843), .C0(n7826), .D0(spi_cnt[3]), 
          .A1(n7816), .B1(n7843), .C1(n7826), .D1(spi_cnt[4]), .CIN(n6815), 
          .COUT(n6816), .S0(n37_adj_1139), .S1(n36_adj_1140));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170_add_4_5.INIT0 = 16'hf100;
    defparam spi_cnt_1170_add_4_5.INIT1 = 16'hf100;
    defparam spi_cnt_1170_add_4_5.INJECT1_0 = "NO";
    defparam spi_cnt_1170_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(dac_state[0]), .B(n7849), .C(dac_update), 
         .D(JA_SCK_N_904), .Z(CLK_32M_c_enable_229)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(246[6:18])
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'hf1f0;
    LUT4 i4332_2_lut (.A(uart_rx_state[1]), .B(uart_rx_state[0]), .Z(uart_rx_state_2__N_470[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam i4332_2_lut.init = 16'h4444;
    LUT4 mux_983_i7_3_lut (.A(frame_content[38]), .B(frame_content[6]), 
         .C(uart_frame_cnt[2]), .Z(n4097)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i7_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_64 (.A(cnt_msm[10]), .B(main_state[0]), .C(main_state[2]), 
         .D(n5239), .Z(n7251)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i3_4_lut_adj_64.init = 16'hffdf;
    CCU2D spi_cnt_1170_add_4_3 (.A0(n7816), .B0(n7843), .C0(n7826), .D0(spi_cnt[1]), 
          .A1(n7816), .B1(n7843), .C1(n7826), .D1(spi_cnt[2]), .CIN(n6814), 
          .COUT(n6815), .S0(n39_adj_1137), .S1(n38_adj_1138));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170_add_4_3.INIT0 = 16'hf100;
    defparam spi_cnt_1170_add_4_3.INIT1 = 16'hf100;
    defparam spi_cnt_1170_add_4_3.INJECT1_0 = "NO";
    defparam spi_cnt_1170_add_4_3.INJECT1_1 = "NO";
    CCU2D spi_cnt_1170_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n7843), .B1(n7816), .C1(n25_adj_1172), .D1(spi_cnt[0]), 
          .COUT(n6814), .S1(n40_adj_1136));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[3] 376[7])
    defparam spi_cnt_1170_add_4_1.INIT0 = 16'hF000;
    defparam spi_cnt_1170_add_4_1.INIT1 = 16'he111;
    defparam spi_cnt_1170_add_4_1.INJECT1_0 = "NO";
    defparam spi_cnt_1170_add_4_1.INJECT1_1 = "NO";
    LUT4 i3_2_lut_4_lut (.A(cnt_msm[10]), .B(n5185), .C(n7851), .D(n7335), 
         .Z(n9_adj_1167)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_2_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[0]), .C(uart_tx_state[1]), 
         .Z(uart_tx_bit_clock_enable_68)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut.init = 16'h1414;
    CCU2D add_546_21 (.A0(cnt_ic[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6812), .S0(n3645), .S1(n3644));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_21.INIT0 = 16'h5aaa;
    defparam add_546_21.INIT1 = 16'h5aaa;
    defparam add_546_21.INJECT1_0 = "NO";
    defparam add_546_21.INJECT1_1 = "NO";
    CCU2D add_546_19 (.A0(cnt_ic[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6811), .COUT(n6812), .S0(n3647), .S1(n3646));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_19.INIT0 = 16'h5aaa;
    defparam add_546_19.INIT1 = 16'h5aaa;
    defparam add_546_19.INJECT1_0 = "NO";
    defparam add_546_19.INJECT1_1 = "NO";
    CCU2D add_546_17 (.A0(cnt_ic[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6810), .COUT(n6811), .S0(n3649), .S1(n3648));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_17.INIT0 = 16'h5aaa;
    defparam add_546_17.INIT1 = 16'h5aaa;
    defparam add_546_17.INJECT1_0 = "NO";
    defparam add_546_17.INJECT1_1 = "NO";
    CCU2D add_546_15 (.A0(cnt_ic[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6809), .COUT(n6810), .S0(n3651), .S1(n3650));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_15.INIT0 = 16'h5aaa;
    defparam add_546_15.INIT1 = 16'h5aaa;
    defparam add_546_15.INJECT1_0 = "NO";
    defparam add_546_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_65 (.A(CLK_32M_c_enable_258), .B(DEBUG_TP3_c_2), 
         .C(DEBUG_TP2_c_1), .D(DEBUG_TP1_c_0), .Z(CLK_32M_c_enable_152)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_65.init = 16'h0002;
    FD1S3IX cnt_msm_1153__i1 (.D(n109_adj_1098), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_66 (.A(CLK_32M_c_enable_258), .B(DEBUG_TP3_c_2), 
         .C(DEBUG_TP2_c_1), .D(DEBUG_TP1_c_0), .Z(CLK_32M_c_enable_137)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_66.init = 16'h0020;
    LUT4 i3_4_lut_adj_67 (.A(n6254), .B(cnt_msm[7]), .C(n5106), .D(n7429), 
         .Z(n5239)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_4_lut_adj_67.init = 16'hf7ff;
    LUT4 i4184_2_lut (.A(cnt_msm[3]), .B(cnt_msm[2]), .Z(n7429)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4184_2_lut.init = 16'h8888;
    LUT4 i3076_2_lut (.A(cnt_msm[0]), .B(cnt_msm[6]), .Z(n6254)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3076_2_lut.init = 16'h8888;
    LUT4 uart_rx_state_0__bdd_3_lut (.A(uart_rx_state[0]), .B(uart_rx_ready), 
         .C(uart_rx_state[1]), .Z(n7760)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;
    defparam uart_rx_state_0__bdd_3_lut.init = 16'h1a1a;
    LUT4 i1416_1_lut (.A(uart_rx_frame[6]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(364[5] 373[13])
    defparam i1416_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_50 (.A(cnt_msm[10]), .B(n5239), .Z(n7815)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(474[7:19])
    defparam i1_2_lut_rep_50.init = 16'heeee;
    LUT4 n5021_bdd_4_lut (.A(n5021), .B(uart_frame_state[1]), .C(uart_busy), 
         .D(uart_frame_state[0]), .Z(uart_frame_state_2__N_134[1])) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n5021_bdd_4_lut.init = 16'h0100;
    LUT4 i4218_3_lut (.A(frame_content[29]), .B(frame_content[21]), .C(uart_frame_cnt[0]), 
         .Z(n7464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4218_3_lut.init = 16'hcaca;
    LUT4 i4418_4_lut (.A(uart_frame_state[0]), .B(uart_frame_state[1]), 
         .C(n6076), .D(uart_frame_cnt[3]), .Z(uart_tx_bit_clock_enable_19)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4418_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_63_3_lut (.A(CLK_32M_c_enable_258), .B(DEBUG_TP3_c_2), 
         .C(DEBUG_TP1_c_0), .Z(n7828)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_rep_63_3_lut.init = 16'h2020;
    CCU2D add_546_13 (.A0(cnt_ic[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6808), .COUT(n6809), .S0(n3653), .S1(n3652));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_13.INIT0 = 16'h5aaa;
    defparam add_546_13.INIT1 = 16'h5aaa;
    defparam add_546_13.INJECT1_0 = "NO";
    defparam add_546_13.INJECT1_1 = "NO";
    LUT4 i842_2_lut_3_lut (.A(cnt_msm[10]), .B(n5239), .C(SW_P_N_869), 
         .Z(n3916)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(474[7:19])
    defparam i842_2_lut_3_lut.init = 16'hf1f1;
    FD1S3IX cnt_msm_1153__i2 (.D(n108_adj_1099), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i2.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i3 (.D(n107_adj_1100), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i3.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i4 (.D(n106_adj_1101), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i4.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i5 (.D(n105_adj_1102), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i5.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i6 (.D(n104_adj_1103), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i6.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i7 (.D(n103_adj_1104), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i7.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i8 (.D(n102_adj_1105), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i8.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i9 (.D(n101_adj_1106), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i9.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i10 (.D(n100_adj_1107), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i10.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i11 (.D(n99_adj_1108), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i11.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i12 (.D(n98_adj_1109), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i12.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i13 (.D(n97_adj_1110), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i13.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i14 (.D(n96_adj_1111), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i14.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i15 (.D(n95_adj_1112), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i15.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i16 (.D(n94_adj_1113), .CK(CLK_32M_c), .CD(n3921), 
            .Q(cnt_msm[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i16.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i17 (.D(n93), .CK(CLK_32M_c), .CD(n3921), .Q(cnt_msm[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i17.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i18 (.D(n92), .CK(CLK_32M_c), .CD(n3921), .Q(cnt_msm[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i18.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i19 (.D(n91), .CK(CLK_32M_c), .CD(n3921), .Q(cnt_msm[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i19.GSR = "ENABLED";
    FD1S3IX cnt_msm_1153__i20 (.D(n90), .CK(CLK_32M_c), .CD(n3921), .Q(cnt_msm[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(270[13:24])
    defparam cnt_msm_1153__i20.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(CLK_32M_c_enable_258), .B(DEBUG_TP3_c_2), 
         .C(DEBUG_TP2_c_1), .D(DEBUG_TP1_c_0), .Z(CLK_32M_c_enable_129)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_68 (.A(CLK_32M_c_enable_258), .B(DEBUG_TP3_c_2), 
         .C(DEBUG_TP2_c_1), .D(DEBUG_TP1_c_0), .Z(CLK_32M_c_enable_145)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_68.init = 16'h0200;
    LUT4 SW_P_I_22_4_lut (.A(comp_in_r), .B(SW_P_c), .C(n5281), .D(n7817), 
         .Z(SW_P_N_866)) /* synthesis lut_function=(!(A (B+(C))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(469[3] 473[7])
    defparam SW_P_I_22_4_lut.init = 16'h0353;
    CCU2D add_546_11 (.A0(cnt_ic[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6807), .COUT(n6808), .S0(n3655), .S1(n3654));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_11.INIT0 = 16'h5aaa;
    defparam add_546_11.INIT1 = 16'h5aaa;
    defparam add_546_11.INJECT1_0 = "NO";
    defparam add_546_11.INJECT1_1 = "NO";
    LUT4 i4301_4_lut_rep_79 (.A(spi_cnt[6]), .B(n12_adj_1159), .C(spi_cnt[1]), 
         .D(spi_cnt[5]), .Z(n7844)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i4301_4_lut_rep_79.init = 16'h0100;
    CCU2D add_546_9 (.A0(cnt_ic[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6806), .COUT(n6807), .S0(n3657), .S1(n3656));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_9.INIT0 = 16'h5aaa;
    defparam add_546_9.INIT1 = 16'h5aaa;
    defparam add_546_9.INJECT1_0 = "NO";
    defparam add_546_9.INJECT1_1 = "NO";
    CCU2D add_546_7 (.A0(cnt_ic[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6805), .COUT(n6806), .S0(n3659), .S1(n3658));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_7.INIT0 = 16'h5aaa;
    defparam add_546_7.INIT1 = 16'h5aaa;
    defparam add_546_7.INJECT1_0 = "NO";
    defparam add_546_7.INJECT1_1 = "NO";
    LUT4 i2898_2_lut (.A(uart_frame_cnt[2]), .B(uart_frame_cnt[1]), .Z(n6076)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2898_2_lut.init = 16'h8888;
    LUT4 FEN_B_I_0_1_lut (.A(FEN_B_c_14), .Z(FEN_C_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(545[17:35])
    defparam FEN_B_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), .C(n40_adj_1162), 
         .D(n7808), .Z(n1690)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i1_3_lut_4_lut.init = 16'hf800;
    LUT4 RE3_I_0_1_lut (.A(RE3_c_4), .Z(RE4_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(538[15:32])
    defparam RE3_I_0_1_lut.init = 16'h5555;
    LUT4 mux_995_i7_3_lut (.A(frame_content[46]), .B(frame_content[14]), 
         .C(uart_frame_cnt[2]), .Z(n4125)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i7_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(uart_frame_state[1]), .B(uart_frame_state[0]), .C(uart_busy), 
         .Z(uart_frame_state_2__N_134[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(595[7] 613[6])
    defparam i2_3_lut.init = 16'h1010;
    CCU2D add_7_21 (.A0(startup_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6784), .COUT(n6785), .S0(n21), .S1(n20));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_21.INIT0 = 16'h5aaa;
    defparam add_7_21.INIT1 = 16'h5aaa;
    defparam add_7_21.INJECT1_0 = "NO";
    defparam add_7_21.INJECT1_1 = "NO";
    LUT4 i12_3_lut (.A(uart_frame_state[0]), .B(uart_tx_start), .C(uart_frame_state[1]), 
         .Z(n7193)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(563[8] 614[5])
    defparam i12_3_lut.init = 16'hc5c5;
    LUT4 i4196_2_lut_rep_61_3_lut (.A(main_state[0]), .B(n7866), .C(con_start_r), 
         .Z(n7826)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i4196_2_lut_rep_61_3_lut.init = 16'he0e0;
    CCU2D cnt_ic_20__I_0_17 (.A0(cnt_ic_set[12]), .B0(cnt_ic[12]), .C0(cnt_ic_set[11]), 
          .D0(cnt_ic[11]), .A1(cnt_ic_set[9]), .B1(cnt_ic[9]), .C1(cnt_ic_set[8]), 
          .D1(cnt_ic[8]), .CIN(n6612), .COUT(n6613));
    defparam cnt_ic_20__I_0_17.INIT0 = 16'h9009;
    defparam cnt_ic_20__I_0_17.INIT1 = 16'h9009;
    defparam cnt_ic_20__I_0_17.INJECT1_0 = "YES";
    defparam cnt_ic_20__I_0_17.INJECT1_1 = "YES";
    LUT4 i1_2_lut_3_lut_3_lut (.A(n7816), .B(n96_adj_1174), .C(n7843), 
         .Z(n5)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hcdcd;
    LUT4 i1_2_lut_3_lut_adj_69 (.A(main_state[0]), .B(n7866), .C(con_start_r), 
         .Z(n40_adj_1162)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_69.init = 16'h1010;
    CCU2D add_546_5 (.A0(cnt_ic[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6804), .COUT(n6805), .S0(n3661), .S1(n3660));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_5.INIT0 = 16'h5aaa;
    defparam add_546_5.INIT1 = 16'h5aaa;
    defparam add_546_5.INJECT1_0 = "NO";
    defparam add_546_5.INJECT1_1 = "NO";
    LUT4 i4221_3_lut (.A(frame_content[26]), .B(frame_content[18]), .C(uart_frame_cnt[0]), 
         .Z(n7467)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4221_3_lut.init = 16'hcaca;
    LUT4 i4296_4_lut (.A(n7267), .B(reset_in_r), .C(n5097), .D(n7310), 
         .Z(CLK_32M_c_enable_93)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam i4296_4_lut.init = 16'h373f;
    CCU2D add_546_3 (.A0(cnt_ic[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6803), .COUT(n6804), .S0(n3663), .S1(n3662));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_3.INIT0 = 16'h5aaa;
    defparam add_546_3.INIT1 = 16'h5aaa;
    defparam add_546_3.INJECT1_0 = "NO";
    defparam add_546_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_70 (.A(n6350), .B(n7265), .C(n7325), .D(n7344), 
         .Z(n7267)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_70.init = 16'hfcec;
    LUT4 mux_983_i2_3_lut (.A(frame_content[33]), .B(frame_content[1]), 
         .C(uart_frame_cnt[2]), .Z(n4102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i2_3_lut.init = 16'hcaca;
    LUT4 i3170_4_lut (.A(n6344), .B(startup_cnt[19]), .C(startup_cnt[18]), 
         .D(n7280), .Z(n6350)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3170_4_lut.init = 16'hc8c0;
    LUT4 mux_995_i2_3_lut (.A(frame_content[41]), .B(frame_content[9]), 
         .C(uart_frame_cnt[2]), .Z(n4130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i2_3_lut.init = 16'hcaca;
    LUT4 mux_250_i1_3_lut (.A(cal_en), .B(n1693), .C(n51_adj_1178), .Z(n1759)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(391[3] 398[7])
    defparam mux_250_i1_3_lut.init = 16'hc5c5;
    LUT4 i2545_2_lut_3_lut_4_lut_4_lut (.A(n7816), .B(n7844), .C(uart_rx_frame[7]), 
         .D(n7843), .Z(n5725)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i2545_2_lut_3_lut_4_lut_4_lut.init = 16'h0040;
    CCU2D add_546_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_ic[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n6803), .S1(n3664));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(476[14:24])
    defparam add_546_1.INIT0 = 16'hF000;
    defparam add_546_1.INIT1 = 16'h5555;
    defparam add_546_1.INJECT1_0 = "NO";
    defparam add_546_1.INJECT1_1 = "NO";
    LUT4 i3164_4_lut (.A(n6308), .B(startup_cnt[14]), .C(startup_cnt[13]), 
         .D(startup_cnt[12]), .Z(n6344)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i3164_4_lut.init = 16'hfcec;
    LUT4 i3128_4_lut (.A(startup_cnt[6]), .B(startup_cnt[11]), .C(n10_adj_1168), 
         .D(startup_cnt[7]), .Z(n6308)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i3128_4_lut.init = 16'hccc8;
    LUT4 i4_4_lut_adj_71 (.A(startup_cnt[5]), .B(startup_cnt[10]), .C(startup_cnt[9]), 
         .D(startup_cnt[8]), .Z(n10_adj_1168)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_71.init = 16'hfffe;
    CCU2D dac_div_1155_add_4_17 (.A0(dac_div[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6802), .S0(n70));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_17.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_17.INIT1 = 16'h0000;
    defparam dac_div_1155_add_4_17.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_17.INJECT1_1 = "NO";
    LUT4 i1013_1_lut (.A(reset_in_r), .Z(startup_cnt_32__N_436)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(135[8] 160[4])
    defparam i1013_1_lut.init = 16'h5555;
    CCU2D dac_div_1155_add_4_15 (.A0(dac_div[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6801), .COUT(n6802), .S0(n72), .S1(n71));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_15.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_15.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_15.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_72 (.A(startup_cnt[16]), .B(startup_cnt[15]), .C(startup_cnt[17]), 
         .Z(n7280)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_72.init = 16'h8080;
    LUT4 i4215_3_lut (.A(frame_content[30]), .B(frame_content[22]), .C(uart_frame_cnt[0]), 
         .Z(n7461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4215_3_lut.init = 16'hcaca;
    CCU2D dac_div_1155_add_4_13 (.A0(dac_div[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6800), .COUT(n6801), .S0(n74), .S1(n73));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_13.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_13.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_13.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_13.INJECT1_1 = "NO";
    CCU2D dac_div_1155_add_4_11 (.A0(dac_div[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6799), .COUT(n6800), .S0(n76), .S1(n75));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_11.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_11.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_11.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_11.INJECT1_1 = "NO";
    CCU2D dac_div_1155_add_4_9 (.A0(dac_div[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6798), .COUT(n6799), .S0(n78), .S1(n77));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_9.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_9.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_9.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_9.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_73 (.A(n9_adj_1167), .B(n5252), .C(n8_adj_1173), 
         .D(cnt_msm[5]), .Z(n51_adj_1178)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_73.init = 16'hfffe;
    CCU2D add_7_19 (.A0(startup_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6783), .COUT(n6784), .S0(n23), .S1(n22));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_19.INIT0 = 16'h5aaa;
    defparam add_7_19.INIT1 = 16'h5aaa;
    defparam add_7_19.INJECT1_0 = "NO";
    defparam add_7_19.INJECT1_1 = "NO";
    CCU2D dac_div_1155_add_4_7 (.A0(dac_div[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6797), .COUT(n6798), .S0(n80), .S1(n79));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_7.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_7.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_7.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_74 (.A(startup_cnt[25]), .B(startup_cnt[24]), .C(startup_cnt[26]), 
         .Z(n7265)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_74.init = 16'hfefe;
    FD1P3IX cnt_ic_neg_1159__i3 (.D(n107_adj_1125), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i3.GSR = "ENABLED";
    LUT4 mux_983_i6_3_lut (.A(frame_content[37]), .B(frame_content[5]), 
         .C(uart_frame_cnt[2]), .Z(n4098)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i6_3_lut.init = 16'hcaca;
    LUT4 i2547_2_lut_3_lut_4_lut_4_lut (.A(n7816), .B(n7844), .C(uart_rx_frame[6]), 
         .D(n7843), .Z(n5727)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i2547_2_lut_3_lut_4_lut_4_lut.init = 16'h0040;
    CCU2D dac_div_1155_add_4_5 (.A0(dac_div[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6796), .COUT(n6797), .S0(n82), .S1(n81));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_5.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_5.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_5.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cnt_ic_neg_1159__i9 (.D(n101_adj_1158), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i9.GSR = "ENABLED";
    CCU2D dac_div_1155_add_4_3 (.A0(dac_div[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6795), .COUT(n6796), .S0(n84), .S1(n83));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_3.INIT0 = 16'h0555;
    defparam dac_div_1155_add_4_3.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_3.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_3.INJECT1_1 = "NO";
    FD1P3IX cnt_ic_neg_1159__i4 (.D(n106_adj_1143), .SP(CLK_32M_c_enable_256), 
            .CD(n5679), .CK(CLK_32M_c), .Q(cnt_ic_neg[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(460[17:29])
    defparam cnt_ic_neg_1159__i4.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i13 (.D(n7862), .SP(CLK_32M_c_enable_265), .CD(n5722), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[13]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i13.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_75 (.A(startup_cnt[22]), .B(startup_cnt[23]), .Z(n7325)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_75.init = 16'h8888;
    LUT4 i1_2_lut_adj_76 (.A(startup_cnt[21]), .B(startup_cnt[20]), .Z(n7344)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_76.init = 16'heeee;
    LUT4 i3_4_lut_adj_77 (.A(startup_cnt[32]), .B(startup_cnt[31]), .C(startup_cnt[30]), 
         .D(startup_cnt[29]), .Z(n5097)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_77.init = 16'hfffe;
    LUT4 i2_4_lut_adj_78 (.A(n7274), .B(cnt_msm[13]), .C(n7423), .D(cnt_msm[11]), 
         .Z(n8_adj_1173)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i2_4_lut_adj_78.init = 16'hbfff;
    LUT4 i4224_3_lut (.A(frame_content[25]), .B(frame_content[17]), .C(uart_frame_cnt[0]), 
         .Z(n7470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4224_3_lut.init = 16'hcaca;
    CCU2D dac_div_1155_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(dac_div[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6795), .S1(n85));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(248[12:21])
    defparam dac_div_1155_add_4_1.INIT0 = 16'hF000;
    defparam dac_div_1155_add_4_1.INIT1 = 16'h0555;
    defparam dac_div_1155_add_4_1.INJECT1_0 = "NO";
    defparam dac_div_1155_add_4_1.INJECT1_1 = "NO";
    FD1P3IX uart_rx_state__i0 (.D(n8046), .SP(CLK_32M_c_enable_258), .CD(n7760), 
            .CK(CLK_32M_c), .Q(uart_rx_state[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam uart_rx_state__i0.GSR = "ENABLED";
    CCU2D uart_prediv_1156_add_4_7 (.A0(uart_prediv[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n6794), .S0(n30_adj_1131));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156_add_4_7.INIT0 = 16'hfaaa;
    defparam uart_prediv_1156_add_4_7.INIT1 = 16'h0000;
    defparam uart_prediv_1156_add_4_7.INJECT1_0 = "NO";
    defparam uart_prediv_1156_add_4_7.INJECT1_1 = "NO";
    LUT4 mux_983_i5_3_lut (.A(frame_content[36]), .B(frame_content[4]), 
         .C(uart_frame_cnt[2]), .Z(n4099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i5_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_79 (.A(startup_cnt[27]), .B(startup_cnt[28]), .Z(n7310)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_79.init = 16'h8888;
    CCU2D uart_prediv_1156_add_4_5 (.A0(uart_prediv[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(uart_prediv[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6793), .COUT(n6794), .S0(n32_adj_1129), 
          .S1(n31_adj_1130));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156_add_4_5.INIT0 = 16'hfaaa;
    defparam uart_prediv_1156_add_4_5.INIT1 = 16'hfaaa;
    defparam uart_prediv_1156_add_4_5.INJECT1_0 = "NO";
    defparam uart_prediv_1156_add_4_5.INJECT1_1 = "NO";
    LUT4 i4178_2_lut (.A(cnt_msm[12]), .B(cnt_msm[9]), .Z(n7423)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4178_2_lut.init = 16'h8888;
    CCU2D uart_prediv_1156_add_4_3 (.A0(uart_prediv[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(uart_prediv[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6792), .COUT(n6793), .S0(n34_adj_1127), 
          .S1(n33_adj_1128));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156_add_4_3.INIT0 = 16'hfaaa;
    defparam uart_prediv_1156_add_4_3.INIT1 = 16'hfaaa;
    defparam uart_prediv_1156_add_4_3.INJECT1_0 = "NO";
    defparam uart_prediv_1156_add_4_3.INJECT1_1 = "NO";
    LUT4 i4399_2_lut_3_lut_4_lut_4_lut (.A(n7816), .B(n7844), .C(uart_rx_frame[5]), 
         .D(n7843), .Z(n6180)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i4399_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    CCU2D uart_prediv_1156_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(uart_prediv[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n6792), .S1(n35_adj_1126));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(271[17:32])
    defparam uart_prediv_1156_add_4_1.INIT0 = 16'hF000;
    defparam uart_prediv_1156_add_4_1.INIT1 = 16'h0555;
    defparam uart_prediv_1156_add_4_1.INJECT1_0 = "NO";
    defparam uart_prediv_1156_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_995_i5_3_lut (.A(frame_content[44]), .B(frame_content[12]), 
         .C(uart_frame_cnt[2]), .Z(n4127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i5_3_lut.init = 16'hcaca;
    CCU2D add_7_33 (.A0(startup_cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[32]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6790), .S0(n9), .S1(n8));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_33.INIT0 = 16'h5aaa;
    defparam add_7_33.INIT1 = 16'h5aaa;
    defparam add_7_33.INJECT1_0 = "NO";
    defparam add_7_33.INJECT1_1 = "NO";
    LUT4 i4227_3_lut (.A(frame_content[28]), .B(frame_content[20]), .C(uart_frame_cnt[0]), 
         .Z(n7473)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4227_3_lut.init = 16'hcaca;
    LUT4 mux_983_i4_3_lut (.A(frame_content[35]), .B(frame_content[3]), 
         .C(uart_frame_cnt[2]), .Z(n4100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i4_3_lut.init = 16'hcaca;
    LUT4 i2456_2_lut_3_lut_4_lut_4_lut (.A(n7816), .B(n7844), .C(uart_rx_frame[5]), 
         .D(n7843), .Z(n5636)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i2456_2_lut_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 mux_995_i4_3_lut (.A(frame_content[43]), .B(frame_content[11]), 
         .C(uart_frame_cnt[2]), .Z(n4128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i4_3_lut.init = 16'hcaca;
    LUT4 i4206_3_lut (.A(frame_content[27]), .B(frame_content[19]), .C(uart_frame_cnt[0]), 
         .Z(n7452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4206_3_lut.init = 16'hcaca;
    LUT4 i2514_2_lut_3_lut_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), .C(n7810), 
         .D(con_start_r), .Z(n5679)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i2514_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i4247_3_lut (.A(n4127), .B(n4099), .C(uart_frame_cnt[0]), .Z(n7472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4247_3_lut.init = 16'hcaca;
    LUT4 i15_4_lut (.A(n17_adj_1091), .B(n30_adj_1175), .C(n26_adj_1177), 
         .D(n18_adj_1090), .Z(n5226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i15_4_lut.init = 16'hfffe;
    FD1P3IX cnt_ic_pos_1160__i16 (.D(n94), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i16.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_80 (.A(dac_div[0]), .B(dac_div[13]), .Z(n17_adj_1091)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i1_2_lut_adj_80.init = 16'heeee;
    LUT4 i14_4_lut (.A(dac_div[3]), .B(n28_adj_1176), .C(n22_adj_1089), 
         .D(dac_div[7]), .Z(n30_adj_1175)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(dac_div[6]), .B(dac_div[9]), .C(dac_div[14]), .D(dac_div[12]), 
         .Z(n26_adj_1177)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i10_4_lut.init = 16'hfffe;
    FD1P3IX dac_update_439 (.D(CLK_32M_c_enable_129), .SP(CLK_32M_c_enable_260), 
            .CD(n7842), .CK(CLK_32M_c), .Q(dac_update));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam dac_update_439.GSR = "ENABLED";
    CCU2D add_7_31 (.A0(startup_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6789), .COUT(n6790), .S0(n11), .S1(n10));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_31.INIT0 = 16'h5aaa;
    defparam add_7_31.INIT1 = 16'h5aaa;
    defparam add_7_31.INJECT1_0 = "NO";
    defparam add_7_31.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(dac_div[8]), .B(dac_div[1]), .Z(n18_adj_1090)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX cnt_ic_pos_1160__i1 (.D(n109), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i1.GSR = "ENABLED";
    CCU2D add_7_29 (.A0(startup_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6788), .COUT(n6789), .S0(n13), .S1(n12));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_29.INIT0 = 16'h5aaa;
    defparam add_7_29.INIT1 = 16'h5aaa;
    defparam add_7_29.INJECT1_0 = "NO";
    defparam add_7_29.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(dac_div[10]), .B(dac_div[2]), .C(dac_div[4]), .D(dac_div[15]), 
         .Z(n28_adj_1176)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i4420_2_lut_3_lut_3_lut (.A(n7816), .B(spi_cnt[0]), .C(n7843), 
         .Z(CLK_32M_c_enable_25)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i4420_2_lut_3_lut_3_lut.init = 16'h0101;
    LUT4 i6_2_lut (.A(dac_div[11]), .B(dac_div[5]), .Z(n22_adj_1089)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(249[7:17])
    defparam i6_2_lut.init = 16'heeee;
    PFUMX i4207 (.BLUT(n7451), .ALUT(n7452), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[3]));
    LUT4 i3_4_lut_adj_81 (.A(n5_adj_1161), .B(n7397), .C(n7831), .D(n7421), 
         .Z(n51)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i3_4_lut_adj_81.init = 16'hfbff;
    PFUMX i4210 (.BLUT(n7454), .ALUT(n7455), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[0]));
    LUT4 i4370_2_lut_3_lut_3_lut_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), 
         .C(con_start_r), .D(n7810), .Z(CLK_32M_c_enable_256)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(C (D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i4370_2_lut_3_lut_3_lut_4_lut.init = 16'h8fff;
    LUT4 i4382_2_lut (.A(uart_rx_frame[6]), .B(uart_rx_frame[7]), .Z(cal_en_N_941)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4382_2_lut.init = 16'h1111;
    LUT4 i1_3_lut_adj_82 (.A(LED_c), .B(cnt_msm[0]), .C(n7341), .Z(LED_N_858)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut_adj_82.init = 16'ha9a9;
    LUT4 i2_3_lut_adj_83 (.A(dac_state[0]), .B(dac_state[1]), .C(dac_state[2]), 
         .Z(CLK_32M_c_enable_57)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_83.init = 16'h0404;
    LUT4 i1_4_lut_adj_84 (.A(startup_cnt[27]), .B(n5097), .C(startup_cnt[28]), 
         .D(n4_adj_1163), .Z(SU_A_N_920)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_84.init = 16'hfcec;
    LUT4 i1_4_lut_adj_85 (.A(startup_cnt[26]), .B(startup_cnt[25]), .C(startup_cnt[24]), 
         .D(n6931), .Z(n4_adj_1163)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_85.init = 16'heaaa;
    FD1P3IX cnt_ic_pos_1160__i2 (.D(n108), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i2.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i14 (.D(uart_rx_frame[6]), .SP(CLK_32M_c_enable_265), 
            .CD(n5722), .CK(CLK_32M_c), .Q(cnt_ic_set[14]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i14.GSR = "ENABLED";
    FD1P3IX cnt_ic_pos_1160__i3 (.D(n107), .SP(CLK_32M_c_enable_264), .CD(n5651), 
            .CK(CLK_32M_c), .Q(cnt_ic_pos[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(466[17:29])
    defparam cnt_ic_pos_1160__i3.GSR = "ENABLED";
    FD1P3IX cnt_ic_set__i15 (.D(n5156), .SP(CLK_32M_c_enable_265), .CD(n6180), 
            .CK(CLK_32M_c), .Q(cnt_ic_set[15]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(262[8] 497[5])
    defparam cnt_ic_set__i15.GSR = "ENABLED";
    PFUMX i4213 (.BLUT(n7457), .ALUT(n7458), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[7]));
    LUT4 i3_4_lut_adj_86 (.A(n42_adj_1146), .B(startup_cnt[23]), .C(startup_cnt[22]), 
         .D(startup_cnt[21]), .Z(n6931)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_86.init = 16'hfffe;
    LUT4 i1392_4_lut (.A(startup_cnt[19]), .B(startup_cnt[20]), .C(startup_cnt[18]), 
         .D(n36_adj_1147), .Z(n42_adj_1146)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1392_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_87 (.A(n5), .B(n3916), .C(n7323), .D(CLK_32M_c_enable_54), 
         .Z(n3921)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(77[11:21])
    defparam i3_4_lut_adj_87.init = 16'hefaf;
    CCU2D add_7_27 (.A0(startup_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6787), .COUT(n6788), .S0(n15), .S1(n14));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_27.INIT0 = 16'h5aaa;
    defparam add_7_27.INIT1 = 16'h5aaa;
    defparam add_7_27.INJECT1_0 = "NO";
    defparam add_7_27.INJECT1_1 = "NO";
    LUT4 i1319_4_lut (.A(startup_cnt[15]), .B(startup_cnt[17]), .C(startup_cnt[16]), 
         .D(n4), .Z(n36_adj_1147)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1319_4_lut.init = 16'hc8c0;
    LUT4 uart_rx_state_2__N_470_1__bdd_2_lut_4_lut (.A(main_state[3]), .B(n7865), 
         .C(main_state[2]), .D(uart_rx_state_2__N_470[1]), .Z(n6493)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam uart_rx_state_2__N_470_1__bdd_2_lut_4_lut.init = 16'h0008;
    LUT4 i1_3_lut_adj_88 (.A(startup_cnt[14]), .B(startup_cnt[12]), .C(startup_cnt[13]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_88.init = 16'ha8a8;
    LUT4 i1_2_lut_3_lut_3_lut_adj_89 (.A(n7816), .B(spi_cnt[0]), .C(n7843), 
         .Z(CLK_32M_c_enable_51)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i1_2_lut_3_lut_3_lut_adj_89.init = 16'h0404;
    CCU2D add_7_25 (.A0(startup_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6786), .COUT(n6787), .S0(n17), .S1(n16));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_25.INIT0 = 16'h5aaa;
    defparam add_7_25.INIT1 = 16'h5aaa;
    defparam add_7_25.INJECT1_0 = "NO";
    defparam add_7_25.INJECT1_1 = "NO";
    LUT4 i4379_2_lut_rep_42_3_lut_3_lut (.A(n7816), .B(n7844), .C(n7843), 
         .Z(CLK_32M_c_enable_265)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i4379_2_lut_rep_42_3_lut_3_lut.init = 16'h0404;
    CCU2D add_7_23 (.A0(startup_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6785), .COUT(n6786), .S0(n19), .S1(n18));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_23.INIT0 = 16'h5aaa;
    defparam add_7_23.INIT1 = 16'h5aaa;
    defparam add_7_23.INJECT1_0 = "NO";
    defparam add_7_23.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_90 (.A(n7327), .B(n5097), .C(n7310), .D(n7265), 
         .Z(SU_B_N_922)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_90.init = 16'hfcec;
    CCU2D add_7_13 (.A0(startup_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6780), .COUT(n6781), .S0(n29), .S1(n28));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_13.INIT0 = 16'h5aaa;
    defparam add_7_13.INIT1 = 16'h5aaa;
    defparam add_7_13.INJECT1_0 = "NO";
    defparam add_7_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_91 (.A(n38_adj_1092), .B(n7325), .C(n7344), .D(startup_cnt[19]), 
         .Z(n7327)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_91.init = 16'hc8c0;
    LUT4 i4152_2_lut (.A(cnt_msm[14]), .B(cnt_msm[19]), .Z(n7397)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4152_2_lut.init = 16'h8888;
    LUT4 i1358_4_lut (.A(n28_adj_1093), .B(startup_cnt[18]), .C(n7280), 
         .D(startup_cnt[14]), .Z(n38_adj_1092)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1358_4_lut.init = 16'hfcec;
    LUT4 i1252_3_lut (.A(startup_cnt[11]), .B(startup_cnt[13]), .C(startup_cnt[12]), 
         .Z(n28_adj_1093)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1252_3_lut.init = 16'hc8c8;
    LUT4 i4401_2_lut_3_lut_4_lut_4_lut (.A(n7816), .B(n7844), .C(uart_rx_frame[7]), 
         .D(n7843), .Z(n5722)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(318[7:18])
    defparam i4401_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i4355_2_lut_2_lut_4_lut (.A(main_state[3]), .B(n7865), .C(main_state[2]), 
         .D(uart_rx_state_2__N_470[1]), .Z(CLK_32M_c_enable_238)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i4355_2_lut_2_lut_4_lut.init = 16'hff08;
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(main_state[0]), .B(n7866), .C(n51), 
         .D(SW_P_N_869), .Z(n4_adj_1132)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'hd0f0;
    LUT4 i849_2_lut_rep_44_3_lut (.A(main_state[0]), .B(n7866), .C(SW_P_N_869), 
         .Z(CLK_32M_c_enable_55)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(412[6:19])
    defparam i849_2_lut_rep_44_3_lut.init = 16'h2020;
    LUT4 i4176_2_lut (.A(cnt_msm[15]), .B(cnt_msm[16]), .Z(n7421)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4176_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_93 (.A(main_state[3]), .B(n7865), .C(main_state[2]), 
         .D(con_start_r), .Z(n7318)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i1_2_lut_4_lut_adj_93.init = 16'hf700;
    LUT4 i4249_3_lut (.A(n4130), .B(n4102), .C(uart_frame_cnt[0]), .Z(n7469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4249_3_lut.init = 16'hcaca;
    LUT4 mux_983_i3_3_lut (.A(frame_content[34]), .B(frame_content[2]), 
         .C(uart_frame_cnt[2]), .Z(n4101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_983_i3_3_lut.init = 16'hcaca;
    CCU2D add_7_17 (.A0(startup_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(startup_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n6782), .COUT(n6783), .S0(n25), .S1(n24));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(155[17:30])
    defparam add_7_17.INIT0 = 16'h5aaa;
    defparam add_7_17.INIT1 = 16'h5aaa;
    defparam add_7_17.INJECT1_0 = "NO";
    defparam add_7_17.INJECT1_1 = "NO";
    LUT4 i3606_3_lut_4_lut (.A(uart_frame_cnt[1]), .B(uart_frame_cnt[0]), 
         .C(uart_frame_cnt[2]), .D(uart_frame_cnt[3]), .Z(n22_adj_1117)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam i3606_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3599_2_lut_3_lut (.A(uart_frame_cnt[1]), .B(uart_frame_cnt[0]), 
         .C(uart_frame_cnt[2]), .Z(n23_adj_1116)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam i3599_2_lut_3_lut.init = 16'h7878;
    LUT4 i2944_4_lut_then_3_lut (.A(n5226), .B(dac_state[2]), .C(dac_state[1]), 
         .Z(n7870)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(162[8] 259[4])
    defparam i2944_4_lut_then_3_lut.init = 16'h1313;
    LUT4 i4284_2_lut_rep_71_3_lut (.A(dac_state[2]), .B(dac_state[1]), .C(dac_state[0]), 
         .Z(n7836)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i4284_2_lut_rep_71_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_3_lut_4_lut_adj_94 (.A(dac_state[2]), .B(dac_state[1]), 
         .C(dac_update), .D(dac_state[0]), .Z(CLK_32M_c_enable_4)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i1_2_lut_3_lut_4_lut_adj_94.init = 16'hf0f1;
    LUT4 i2880_3_lut_3_lut_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), .C(n7808), 
         .D(n40_adj_1162), .Z(n1693)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i2880_3_lut_3_lut_4_lut.init = 16'h7f0f;
    LUT4 i4397_2_lut_rep_77_3_lut (.A(dac_state[2]), .B(dac_state[1]), .C(dac_state[0]), 
         .Z(n7842)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(216[6:18])
    defparam i4397_2_lut_rep_77_3_lut.init = 16'h1010;
    PFUMX i4216 (.BLUT(n7460), .ALUT(n7461), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[6]));
    LUT4 i4251_3_lut (.A(n4129), .B(n4101), .C(uart_frame_cnt[0]), .Z(n7466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4251_3_lut.init = 16'hcaca;
    LUT4 i4428_2_lut_2_lut_3_lut_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), 
         .C(n4007), .D(con_start_r), .Z(CLK_32M_c_enable_50)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(C (D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i4428_2_lut_2_lut_3_lut_4_lut.init = 16'h8fff;
    LUT4 i2492_2_lut_3_lut_4_lut (.A(n7844), .B(CLK_32M_c_enable_53), .C(n7812), 
         .D(con_start_r), .Z(n5651)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(332[8:19])
    defparam i2492_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 mux_995_i3_3_lut (.A(frame_content[42]), .B(frame_content[10]), 
         .C(uart_frame_cnt[2]), .Z(n4129)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(589[3] 590[43])
    defparam mux_995_i3_3_lut.init = 16'hcaca;
    PFUMX i4219 (.BLUT(n7463), .ALUT(n7464), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_831[5]));
    LUT4 i1_2_lut_rep_83 (.A(main_state[1]), .B(main_state[3]), .Z(n7848)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(166[6:20])
    defparam i1_2_lut_rep_83.init = 16'hbbbb;
    LUT4 i4385_2_lut_3_lut_4_lut_4_lut (.A(n7812), .B(con_start_r), .C(CLK_32M_c_enable_53), 
         .D(n7844), .Z(CLK_32M_c_enable_264)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i4385_2_lut_3_lut_4_lut_4_lut.init = 16'hf777;
    LUT4 i2_4_lut_adj_95 (.A(n5021), .B(uart_busy), .C(uart_frame_state[0]), 
         .D(uart_frame_state[1]), .Z(n3951)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_95.init = 16'hffdf;
    LUT4 i3_4_lut_adj_96 (.A(uart_frame_cnt[0]), .B(uart_frame_cnt[3]), 
         .C(uart_frame_cnt[1]), .D(uart_frame_cnt[2]), .Z(n5021)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_96.init = 16'hfdff;
    LUT4 i2_4_lut_adj_97 (.A(n7251), .B(n7826), .C(main_state[3]), .D(main_state[1]), 
         .Z(n96_adj_1174)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_97.init = 16'h3733;
    uart_rx uart_rx_a (.uart_rx_bit_clock(uart_rx_bit_clock), .\uart_rx_register[0] (uart_rx_register[0]), 
            .uart_rx_ready(uart_rx_ready), .UART_RX_c(UART_RX_c), .\uart_rx_register[7] (uart_rx_register[7]), 
            .\uart_rx_register[6] (uart_rx_register[6]), .\uart_rx_register[5] (uart_rx_register[5]), 
            .\uart_rx_register[4] (uart_rx_register[4]), .\uart_rx_register[3] (uart_rx_register[3]), 
            .\uart_rx_register[2] (uart_rx_register[2]), .CLK_OUT_c_1(CLK_OUT_c_1), 
            .uart_rx_rst(uart_rx_rst), .n8046(n8046)) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(629[10] 636[3])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i3592_2_lut (.A(uart_frame_cnt[1]), .B(uart_frame_cnt[0]), .Z(n24_adj_1115)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(606[23:41])
    defparam i3592_2_lut.init = 16'h6666;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (uart_tx_bit_clock, uart_tx_bit_clock_enable_68, uart_tx_state, 
            uart_tx_register, uart_busy, n8046, UART_TX_c, uart_tx_start) /* synthesis syn_module_defined=1 */ ;
    input uart_tx_bit_clock;
    input uart_tx_bit_clock_enable_68;
    output [2:0]uart_tx_state;
    input [7:0]uart_tx_register;
    output uart_busy;
    input n8046;
    output UART_TX_c;
    input uart_tx_start;
    
    wire uart_tx_bit_clock /* synthesis SET_AS_NETWORK=uart_tx_bit_clock, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(83[16:33])
    wire [2:0]uart_tx_bit;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(10[10:21])
    
    wire uart_tx_state_2__N_961, n7834, uart_tx_bit_clock_enable_11;
    wire [2:0]uart_tx_state_2__N_952;
    
    wire n7884, n7885, n7853, uart_tx_pin_N_969, uart_tx_pin_N_966, 
        n7832, n4;
    wire [2:0]n115;
    
    wire n7161, n7367, uart_tx_bit_clock_enable_69, uart_tx_busy_N_976, 
        n7886, n7887, n7888, n7889;
    
    FD1P3IX uart_tx_bit__i0 (.D(n7834), .SP(uart_tx_bit_clock_enable_68), 
            .CD(uart_tx_state_2__N_961), .CK(uart_tx_bit_clock), .Q(uart_tx_bit[0])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i0.GSR = "ENABLED";
    FD1P3AX uart_tx_state_i0 (.D(uart_tx_state_2__N_952[0]), .SP(uart_tx_bit_clock_enable_11), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_state[0])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i0.GSR = "ENABLED";
    LUT4 uart_tx_register_5__bdd_3_lut_4487 (.A(uart_tx_register[5]), .B(uart_tx_register[7]), 
         .C(uart_tx_bit[1]), .Z(n7884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam uart_tx_register_5__bdd_3_lut_4487.init = 16'hcaca;
    LUT4 i2_3_lut (.A(uart_tx_state[0]), .B(uart_tx_state[2]), .C(uart_tx_state[1]), 
         .Z(uart_tx_state_2__N_952[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut.init = 16'h2020;
    LUT4 uart_tx_register_5__bdd_3_lut (.A(uart_tx_register[4]), .B(uart_tx_register[6]), 
         .C(uart_tx_bit[1]), .Z(n7885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam uart_tx_register_5__bdd_3_lut.init = 16'hcaca;
    LUT4 i4168_2_lut_rep_88 (.A(uart_tx_state[2]), .B(uart_tx_state[0]), 
         .Z(n7853)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4168_2_lut_rep_88.init = 16'heeee;
    LUT4 i2900_3_lut_4_lut (.A(uart_tx_state[2]), .B(uart_tx_state[0]), 
         .C(uart_tx_state[1]), .D(uart_tx_pin_N_969), .Z(uart_tx_pin_N_966)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2900_3_lut_4_lut.init = 16'hffef;
    LUT4 i3118_2_lut_rep_67_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
         .C(uart_tx_bit[0]), .Z(n7832)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(34[7:20])
    defparam i3118_2_lut_rep_67_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), .C(uart_tx_state[1]), 
         .D(uart_tx_bit[0]), .Z(n4)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(34[7:20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i4425_2_lut_rep_69_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
         .C(uart_tx_bit[0]), .Z(n7834)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(34[7:20])
    defparam i4425_2_lut_rep_69_3_lut.init = 16'h8f8f;
    LUT4 i1231_2_lut_3_lut_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
         .C(uart_tx_bit[0]), .Z(n115[1])) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(34[7:20])
    defparam i1231_2_lut_3_lut_3_lut.init = 16'hdada;
    FD1P3AX uart_tx_state_i2 (.D(uart_tx_state_2__N_952[2]), .SP(uart_tx_bit_clock_enable_11), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_state[2])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i2.GSR = "ENABLED";
    FD1P3AX uart_tx_state_i1 (.D(uart_tx_state_2__N_952[1]), .SP(uart_tx_bit_clock_enable_11), 
            .CK(uart_tx_bit_clock), .Q(uart_tx_state[1])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i1.GSR = "ENABLED";
    FD1P3IX uart_tx_bit__i2 (.D(n7161), .SP(uart_tx_bit_clock_enable_68), 
            .CD(uart_tx_state_2__N_961), .CK(uart_tx_bit_clock), .Q(uart_tx_bit[2])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i2.GSR = "ENABLED";
    LUT4 i4274_2_lut_3_lut (.A(uart_tx_state[1]), .B(uart_tx_state[0]), 
         .C(uart_tx_state[2]), .Z(n7367)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(46[11:27])
    defparam i4274_2_lut_3_lut.init = 16'h1010;
    FD1P3IX uart_tx_bit__i1 (.D(n115[1]), .SP(uart_tx_bit_clock_enable_68), 
            .CD(uart_tx_state_2__N_961), .CK(uart_tx_bit_clock), .Q(uart_tx_bit[1])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i1.GSR = "ENABLED";
    LUT4 i4389_2_lut_3_lut (.A(uart_tx_state[1]), .B(uart_tx_state[0]), 
         .C(uart_tx_state[2]), .Z(uart_tx_bit_clock_enable_69)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(46[11:27])
    defparam i4389_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i4311_2_lut_3_lut (.A(uart_tx_state[1]), .B(uart_tx_state[0]), 
         .C(uart_tx_state[2]), .Z(uart_tx_busy_N_976)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(46[11:27])
    defparam i4311_2_lut_3_lut.init = 16'h0101;
    PFUMX i4488 (.BLUT(n7885), .ALUT(n7884), .C0(uart_tx_bit[0]), .Z(n7886));
    FD1P3IX uart_tx_busy_37 (.D(n8046), .SP(uart_tx_busy_N_976), .CD(n7367), 
            .CK(uart_tx_bit_clock), .Q(uart_busy)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_busy_37.GSR = "ENABLED";
    FD1P3IX uart_tx_pin_38 (.D(uart_tx_pin_N_966), .SP(uart_tx_bit_clock_enable_69), 
            .CD(uart_tx_state_2__N_961), .CK(uart_tx_bit_clock), .Q(UART_TX_c)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=618, LSE_RLINE=626 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(12[8] 50[5])
    defparam uart_tx_pin_38.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(uart_tx_bit[2]), .B(uart_tx_bit[1]), .C(uart_tx_bit[0]), 
         .Z(n7161)) /* synthesis lut_function=(A+(B (C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(35[19:34])
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i2_4_lut_4_lut (.A(uart_tx_state[1]), .B(n7832), .C(uart_tx_start), 
         .D(n7853), .Z(uart_tx_state_2__N_952[0])) /* synthesis lut_function=(!(A ((D)+!B)+!A (C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(30[7] 49[6])
    defparam i2_4_lut_4_lut.init = 16'h008d;
    LUT4 i1_4_lut_4_lut (.A(uart_tx_state[1]), .B(n7832), .C(uart_tx_state[0]), 
         .D(uart_tx_state[2]), .Z(uart_tx_state_2__N_952[1])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(30[7] 49[6])
    defparam i1_4_lut_4_lut.init = 16'h0058;
    LUT4 i4313_3_lut (.A(uart_tx_state[0]), .B(uart_tx_state[1]), .C(uart_tx_state[2]), 
         .Z(uart_tx_state_2__N_961)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_tx.v(24[6:22])
    defparam i4313_3_lut.init = 16'h0202;
    LUT4 i4264_4_lut (.A(uart_tx_start), .B(uart_tx_state[0]), .C(uart_tx_state[2]), 
         .D(n4), .Z(uart_tx_bit_clock_enable_11)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i4264_4_lut.init = 16'haeaf;
    LUT4 uart_tx_register_0__bdd_3_lut_4490 (.A(uart_tx_register[3]), .B(uart_tx_register[1]), 
         .C(uart_tx_bit[1]), .Z(n7887)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam uart_tx_register_0__bdd_3_lut_4490.init = 16'hacac;
    LUT4 uart_tx_register_0__bdd_3_lut_4539 (.A(uart_tx_register[0]), .B(uart_tx_register[2]), 
         .C(uart_tx_bit[1]), .Z(n7888)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam uart_tx_register_0__bdd_3_lut_4539.init = 16'hcaca;
    L6MUX21 i4493 (.D0(n7889), .D1(n7886), .SD(uart_tx_bit[2]), .Z(uart_tx_pin_N_969));
    PFUMX i4491 (.BLUT(n7888), .ALUT(n7887), .C0(uart_tx_bit[0]), .Z(n7889));
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (uart_rx_bit_clock, \uart_rx_register[0] , uart_rx_ready, 
            UART_RX_c, \uart_rx_register[7] , \uart_rx_register[6] , \uart_rx_register[5] , 
            \uart_rx_register[4] , \uart_rx_register[3] , \uart_rx_register[2] , 
            CLK_OUT_c_1, uart_rx_rst, n8046) /* synthesis syn_module_defined=1 */ ;
    input uart_rx_bit_clock;
    output \uart_rx_register[0] ;
    output uart_rx_ready;
    input UART_RX_c;
    output \uart_rx_register[7] ;
    output \uart_rx_register[6] ;
    output \uart_rx_register[5] ;
    output \uart_rx_register[4] ;
    output \uart_rx_register[3] ;
    output \uart_rx_register[2] ;
    output CLK_OUT_c_1;
    input uart_rx_rst;
    input n8046;
    
    wire uart_rx_bit_clock /* synthesis SET_AS_NETWORK=uart_rx_bit_clock, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/nvm_ctrl.v(83[34:51])
    wire [2:0]uart_rx_state;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(14[10:23])
    
    wire uart_rx_bit_clock_enable_1;
    wire [2:0]n8;
    
    wire uart_rx_bit_clock_enable_26;
    wire [7:0]uart_rx_tmp;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(18[10:21])
    
    wire uart_rx_pin, uart_rx_pin_tmp, uart_rx_bit_clock_enable_3, uart_rx_rdy_N_1068;
    wire [4:0]uart_rx_bit;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(16[10:21])
    wire [4:0]n25;
    
    wire rx_pin_state, uart_rx_bit_clock_enable_4, rx_pin_state_N_1077, 
        n7818;
    wire [7:0]uart_rx_tmp_7__N_1004;
    
    wire n7822, uart_rx_bit_clock_enable_34, n6310, n11, n5696, n7829, 
        n7819, uart_rx_bit_clock_enable_12;
    wire [4:0]uart_rx_zero_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(17[10:26])
    wire [4:0]n25_adj_1087;
    
    wire uart_rx_bit_clock_enable_10, uart_rx_bit_clock_enable_33, n5688, 
        uart_rx_bit_clock_enable_6, uart_rx_bit_clock_enable_7, uart_rx_bit_clock_enable_8, 
        uart_rx_bit_clock_enable_9, uart_rx_bit_clock_enable_11, uart_rx_bit_clock_enable_13, 
        n7864, n7814, n7837, n7821, n3997, uart_rx_bit_clock_enable_30;
    wire [4:0]uart_rx_cnt;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(15[10:21])
    
    wire n7856, n7841, n7857, n7838, n7858, n7859, n7839, n6_adj_1081, 
        n7860, n6209, n7861, n10, n7824, n7847, n7863;
    wire [4:0]n25_adj_1088;
    
    wire n1, uart_rx_bit_clock_enable_35, n5640, n7383, n7868, n14, 
        n7449, n4017, n6864, n4;
    
    FD1P3AX uart_rx_state__i0 (.D(n8[0]), .SP(uart_rx_bit_clock_enable_1), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_state[0])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i0.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i0 (.D(uart_rx_tmp[0]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[0] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i0.GSR = "ENABLED";
    FD1S3AX uart_rx_pin_92 (.D(uart_rx_pin_tmp), .CK(uart_rx_bit_clock), 
            .Q(uart_rx_pin)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_pin_92.GSR = "ENABLED";
    FD1P3AX uart_rx_rdy_93 (.D(uart_rx_rdy_N_1068), .SP(uart_rx_bit_clock_enable_3), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_ready)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_rdy_93.GSR = "ENABLED";
    FD1S3AX uart_rx_pin_tmp_91 (.D(UART_RX_c), .CK(uart_rx_bit_clock), .Q(uart_rx_pin_tmp)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_pin_tmp_91.GSR = "ENABLED";
    LUT4 i3498_2_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i3498_2_lut.init = 16'h6666;
    FD1P3AX rx_pin_state_99 (.D(rx_pin_state_N_1077), .SP(uart_rx_bit_clock_enable_4), 
            .CK(uart_rx_bit_clock), .Q(rx_pin_state)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam rx_pin_state_99.GSR = "ENABLED";
    LUT4 i3051_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7818), .C(rx_pin_state), 
         .D(uart_rx_bit[1]), .Z(uart_rx_tmp_7__N_1004[2])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i3051_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i4367_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7818), .C(n7822), 
         .D(uart_rx_bit[1]), .Z(uart_rx_bit_clock_enable_34)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i4367_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i3033_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7818), .C(rx_pin_state), 
         .D(uart_rx_bit[1]), .Z(uart_rx_tmp_7__N_1004[0])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i3033_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i4404_4_lut (.A(n6310), .B(uart_rx_state[2]), .C(uart_rx_pin), 
         .D(n11), .Z(n5696)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i4404_4_lut.init = 16'h5455;
    LUT4 i3130_4_lut (.A(n7822), .B(uart_rx_pin), .C(uart_rx_bit_clock_enable_4), 
         .D(n7829), .Z(n6310)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;
    defparam i3130_4_lut.init = 16'h8a0a;
    LUT4 i4347_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7819), .C(n7822), 
         .D(uart_rx_bit[1]), .Z(uart_rx_bit_clock_enable_12)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i4347_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i3534_2_lut (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
         .Z(n25_adj_1087[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i3534_2_lut.init = 16'h6666;
    LUT4 i3052_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7819), .C(rx_pin_state), 
         .D(uart_rx_bit[1]), .Z(uart_rx_tmp_7__N_1004[1])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i3052_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i4344_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7819), .C(n7822), 
         .D(uart_rx_bit[1]), .Z(uart_rx_bit_clock_enable_10)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i4344_2_lut_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i3050_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7819), .C(rx_pin_state), 
         .D(uart_rx_bit[1]), .Z(uart_rx_tmp_7__N_1004[3])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i3050_2_lut_3_lut_4_lut.init = 16'h1000;
    FD1P3IX uart_rx_bit_1167__i1 (.D(n25[1]), .SP(uart_rx_bit_clock_enable_33), 
            .CD(n5688), .CK(uart_rx_bit_clock), .Q(uart_rx_bit[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1167__i1.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i7 (.D(uart_rx_tmp_7__N_1004[7]), .SP(uart_rx_bit_clock_enable_6), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[7])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i7.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i6 (.D(uart_rx_tmp_7__N_1004[6]), .SP(uart_rx_bit_clock_enable_7), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[6])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i6.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i5 (.D(uart_rx_tmp_7__N_1004[5]), .SP(uart_rx_bit_clock_enable_8), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[5])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i5.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i4 (.D(uart_rx_tmp_7__N_1004[4]), .SP(uart_rx_bit_clock_enable_9), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[4])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i4.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i3 (.D(uart_rx_tmp_7__N_1004[3]), .SP(uart_rx_bit_clock_enable_10), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[3])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i3.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i2 (.D(uart_rx_tmp_7__N_1004[2]), .SP(uart_rx_bit_clock_enable_11), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[2])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i2.GSR = "ENABLED";
    FD1P3AX uart_rx_tmp_i1 (.D(uart_rx_tmp_7__N_1004[1]), .SP(uart_rx_bit_clock_enable_12), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[1])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i1.GSR = "ENABLED";
    FD1P3IX uart_rx_state__i1 (.D(n7814), .SP(uart_rx_bit_clock_enable_13), 
            .CD(n7864), .CK(uart_rx_bit_clock), .Q(uart_rx_state[1])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7822), .B(n7837), .C(n7821), .D(n3997), 
         .Z(uart_rx_bit_clock_enable_1)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n7822), .B(n7837), .C(n3997), 
         .D(n7821), .Z(uart_rx_bit_clock_enable_13)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hfdff;
    FD1P3IX uart_rx_zero_cnt_1165__i4 (.D(n25_adj_1087[4]), .SP(uart_rx_bit_clock_enable_30), 
            .CD(n5696), .CK(uart_rx_bit_clock), .Q(uart_rx_zero_cnt[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1165__i4.GSR = "ENABLED";
    LUT4 i2947_2_lut_rep_91 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), .Z(n7856)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2947_2_lut_rep_91.init = 16'h8888;
    FD1P3IX uart_rx_zero_cnt_1165__i3 (.D(n25_adj_1087[3]), .SP(uart_rx_bit_clock_enable_30), 
            .CD(n5696), .CK(uart_rx_bit_clock), .Q(uart_rx_zero_cnt[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1165__i3.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_1165__i2 (.D(n25_adj_1087[2]), .SP(uart_rx_bit_clock_enable_30), 
            .CD(n5696), .CK(uart_rx_bit_clock), .Q(uart_rx_zero_cnt[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1165__i2.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_1165__i1 (.D(n25_adj_1087[1]), .SP(uart_rx_bit_clock_enable_30), 
            .CD(n5696), .CK(uart_rx_bit_clock), .Q(uart_rx_zero_cnt[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1165__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_bit_1167__i4 (.D(n25[4]), .SP(uart_rx_bit_clock_enable_33), 
            .CD(n5688), .CK(uart_rx_bit_clock), .Q(uart_rx_bit[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1167__i4.GSR = "ENABLED";
    FD1P3IX uart_rx_bit_1167__i3 (.D(n25[3]), .SP(uart_rx_bit_clock_enable_33), 
            .CD(n5688), .CK(uart_rx_bit_clock), .Q(uart_rx_bit[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1167__i3.GSR = "ENABLED";
    LUT4 i3102_2_lut_rep_76_3_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
         .C(uart_rx_cnt[0]), .Z(n7841)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3102_2_lut_rep_76_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
         .C(n7857), .D(uart_rx_cnt[0]), .Z(n7829)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'hf7ff;
    LUT4 equal_617_i7_2_lut_rep_92 (.A(uart_rx_cnt[3]), .B(uart_rx_cnt[4]), 
         .Z(n7857)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam equal_617_i7_2_lut_rep_92.init = 16'heeee;
    LUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(uart_rx_cnt[3]), .B(uart_rx_cnt[4]), 
         .C(uart_rx_cnt[2]), .D(uart_rx_cnt[1]), .Z(n7838)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'hefff;
    LUT4 i3021_2_lut_rep_93 (.A(uart_rx_zero_cnt[0]), .B(uart_rx_zero_cnt[1]), 
         .Z(n7858)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3021_2_lut_rep_93.init = 16'h8888;
    LUT4 i3548_2_lut_3_lut_4_lut (.A(uart_rx_zero_cnt[0]), .B(uart_rx_zero_cnt[1]), 
         .C(uart_rx_zero_cnt[3]), .D(uart_rx_zero_cnt[2]), .Z(n25_adj_1087[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i3548_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i3541_2_lut_3_lut (.A(uart_rx_zero_cnt[0]), .B(uart_rx_zero_cnt[1]), 
         .C(uart_rx_zero_cnt[2]), .Z(n25_adj_1087[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i3541_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_94 (.A(uart_rx_state[2]), .B(uart_rx_state[1]), .Z(n7859)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(81[6:22])
    defparam i1_2_lut_rep_94.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_74_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .C(uart_rx_state[0]), .Z(n7839)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(81[6:22])
    defparam i1_2_lut_rep_74_3_lut.init = 16'hfbfb;
    LUT4 i4372_2_lut_rep_68_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .C(uart_rx_state[0]), .Z(uart_rx_bit_clock_enable_26)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(81[6:22])
    defparam i4372_2_lut_rep_68_3_lut.init = 16'h4040;
    FD1P3AX uart_rx_data_i0_i7 (.D(uart_rx_tmp[7]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[7] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i6 (.D(uart_rx_tmp[6]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[6] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i5 (.D(uart_rx_tmp[5]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[5] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i4 (.D(uart_rx_tmp[4]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[4] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i3 (.D(uart_rx_tmp[3]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[3] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i2 (.D(uart_rx_tmp[2]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(\uart_rx_register[2] )) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i1 (.D(uart_rx_tmp[1]), .SP(uart_rx_bit_clock_enable_26), 
            .CK(uart_rx_bit_clock), .Q(CLK_OUT_c_1)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .C(uart_rx_cnt[3]), .D(uart_rx_state[0]), .Z(n6_adj_1081)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(81[6:22])
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h0040;
    LUT4 i2866_2_lut_rep_95 (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .Z(n7860)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2866_2_lut_rep_95.init = 16'heeee;
    LUT4 i4319_2_lut_rep_75_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
         .C(uart_rx_state[0]), .Z(uart_rx_bit_clock_enable_4)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4319_2_lut_rep_75_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_4_lut (.A(uart_rx_state[2]), .B(uart_rx_state[1]), .C(uart_rx_state[0]), 
         .D(uart_rx_pin), .Z(n6209)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2940_2_lut_rep_96 (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), .Z(n7861)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2940_2_lut_rep_96.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), .C(uart_rx_cnt[3]), 
         .Z(n10)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i4335_2_lut_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(n7822), 
         .D(n7847), .Z(uart_rx_bit_clock_enable_9)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i4335_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i3465_2_lut_rep_98 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .Z(n7863)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i3465_2_lut_rep_98.init = 16'h8888;
    LUT4 i3469_2_lut_3_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .C(uart_rx_cnt[2]), 
         .Z(n25_adj_1088[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i3469_2_lut_3_lut.init = 16'h7878;
    LUT4 i3476_2_lut_3_lut_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), 
         .C(uart_rx_cnt[3]), .D(uart_rx_cnt[2]), .Z(n25_adj_1088[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i3476_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i4289_4_lut_rep_99 (.A(uart_rx_rst), .B(uart_rx_state[1]), .C(uart_rx_state[2]), 
         .D(uart_rx_state[0]), .Z(n7864)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i4289_4_lut_rep_99.init = 16'h0010;
    LUT4 i1_2_lut_rep_72_4_lut (.A(uart_rx_rst), .B(uart_rx_state[1]), .C(uart_rx_state[2]), 
         .D(uart_rx_state[0]), .Z(n7837)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_72_4_lut.init = 16'haaba;
    LUT4 i3049_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n7847), .Z(uart_rx_tmp_7__N_1004[4])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i3049_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i4350_2_lut_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(n7822), 
         .D(n7861), .Z(uart_rx_bit_clock_enable_7)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i4350_2_lut_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i3047_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n7861), .Z(uart_rx_tmp_7__N_1004[6])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[3] 79[7])
    defparam i3047_2_lut_3_lut_4_lut.init = 16'h1000;
    FD1P3IX uart_rx_bit_1167__i0 (.D(n1), .SP(uart_rx_bit_clock_enable_33), 
            .CD(n5688), .CK(uart_rx_bit_clock), .Q(uart_rx_bit[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1167__i0.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1169__i1 (.D(n25_adj_1088[1]), .SP(uart_rx_bit_clock_enable_35), 
            .CD(n5640), .CK(uart_rx_bit_clock), .Q(uart_rx_cnt[1]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1169__i1.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1169__i2 (.D(n25_adj_1088[2]), .SP(uart_rx_bit_clock_enable_35), 
            .CD(n5640), .CK(uart_rx_bit_clock), .Q(uart_rx_cnt[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1169__i2.GSR = "ENABLED";
    FD1P3IX uart_rx_state__i2 (.D(n8046), .SP(uart_rx_rst), .CD(n7383), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_state[2])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i2.GSR = "ENABLED";
    FD1P3IX uart_rx_zero_cnt_1165__i0 (.D(n25_adj_1087[0]), .SP(uart_rx_bit_clock_enable_30), 
            .CD(n5696), .CK(uart_rx_bit_clock), .Q(uart_rx_zero_cnt[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1165__i0.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1169__i3 (.D(n25_adj_1088[3]), .SP(uart_rx_bit_clock_enable_35), 
            .CD(n5640), .CK(uart_rx_bit_clock), .Q(uart_rx_cnt[3]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1169__i3.GSR = "ENABLED";
    FD1P3IX uart_rx_cnt_1169__i4 (.D(n25_adj_1088[4]), .SP(uart_rx_bit_clock_enable_35), 
            .CD(n5640), .CK(uart_rx_bit_clock), .Q(uart_rx_cnt[4]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1169__i4.GSR = "ENABLED";
    LUT4 i3501_2_lut_rep_103 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), .Z(n7868)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i3501_2_lut_rep_103.init = 16'h8888;
    LUT4 i4328_2_lut_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(n7822), 
         .D(n7847), .Z(uart_rx_bit_clock_enable_8)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i4328_2_lut_2_lut_3_lut_4_lut.init = 16'h0f4f;
    LUT4 i3505_2_lut_3_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), .C(uart_rx_bit[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i3505_2_lut_3_lut.init = 16'h7878;
    LUT4 i3048_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n7847), .Z(uart_rx_tmp_7__N_1004[5])) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i3048_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i3512_2_lut_3_lut_4_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
         .C(uart_rx_bit[3]), .D(uart_rx_bit[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i3512_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i4358_2_lut_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(n7822), 
         .D(n7861), .Z(uart_rx_bit_clock_enable_6)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i4358_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 i3046_2_lut_3_lut_4_lut (.A(n7824), .B(uart_rx_bit[0]), .C(rx_pin_state), 
         .D(n7861), .Z(uart_rx_tmp_7__N_1004[7])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i3046_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i7_4_lut_rep_56 (.A(uart_rx_bit_clock_enable_4), .B(n14), .C(n10), 
         .D(uart_rx_bit[3]), .Z(n7821)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i7_4_lut_rep_56.init = 16'hfffd;
    LUT4 i1372_1_lut (.A(uart_rx_bit[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(75[8:22])
    defparam i1372_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_53_4_lut (.A(n7838), .B(uart_rx_bit_clock_enable_4), 
         .C(uart_rx_cnt[0]), .D(uart_rx_bit[0]), .Z(n7818)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i1_2_lut_rep_53_4_lut.init = 16'hffbf;
    LUT4 i1_2_lut_rep_54_4_lut (.A(n7838), .B(uart_rx_bit_clock_enable_4), 
         .C(uart_rx_cnt[0]), .D(uart_rx_bit[0]), .Z(n7819)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i1_2_lut_rep_54_4_lut.init = 16'hbfff;
    LUT4 i4_4_lut (.A(uart_rx_cnt[0]), .B(n7449), .C(rx_pin_state_N_1077), 
         .D(n6_adj_1081), .Z(n3997)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i4_4_lut.init = 16'h1000;
    LUT4 i4203_4_lut (.A(n7858), .B(uart_rx_cnt[1]), .C(uart_rx_cnt[2]), 
         .D(uart_rx_cnt[4]), .Z(n7449)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4203_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n4017), .B(uart_rx_state[2]), .C(uart_rx_state[0]), 
         .D(uart_rx_state[1]), .Z(uart_rx_bit_clock_enable_35)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'habbb;
    LUT4 i3462_2_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .Z(n25_adj_1088[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i3462_2_lut.init = 16'h6666;
    LUT4 i6_4_lut (.A(uart_rx_bit[4]), .B(uart_rx_cnt[4]), .C(uart_rx_bit[0]), 
         .D(n7841), .Z(n14)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(68[7:21])
    defparam i6_4_lut.init = 16'hefff;
    LUT4 i2508_2_lut_3_lut_4_lut (.A(uart_rx_cnt[0]), .B(n7838), .C(n7824), 
         .D(n6209), .Z(n5688)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i2508_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i4361_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_cnt[0]), .B(n7838), .C(n7824), 
         .D(n6209), .Z(uart_rx_bit_clock_enable_33)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i4361_2_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i2_3_lut_4_lut_4_lut (.A(uart_rx_bit_clock_enable_4), .B(n6209), 
         .C(n7838), .D(uart_rx_cnt[0]), .Z(n6864)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(51[6:22])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h1110;
    LUT4 i4281_3_lut (.A(uart_rx_zero_cnt[4]), .B(uart_rx_zero_cnt[3]), 
         .C(uart_rx_zero_cnt[2]), .Z(rx_pin_state_N_1077)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(63[4] 65[7])
    defparam i4281_3_lut.init = 16'h0101;
    LUT4 i22_3_lut_4_lut (.A(n7841), .B(n7857), .C(uart_rx_state[0]), 
         .D(uart_rx_state[1]), .Z(n11)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (C (D)+!C !(D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i22_3_lut_4_lut.init = 16'h0fd0;
    LUT4 i3532_1_lut (.A(uart_rx_zero_cnt[0]), .Z(n25_adj_1087[0])) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i3532_1_lut.init = 16'h5555;
    LUT4 i3483_3_lut_4_lut (.A(uart_rx_cnt[2]), .B(n7863), .C(uart_rx_cnt[3]), 
         .D(uart_rx_cnt[4]), .Z(n25_adj_1088[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam i3483_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1377_1_lut (.A(uart_rx_cnt[0]), .Z(n4)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(75[8:22])
    defparam i1377_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_45 (.A(uart_rx_rst), .B(n7864), .C(n7859), 
         .D(uart_rx_state[0]), .Z(uart_rx_bit_clock_enable_3)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_45.init = 16'hefee;
    LUT4 i2_3_lut_4_lut_4_lut_adj_46 (.A(n7864), .B(n7822), .C(n7821), 
         .D(n3997), .Z(n7383)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_46.init = 16'hffbf;
    LUT4 i2_3_lut_rep_59_4_lut (.A(n7857), .B(n7856), .C(uart_rx_cnt[0]), 
         .D(uart_rx_bit_clock_enable_4), .Z(n7824)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i2_3_lut_rep_59_4_lut.init = 16'hbfff;
    LUT4 i3120_2_lut_rep_57_3_lut_4_lut (.A(n7857), .B(n7856), .C(n6209), 
         .D(uart_rx_cnt[0]), .Z(n7822)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(36[8:22])
    defparam i3120_2_lut_rep_57_3_lut_4_lut.init = 16'hfffb;
    FD1P3IX uart_rx_bit_1167__i2 (.D(n25[2]), .SP(uart_rx_bit_clock_enable_33), 
            .CD(n5688), .CK(uart_rx_bit_clock), .Q(uart_rx_bit[2]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1167__i2.GSR = "ENABLED";
    LUT4 i4322_3_lut_4_lut (.A(uart_rx_state[0]), .B(n7859), .C(uart_rx_pin), 
         .D(n6310), .Z(uart_rx_bit_clock_enable_30)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(81[6:22])
    defparam i4322_3_lut_4_lut.init = 16'h01ff;
    LUT4 i939_2_lut_3_lut_4_lut (.A(uart_rx_state[0]), .B(n7860), .C(n7857), 
         .D(n7841), .Z(n4017)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(51[6:22])
    defparam i939_2_lut_3_lut_4_lut.init = 16'h2022;
    LUT4 i2_3_lut (.A(uart_rx_state[1]), .B(uart_rx_state[0]), .C(uart_rx_state[2]), 
         .Z(uart_rx_rdy_N_1068)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    FD1P3AX uart_rx_tmp_i0 (.D(uart_rx_tmp_7__N_1004[0]), .SP(uart_rx_bit_clock_enable_34), 
            .CK(uart_rx_bit_clock), .Q(uart_rx_tmp[0])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=629, LSE_RLINE=636 */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i0.GSR = "ENABLED";
    LUT4 i4277_4_lut_4_lut (.A(n7860), .B(n4017), .C(n6864), .D(n7839), 
         .Z(n5640)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4277_4_lut_4_lut.init = 16'h0100;
    FD1P3IX uart_rx_cnt_1169__i0 (.D(n4), .SP(uart_rx_bit_clock_enable_35), 
            .CD(n5640), .CK(uart_rx_bit_clock), .Q(uart_rx_cnt[0]));   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1169__i0.GSR = "ENABLED";
    LUT4 i2927_4_lut_4_lut (.A(n7864), .B(n7821), .C(n3997), .D(n7822), 
         .Z(n8[0])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i2927_4_lut_4_lut.init = 16'h5054;
    LUT4 i3519_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7868), .C(uart_rx_bit[3]), 
         .D(uart_rx_bit[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(72[17:30])
    defparam i3519_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3555_3_lut_4_lut (.A(uart_rx_zero_cnt[2]), .B(n7858), .C(uart_rx_zero_cnt[3]), 
         .D(uart_rx_zero_cnt[4]), .Z(n25_adj_1087[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(56[22:40])
    defparam i3555_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4272_2_lut_rep_49_2_lut (.A(n7821), .B(n3997), .Z(n7814)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(91[4] 94[8])
    defparam i4272_2_lut_rep_49_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_82 (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), .Z(n7847)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i1_2_lut_rep_82.init = 16'hbbbb;
    LUT4 i4338_2_lut_2_lut_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n7818), .C(n7822), 
         .D(uart_rx_bit[1]), .Z(uart_rx_bit_clock_enable_11)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/works/nvm/fpga/2/uart_rx.v(70[4:28])
    defparam i4338_2_lut_2_lut_3_lut_4_lut.init = 16'h1f0f;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


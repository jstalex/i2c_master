// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec  4 20:35:20 2022
// Host        : DESKTOP-G9CJ5KV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Alex/interfaces/i2c/i2c.sim/sim_1/synth/func/xsim/mstr_tb_func_synth.v
// Design      : master
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDRESS = "2" *) (* BEGINNING = "1" *) (* ENDING = "9" *) 
(* IDLE = "0" *) (* RD_ACK = "5" *) (* RD_DATA = "7" *) 
(* RW_CMD = "3" *) (* SEND_ACK = "8" *) (* WR_ACK = "4" *) 
(* WR_DATA = "6" *) 
(* NotValidForBitStream *)
module master
   (slave,
    start,
    stop,
    clk,
    sda,
    addr,
    data,
    cmd,
    wd,
    rd,
    we,
    scl);
  input slave;
  input start;
  input stop;
  input clk;
  inout sda;
  input [6:0]addr;
  input [7:0]data;
  input cmd;
  output wd;
  output rd;
  output we;
  output scl;

  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_10_n_0 ;
  wire \FSM_onehot_state[9]_i_11_n_0 ;
  wire \FSM_onehot_state[9]_i_12_n_0 ;
  wire \FSM_onehot_state[9]_i_13_n_0 ;
  wire \FSM_onehot_state[9]_i_14_n_0 ;
  wire \FSM_onehot_state[9]_i_15_n_0 ;
  wire \FSM_onehot_state[9]_i_16_n_0 ;
  wire \FSM_onehot_state[9]_i_17_n_0 ;
  wire \FSM_onehot_state[9]_i_18_n_0 ;
  wire \FSM_onehot_state[9]_i_19_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_20_n_0 ;
  wire \FSM_onehot_state[9]_i_21_n_0 ;
  wire \FSM_onehot_state[9]_i_22_n_0 ;
  wire \FSM_onehot_state[9]_i_23_n_0 ;
  wire \FSM_onehot_state[9]_i_24_n_0 ;
  wire \FSM_onehot_state[9]_i_25_n_0 ;
  wire \FSM_onehot_state[9]_i_26_n_0 ;
  wire \FSM_onehot_state[9]_i_27_n_0 ;
  wire \FSM_onehot_state[9]_i_28_n_0 ;
  wire \FSM_onehot_state[9]_i_29_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_30_n_0 ;
  wire \FSM_onehot_state[9]_i_31_n_0 ;
  wire \FSM_onehot_state[9]_i_32_n_0 ;
  wire \FSM_onehot_state[9]_i_33_n_0 ;
  wire \FSM_onehot_state[9]_i_34_n_0 ;
  wire \FSM_onehot_state[9]_i_35_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_7_n_0 ;
  wire \FSM_onehot_state[9]_i_8_n_0 ;
  wire \FSM_onehot_state[9]_i_9_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [6:0]addr;
  wire [6:0]addr_IBUF;
  wire \addr_c[0]_i_1_n_0 ;
  wire \addr_c[0]_i_3_n_0 ;
  wire \addr_c[0]_i_4_n_0 ;
  wire \addr_c[0]_i_5_n_0 ;
  wire \addr_c[0]_i_6_n_0 ;
  wire \addr_c[12]_i_2_n_0 ;
  wire \addr_c[12]_i_3_n_0 ;
  wire \addr_c[12]_i_4_n_0 ;
  wire \addr_c[12]_i_5_n_0 ;
  wire \addr_c[16]_i_2_n_0 ;
  wire \addr_c[16]_i_3_n_0 ;
  wire \addr_c[16]_i_4_n_0 ;
  wire \addr_c[16]_i_5_n_0 ;
  wire \addr_c[20]_i_2_n_0 ;
  wire \addr_c[20]_i_3_n_0 ;
  wire \addr_c[20]_i_4_n_0 ;
  wire \addr_c[20]_i_5_n_0 ;
  wire \addr_c[24]_i_2_n_0 ;
  wire \addr_c[24]_i_3_n_0 ;
  wire \addr_c[24]_i_4_n_0 ;
  wire \addr_c[24]_i_5_n_0 ;
  wire \addr_c[28]_i_2_n_0 ;
  wire \addr_c[28]_i_3_n_0 ;
  wire \addr_c[28]_i_4_n_0 ;
  wire \addr_c[28]_i_5_n_0 ;
  wire \addr_c[4]_i_2_n_0 ;
  wire \addr_c[4]_i_3_n_0 ;
  wire \addr_c[4]_i_4_n_0 ;
  wire \addr_c[4]_i_5_n_0 ;
  wire \addr_c[8]_i_2_n_0 ;
  wire \addr_c[8]_i_3_n_0 ;
  wire \addr_c[8]_i_4_n_0 ;
  wire \addr_c[8]_i_5_n_0 ;
  wire [2:0]addr_c_reg;
  wire \addr_c_reg[0]_i_2_n_0 ;
  wire \addr_c_reg[0]_i_2_n_1 ;
  wire \addr_c_reg[0]_i_2_n_2 ;
  wire \addr_c_reg[0]_i_2_n_3 ;
  wire \addr_c_reg[0]_i_2_n_4 ;
  wire \addr_c_reg[0]_i_2_n_5 ;
  wire \addr_c_reg[0]_i_2_n_6 ;
  wire \addr_c_reg[0]_i_2_n_7 ;
  wire \addr_c_reg[12]_i_1_n_0 ;
  wire \addr_c_reg[12]_i_1_n_1 ;
  wire \addr_c_reg[12]_i_1_n_2 ;
  wire \addr_c_reg[12]_i_1_n_3 ;
  wire \addr_c_reg[12]_i_1_n_4 ;
  wire \addr_c_reg[12]_i_1_n_5 ;
  wire \addr_c_reg[12]_i_1_n_6 ;
  wire \addr_c_reg[12]_i_1_n_7 ;
  wire \addr_c_reg[16]_i_1_n_0 ;
  wire \addr_c_reg[16]_i_1_n_1 ;
  wire \addr_c_reg[16]_i_1_n_2 ;
  wire \addr_c_reg[16]_i_1_n_3 ;
  wire \addr_c_reg[16]_i_1_n_4 ;
  wire \addr_c_reg[16]_i_1_n_5 ;
  wire \addr_c_reg[16]_i_1_n_6 ;
  wire \addr_c_reg[16]_i_1_n_7 ;
  wire \addr_c_reg[20]_i_1_n_0 ;
  wire \addr_c_reg[20]_i_1_n_1 ;
  wire \addr_c_reg[20]_i_1_n_2 ;
  wire \addr_c_reg[20]_i_1_n_3 ;
  wire \addr_c_reg[20]_i_1_n_4 ;
  wire \addr_c_reg[20]_i_1_n_5 ;
  wire \addr_c_reg[20]_i_1_n_6 ;
  wire \addr_c_reg[20]_i_1_n_7 ;
  wire \addr_c_reg[24]_i_1_n_0 ;
  wire \addr_c_reg[24]_i_1_n_1 ;
  wire \addr_c_reg[24]_i_1_n_2 ;
  wire \addr_c_reg[24]_i_1_n_3 ;
  wire \addr_c_reg[24]_i_1_n_4 ;
  wire \addr_c_reg[24]_i_1_n_5 ;
  wire \addr_c_reg[24]_i_1_n_6 ;
  wire \addr_c_reg[24]_i_1_n_7 ;
  wire \addr_c_reg[28]_i_1_n_1 ;
  wire \addr_c_reg[28]_i_1_n_2 ;
  wire \addr_c_reg[28]_i_1_n_3 ;
  wire \addr_c_reg[28]_i_1_n_4 ;
  wire \addr_c_reg[28]_i_1_n_5 ;
  wire \addr_c_reg[28]_i_1_n_6 ;
  wire \addr_c_reg[28]_i_1_n_7 ;
  wire \addr_c_reg[4]_i_1_n_0 ;
  wire \addr_c_reg[4]_i_1_n_1 ;
  wire \addr_c_reg[4]_i_1_n_2 ;
  wire \addr_c_reg[4]_i_1_n_3 ;
  wire \addr_c_reg[4]_i_1_n_4 ;
  wire \addr_c_reg[4]_i_1_n_5 ;
  wire \addr_c_reg[4]_i_1_n_6 ;
  wire \addr_c_reg[4]_i_1_n_7 ;
  wire \addr_c_reg[8]_i_1_n_0 ;
  wire \addr_c_reg[8]_i_1_n_1 ;
  wire \addr_c_reg[8]_i_1_n_2 ;
  wire \addr_c_reg[8]_i_1_n_3 ;
  wire \addr_c_reg[8]_i_1_n_4 ;
  wire \addr_c_reg[8]_i_1_n_5 ;
  wire \addr_c_reg[8]_i_1_n_6 ;
  wire \addr_c_reg[8]_i_1_n_7 ;
  wire [31:3]addr_c_reg__0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cmd;
  wire cmd_IBUF;
  wire counter;
  wire \counter[31]_i_11_n_0 ;
  wire \counter[31]_i_12_n_0 ;
  wire \counter[31]_i_13_n_0 ;
  wire \counter[31]_i_14_n_0 ;
  wire \counter[31]_i_16_n_0 ;
  wire \counter[31]_i_17_n_0 ;
  wire \counter[31]_i_18_n_0 ;
  wire \counter[31]_i_19_n_0 ;
  wire \counter[31]_i_20_n_0 ;
  wire \counter[31]_i_21_n_0 ;
  wire \counter[31]_i_22_n_0 ;
  wire \counter[31]_i_23_n_0 ;
  wire \counter[31]_i_24_n_0 ;
  wire \counter[31]_i_25_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_0 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[31]_i_10_n_0 ;
  wire \counter_reg[31]_i_10_n_1 ;
  wire \counter_reg[31]_i_10_n_2 ;
  wire \counter_reg[31]_i_10_n_3 ;
  wire \counter_reg[31]_i_15_n_0 ;
  wire \counter_reg[31]_i_15_n_1 ;
  wire \counter_reg[31]_i_15_n_2 ;
  wire \counter_reg[31]_i_15_n_3 ;
  wire \counter_reg[31]_i_2_n_2 ;
  wire \counter_reg[31]_i_2_n_3 ;
  wire \counter_reg[31]_i_4_n_1 ;
  wire \counter_reg[31]_i_4_n_2 ;
  wire \counter_reg[31]_i_4_n_3 ;
  wire \counter_reg[31]_i_5_n_0 ;
  wire \counter_reg[31]_i_5_n_1 ;
  wire \counter_reg[31]_i_5_n_2 ;
  wire \counter_reg[31]_i_5_n_3 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [7:0]data;
  wire [7:0]data_IBUF;
  wire \data_c[0]_i_1_n_0 ;
  wire \data_c[12]_i_2_n_0 ;
  wire \data_c[12]_i_3_n_0 ;
  wire \data_c[12]_i_4_n_0 ;
  wire \data_c[12]_i_5_n_0 ;
  wire \data_c[16]_i_2_n_0 ;
  wire \data_c[16]_i_3_n_0 ;
  wire \data_c[16]_i_4_n_0 ;
  wire \data_c[16]_i_5_n_0 ;
  wire \data_c[1]_i_1_n_0 ;
  wire \data_c[20]_i_2_n_0 ;
  wire \data_c[20]_i_3_n_0 ;
  wire \data_c[20]_i_4_n_0 ;
  wire \data_c[20]_i_5_n_0 ;
  wire \data_c[24]_i_2_n_0 ;
  wire \data_c[24]_i_3_n_0 ;
  wire \data_c[24]_i_4_n_0 ;
  wire \data_c[24]_i_5_n_0 ;
  wire \data_c[28]_i_2_n_0 ;
  wire \data_c[28]_i_3_n_0 ;
  wire \data_c[28]_i_4_n_0 ;
  wire \data_c[28]_i_5_n_0 ;
  wire \data_c[2]_i_1_n_0 ;
  wire \data_c[2]_i_2_n_0 ;
  wire \data_c[31]_i_10_n_0 ;
  wire \data_c[31]_i_11_n_0 ;
  wire \data_c[31]_i_12_n_0 ;
  wire \data_c[31]_i_13_n_0 ;
  wire \data_c[31]_i_14_n_0 ;
  wire \data_c[31]_i_15_n_0 ;
  wire \data_c[31]_i_1_n_0 ;
  wire \data_c[31]_i_2_n_0 ;
  wire \data_c[31]_i_4_n_0 ;
  wire \data_c[31]_i_5_n_0 ;
  wire \data_c[31]_i_6_n_0 ;
  wire \data_c[31]_i_7_n_0 ;
  wire \data_c[31]_i_8_n_0 ;
  wire \data_c[31]_i_9_n_0 ;
  wire \data_c[4]_i_2_n_0 ;
  wire \data_c[4]_i_3_n_0 ;
  wire \data_c[4]_i_4_n_0 ;
  wire \data_c[4]_i_5_n_0 ;
  wire \data_c[8]_i_2_n_0 ;
  wire \data_c[8]_i_3_n_0 ;
  wire \data_c[8]_i_4_n_0 ;
  wire \data_c[8]_i_5_n_0 ;
  wire \data_c_reg[12]_i_1_n_0 ;
  wire \data_c_reg[12]_i_1_n_1 ;
  wire \data_c_reg[12]_i_1_n_2 ;
  wire \data_c_reg[12]_i_1_n_3 ;
  wire \data_c_reg[16]_i_1_n_0 ;
  wire \data_c_reg[16]_i_1_n_1 ;
  wire \data_c_reg[16]_i_1_n_2 ;
  wire \data_c_reg[16]_i_1_n_3 ;
  wire \data_c_reg[20]_i_1_n_0 ;
  wire \data_c_reg[20]_i_1_n_1 ;
  wire \data_c_reg[20]_i_1_n_2 ;
  wire \data_c_reg[20]_i_1_n_3 ;
  wire \data_c_reg[24]_i_1_n_0 ;
  wire \data_c_reg[24]_i_1_n_1 ;
  wire \data_c_reg[24]_i_1_n_2 ;
  wire \data_c_reg[24]_i_1_n_3 ;
  wire \data_c_reg[28]_i_1_n_0 ;
  wire \data_c_reg[28]_i_1_n_1 ;
  wire \data_c_reg[28]_i_1_n_2 ;
  wire \data_c_reg[28]_i_1_n_3 ;
  wire \data_c_reg[31]_i_3_n_2 ;
  wire \data_c_reg[31]_i_3_n_3 ;
  wire \data_c_reg[4]_i_1_n_0 ;
  wire \data_c_reg[4]_i_1_n_1 ;
  wire \data_c_reg[4]_i_1_n_2 ;
  wire \data_c_reg[4]_i_1_n_3 ;
  wire \data_c_reg[8]_i_1_n_0 ;
  wire \data_c_reg[8]_i_1_n_1 ;
  wire \data_c_reg[8]_i_1_n_2 ;
  wire \data_c_reg[8]_i_1_n_3 ;
  wire \data_c_reg_n_0_[0] ;
  wire \data_c_reg_n_0_[10] ;
  wire \data_c_reg_n_0_[11] ;
  wire \data_c_reg_n_0_[12] ;
  wire \data_c_reg_n_0_[13] ;
  wire \data_c_reg_n_0_[14] ;
  wire \data_c_reg_n_0_[15] ;
  wire \data_c_reg_n_0_[16] ;
  wire \data_c_reg_n_0_[17] ;
  wire \data_c_reg_n_0_[18] ;
  wire \data_c_reg_n_0_[19] ;
  wire \data_c_reg_n_0_[1] ;
  wire \data_c_reg_n_0_[20] ;
  wire \data_c_reg_n_0_[21] ;
  wire \data_c_reg_n_0_[22] ;
  wire \data_c_reg_n_0_[23] ;
  wire \data_c_reg_n_0_[24] ;
  wire \data_c_reg_n_0_[25] ;
  wire \data_c_reg_n_0_[26] ;
  wire \data_c_reg_n_0_[27] ;
  wire \data_c_reg_n_0_[28] ;
  wire \data_c_reg_n_0_[29] ;
  wire \data_c_reg_n_0_[2] ;
  wire \data_c_reg_n_0_[30] ;
  wire \data_c_reg_n_0_[31] ;
  wire \data_c_reg_n_0_[3] ;
  wire \data_c_reg_n_0_[4] ;
  wire \data_c_reg_n_0_[5] ;
  wire \data_c_reg_n_0_[6] ;
  wire \data_c_reg_n_0_[7] ;
  wire \data_c_reg_n_0_[8] ;
  wire \data_c_reg_n_0_[9] ;
  wire [31:0]flag;
  wire \flag[0]_i_1_n_0 ;
  wire \flag[31]_i_1_n_0 ;
  wire \flag[31]_i_2_n_0 ;
  wire \flag_reg[12]_i_1_n_0 ;
  wire \flag_reg[12]_i_1_n_1 ;
  wire \flag_reg[12]_i_1_n_2 ;
  wire \flag_reg[12]_i_1_n_3 ;
  wire \flag_reg[16]_i_1_n_0 ;
  wire \flag_reg[16]_i_1_n_1 ;
  wire \flag_reg[16]_i_1_n_2 ;
  wire \flag_reg[16]_i_1_n_3 ;
  wire \flag_reg[20]_i_1_n_0 ;
  wire \flag_reg[20]_i_1_n_1 ;
  wire \flag_reg[20]_i_1_n_2 ;
  wire \flag_reg[20]_i_1_n_3 ;
  wire \flag_reg[24]_i_1_n_0 ;
  wire \flag_reg[24]_i_1_n_1 ;
  wire \flag_reg[24]_i_1_n_2 ;
  wire \flag_reg[24]_i_1_n_3 ;
  wire \flag_reg[28]_i_1_n_0 ;
  wire \flag_reg[28]_i_1_n_1 ;
  wire \flag_reg[28]_i_1_n_2 ;
  wire \flag_reg[28]_i_1_n_3 ;
  wire \flag_reg[31]_i_3_n_2 ;
  wire \flag_reg[31]_i_3_n_3 ;
  wire \flag_reg[4]_i_1_n_0 ;
  wire \flag_reg[4]_i_1_n_1 ;
  wire \flag_reg[4]_i_1_n_2 ;
  wire \flag_reg[4]_i_1_n_3 ;
  wire \flag_reg[8]_i_1_n_0 ;
  wire \flag_reg[8]_i_1_n_1 ;
  wire \flag_reg[8]_i_1_n_2 ;
  wire \flag_reg[8]_i_1_n_3 ;
  wire [31:1]in22;
  wire [31:1]in23;
  wire [31:1]in7;
  wire [31:1]in9;
  wire [31:0]p_0_in;
  wire rd;
  wire rd0;
  wire rd_OBUF;
  wire rd_i_1_n_0;
  wire scl;
  wire scl1;
  wire scl_OBUF;
  wire scl_i_10_n_0;
  wire scl_i_1_n_0;
  wire scl_i_2_n_0;
  wire scl_i_3_n_0;
  wire scl_i_4_n_0;
  wire scl_i_5_n_0;
  wire scl_i_6_n_0;
  wire scl_i_7_n_0;
  wire scl_i_8_n_0;
  wire scl_i_9_n_0;
  wire sda;
  wire sda_IBUF;
  wire sda_IOBUF_inst_i_2_n_0;
  wire sda_OBUF;
  wire sda_TRI;
  wire [31:0]sda_c;
  wire sda_c0;
  wire \sda_c[31]_i_1_n_0 ;
  wire \sda_c[31]_i_3_n_0 ;
  wire \sda_c[31]_i_6_n_0 ;
  wire \sda_c[4]_i_4_n_0 ;
  wire \sda_c_reg[12]_i_2_n_0 ;
  wire \sda_c_reg[12]_i_2_n_1 ;
  wire \sda_c_reg[12]_i_2_n_2 ;
  wire \sda_c_reg[12]_i_2_n_3 ;
  wire \sda_c_reg[12]_i_3_n_0 ;
  wire \sda_c_reg[12]_i_3_n_1 ;
  wire \sda_c_reg[12]_i_3_n_2 ;
  wire \sda_c_reg[12]_i_3_n_3 ;
  wire \sda_c_reg[16]_i_2_n_0 ;
  wire \sda_c_reg[16]_i_2_n_1 ;
  wire \sda_c_reg[16]_i_2_n_2 ;
  wire \sda_c_reg[16]_i_2_n_3 ;
  wire \sda_c_reg[16]_i_3_n_0 ;
  wire \sda_c_reg[16]_i_3_n_1 ;
  wire \sda_c_reg[16]_i_3_n_2 ;
  wire \sda_c_reg[16]_i_3_n_3 ;
  wire \sda_c_reg[20]_i_2_n_0 ;
  wire \sda_c_reg[20]_i_2_n_1 ;
  wire \sda_c_reg[20]_i_2_n_2 ;
  wire \sda_c_reg[20]_i_2_n_3 ;
  wire \sda_c_reg[20]_i_3_n_0 ;
  wire \sda_c_reg[20]_i_3_n_1 ;
  wire \sda_c_reg[20]_i_3_n_2 ;
  wire \sda_c_reg[20]_i_3_n_3 ;
  wire \sda_c_reg[24]_i_2_n_0 ;
  wire \sda_c_reg[24]_i_2_n_1 ;
  wire \sda_c_reg[24]_i_2_n_2 ;
  wire \sda_c_reg[24]_i_2_n_3 ;
  wire \sda_c_reg[24]_i_3_n_0 ;
  wire \sda_c_reg[24]_i_3_n_1 ;
  wire \sda_c_reg[24]_i_3_n_2 ;
  wire \sda_c_reg[24]_i_3_n_3 ;
  wire \sda_c_reg[28]_i_2_n_0 ;
  wire \sda_c_reg[28]_i_2_n_1 ;
  wire \sda_c_reg[28]_i_2_n_2 ;
  wire \sda_c_reg[28]_i_2_n_3 ;
  wire \sda_c_reg[28]_i_3_n_0 ;
  wire \sda_c_reg[28]_i_3_n_1 ;
  wire \sda_c_reg[28]_i_3_n_2 ;
  wire \sda_c_reg[28]_i_3_n_3 ;
  wire \sda_c_reg[31]_i_4_n_2 ;
  wire \sda_c_reg[31]_i_4_n_3 ;
  wire \sda_c_reg[31]_i_5_n_2 ;
  wire \sda_c_reg[31]_i_5_n_3 ;
  wire \sda_c_reg[4]_i_2_n_0 ;
  wire \sda_c_reg[4]_i_2_n_1 ;
  wire \sda_c_reg[4]_i_2_n_2 ;
  wire \sda_c_reg[4]_i_2_n_3 ;
  wire \sda_c_reg[4]_i_3_n_0 ;
  wire \sda_c_reg[4]_i_3_n_1 ;
  wire \sda_c_reg[4]_i_3_n_2 ;
  wire \sda_c_reg[4]_i_3_n_3 ;
  wire \sda_c_reg[8]_i_2_n_0 ;
  wire \sda_c_reg[8]_i_2_n_1 ;
  wire \sda_c_reg[8]_i_2_n_2 ;
  wire \sda_c_reg[8]_i_2_n_3 ;
  wire \sda_c_reg[8]_i_3_n_0 ;
  wire \sda_c_reg[8]_i_3_n_1 ;
  wire \sda_c_reg[8]_i_3_n_2 ;
  wire \sda_c_reg[8]_i_3_n_3 ;
  wire \sda_c_reg_n_0_[0] ;
  wire \sda_c_reg_n_0_[10] ;
  wire \sda_c_reg_n_0_[11] ;
  wire \sda_c_reg_n_0_[12] ;
  wire \sda_c_reg_n_0_[13] ;
  wire \sda_c_reg_n_0_[14] ;
  wire \sda_c_reg_n_0_[15] ;
  wire \sda_c_reg_n_0_[16] ;
  wire \sda_c_reg_n_0_[17] ;
  wire \sda_c_reg_n_0_[18] ;
  wire \sda_c_reg_n_0_[19] ;
  wire \sda_c_reg_n_0_[1] ;
  wire \sda_c_reg_n_0_[20] ;
  wire \sda_c_reg_n_0_[21] ;
  wire \sda_c_reg_n_0_[22] ;
  wire \sda_c_reg_n_0_[23] ;
  wire \sda_c_reg_n_0_[24] ;
  wire \sda_c_reg_n_0_[25] ;
  wire \sda_c_reg_n_0_[26] ;
  wire \sda_c_reg_n_0_[27] ;
  wire \sda_c_reg_n_0_[28] ;
  wire \sda_c_reg_n_0_[29] ;
  wire \sda_c_reg_n_0_[2] ;
  wire \sda_c_reg_n_0_[30] ;
  wire \sda_c_reg_n_0_[31] ;
  wire \sda_c_reg_n_0_[3] ;
  wire \sda_c_reg_n_0_[4] ;
  wire \sda_c_reg_n_0_[5] ;
  wire \sda_c_reg_n_0_[6] ;
  wire \sda_c_reg_n_0_[7] ;
  wire \sda_c_reg_n_0_[8] ;
  wire \sda_c_reg_n_0_[9] ;
  wire start;
  wire start_IBUF;
  wire stop;
  wire stop_IBUF;
  wire wd;
  wire wd_OBUF;
  wire wd_OBUFT_inst_i_2_n_0;
  wire wd_OBUFT_inst_i_3_n_0;
  wire wd_OBUFT_inst_i_4_n_0;
  wire wd_TRI;
  wire wd_tristate_oe_i_10_n_0;
  wire wd_tristate_oe_i_11_n_0;
  wire wd_tristate_oe_i_12_n_0;
  wire wd_tristate_oe_i_13_n_0;
  wire wd_tristate_oe_i_15_n_0;
  wire wd_tristate_oe_i_16_n_0;
  wire wd_tristate_oe_i_17_n_0;
  wire wd_tristate_oe_i_18_n_0;
  wire wd_tristate_oe_i_1_n_0;
  wire wd_tristate_oe_i_2_n_0;
  wire wd_tristate_oe_i_3_n_0;
  wire wd_tristate_oe_i_4_n_0;
  wire wd_tristate_oe_i_5_n_0;
  wire wd_tristate_oe_i_6_n_0;
  wire wd_tristate_oe_i_7_n_0;
  wire wd_tristate_oe_i_8_n_0;
  wire wd_tristate_oe_i_9_n_0;
  wire wd_tristate_oe_reg_i_14_n_0;
  wire we;
  wire we_OBUF;
  wire we_i_1_n_0;
  wire we_i_2_n_0;
  wire we_i_3_n_0;
  wire we_i_4_n_0;
  wire [3:3]\NLW_addr_c_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_15_O_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_data_c_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_c_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_flag_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_flag_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_sda_c_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_sda_c_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_sda_c_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_sda_c_reg[31]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(cmd_IBUF),
        .I2(stop_IBUF),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(cmd_IBUF),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(stop_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[9]_i_3_n_0 ),
        .I1(start_IBUF),
        .I2(sda_c0),
        .I3(\FSM_onehot_state[9]_i_4_n_0 ),
        .I4(\FSM_onehot_state[9]_i_5_n_0 ),
        .I5(\FSM_onehot_state[9]_i_6_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_10 
       (.I0(addr_c_reg__0[7]),
        .I1(addr_c_reg__0[27]),
        .I2(addr_c_reg__0[23]),
        .I3(addr_c_reg__0[25]),
        .I4(addr_c_reg__0[26]),
        .I5(addr_c_reg__0[11]),
        .O(\FSM_onehot_state[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_11 
       (.I0(in23[24]),
        .I1(in23[25]),
        .I2(in23[29]),
        .I3(in23[26]),
        .I4(in23[28]),
        .I5(in23[27]),
        .O(\FSM_onehot_state[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[9]_i_12 
       (.I0(in23[30]),
        .I1(in23[31]),
        .I2(in23[1]),
        .I3(\sda_c_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(in23[3]),
        .O(\FSM_onehot_state[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[9]_i_13 
       (.I0(in23[6]),
        .I1(in23[9]),
        .I2(in23[8]),
        .I3(in23[7]),
        .I4(in23[11]),
        .I5(in23[10]),
        .O(\FSM_onehot_state[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_14 
       (.I0(in23[17]),
        .I1(in23[16]),
        .I2(in23[15]),
        .I3(in23[14]),
        .I4(in23[13]),
        .I5(in23[12]),
        .O(\FSM_onehot_state[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_15 
       (.I0(in23[23]),
        .I1(in23[22]),
        .I2(in23[21]),
        .I3(in23[20]),
        .I4(in23[19]),
        .I5(in23[18]),
        .O(\FSM_onehot_state[9]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_16 
       (.I0(flag[9]),
        .I1(flag[20]),
        .I2(flag[1]),
        .I3(flag[3]),
        .I4(\FSM_onehot_state[9]_i_29_n_0 ),
        .O(\FSM_onehot_state[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_17 
       (.I0(\FSM_onehot_state[9]_i_30_n_0 ),
        .I1(flag[13]),
        .I2(flag[6]),
        .I3(flag[28]),
        .I4(flag[7]),
        .I5(wd_tristate_oe_i_11_n_0),
        .O(\FSM_onehot_state[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[9]_i_18 
       (.I0(flag[27]),
        .I1(flag[23]),
        .I2(flag[12]),
        .I3(flag[21]),
        .I4(flag[24]),
        .I5(flag[26]),
        .O(\FSM_onehot_state[9]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[9]_i_19 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[9]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(stop_IBUF),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[9]_i_20 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \FSM_onehot_state[9]_i_21 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\data_c_reg_n_0_[10] ),
        .I3(\data_c_reg_n_0_[25] ),
        .I4(\data_c_reg_n_0_[3] ),
        .I5(\data_c_reg_n_0_[4] ),
        .O(\FSM_onehot_state[9]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_22 
       (.I0(\data_c_reg_n_0_[26] ),
        .I1(\data_c_reg_n_0_[8] ),
        .I2(\data_c_reg_n_0_[24] ),
        .I3(\data_c_reg_n_0_[19] ),
        .I4(\FSM_onehot_state[9]_i_31_n_0 ),
        .O(\FSM_onehot_state[9]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_23 
       (.I0(\data_c_reg_n_0_[21] ),
        .I1(\data_c_reg_n_0_[22] ),
        .I2(\data_c_reg_n_0_[18] ),
        .I3(\data_c_reg_n_0_[6] ),
        .I4(\FSM_onehot_state[9]_i_32_n_0 ),
        .O(\FSM_onehot_state[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[9]_i_24 
       (.I0(\data_c_reg_n_0_[15] ),
        .I1(\data_c_reg_n_0_[13] ),
        .I2(\data_c_reg_n_0_[27] ),
        .I3(\data_c_reg_n_0_[9] ),
        .I4(\FSM_onehot_state[9]_i_33_n_0 ),
        .I5(\FSM_onehot_state[9]_i_34_n_0 ),
        .O(\FSM_onehot_state[9]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_25 
       (.I0(addr_c_reg__0[6]),
        .I1(addr_c_reg__0[24]),
        .I2(addr_c_reg__0[28]),
        .I3(addr_c_reg[2]),
        .O(\FSM_onehot_state[9]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_26 
       (.I0(addr_c_reg__0[5]),
        .I1(addr_c_reg__0[21]),
        .I2(addr_c_reg[1]),
        .I3(addr_c_reg__0[8]),
        .O(\FSM_onehot_state[9]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_27 
       (.I0(addr_c_reg__0[10]),
        .I1(addr_c_reg__0[20]),
        .I2(addr_c_reg__0[19]),
        .I3(addr_c_reg__0[16]),
        .O(\FSM_onehot_state[9]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_28 
       (.I0(addr_c_reg__0[18]),
        .I1(addr_c_reg__0[9]),
        .I2(addr_c_reg__0[29]),
        .I3(addr_c_reg__0[31]),
        .I4(\FSM_onehot_state[9]_i_35_n_0 ),
        .O(\FSM_onehot_state[9]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_29 
       (.I0(flag[31]),
        .I1(flag[11]),
        .I2(flag[18]),
        .I3(flag[4]),
        .O(\FSM_onehot_state[9]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h8888888A)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(\data_c[31]_i_4_n_0 ),
        .I1(\FSM_onehot_state[9]_i_7_n_0 ),
        .I2(\FSM_onehot_state[9]_i_8_n_0 ),
        .I3(\FSM_onehot_state[9]_i_9_n_0 ),
        .I4(\FSM_onehot_state[9]_i_10_n_0 ),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state[9]_i_30 
       (.I0(flag[10]),
        .I1(flag[8]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(flag[29]),
        .O(\FSM_onehot_state[9]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_31 
       (.I0(\data_c_reg_n_0_[31] ),
        .I1(\data_c_reg_n_0_[2] ),
        .I2(\data_c_reg_n_0_[7] ),
        .I3(\data_c_reg_n_0_[20] ),
        .O(\FSM_onehot_state[9]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_32 
       (.I0(\data_c_reg_n_0_[16] ),
        .I1(\data_c_reg_n_0_[17] ),
        .I2(\data_c_reg_n_0_[12] ),
        .I3(\data_c_reg_n_0_[14] ),
        .O(\FSM_onehot_state[9]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_33 
       (.I0(\data_c_reg_n_0_[30] ),
        .I1(\data_c_reg_n_0_[23] ),
        .I2(\data_c_reg_n_0_[28] ),
        .I3(\data_c_reg_n_0_[5] ),
        .O(\FSM_onehot_state[9]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_34 
       (.I0(\data_c_reg_n_0_[1] ),
        .I1(\data_c_reg_n_0_[0] ),
        .I2(\data_c_reg_n_0_[11] ),
        .I3(\data_c_reg_n_0_[29] ),
        .O(\FSM_onehot_state[9]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_35 
       (.I0(addr_c_reg__0[30]),
        .I1(addr_c_reg__0[4]),
        .I2(addr_c_reg__0[12]),
        .I3(addr_c_reg__0[14]),
        .O(\FSM_onehot_state[9]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(\FSM_onehot_state[9]_i_11_n_0 ),
        .I1(\FSM_onehot_state[9]_i_12_n_0 ),
        .I2(in23[5]),
        .I3(in23[2]),
        .I4(in23[4]),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(\FSM_onehot_state[9]_i_13_n_0 ),
        .I1(\FSM_onehot_state[9]_i_14_n_0 ),
        .I2(\FSM_onehot_state[9]_i_15_n_0 ),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(\FSM_onehot_state[9]_i_16_n_0 ),
        .I1(flag[17]),
        .I2(flag[2]),
        .I3(flag[14]),
        .I4(\FSM_onehot_state[9]_i_17_n_0 ),
        .I5(\FSM_onehot_state[9]_i_18_n_0 ),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEEE)) 
    \FSM_onehot_state[9]_i_7 
       (.I0(\FSM_onehot_state[9]_i_19_n_0 ),
        .I1(\FSM_onehot_state[9]_i_20_n_0 ),
        .I2(\FSM_onehot_state[9]_i_21_n_0 ),
        .I3(\FSM_onehot_state[9]_i_22_n_0 ),
        .I4(\FSM_onehot_state[9]_i_23_n_0 ),
        .I5(\FSM_onehot_state[9]_i_24_n_0 ),
        .O(\FSM_onehot_state[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_8 
       (.I0(addr_c_reg__0[17]),
        .I1(addr_c_reg__0[13]),
        .I2(addr_c_reg[0]),
        .I3(\FSM_onehot_state[9]_i_25_n_0 ),
        .I4(\FSM_onehot_state[9]_i_26_n_0 ),
        .O(\FSM_onehot_state[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_onehot_state[9]_i_9 
       (.I0(\FSM_onehot_state[9]_i_27_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(addr_c_reg__0[3]),
        .I3(addr_c_reg__0[22]),
        .I4(addr_c_reg__0[15]),
        .I5(\FSM_onehot_state[9]_i_28_n_0 ),
        .O(\FSM_onehot_state[9]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[8] ),
        .Q(sda_c0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(sda_c0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WR_ACK:0010000000,RW_CMD:0000001000,ADDRESS:0000000100,BEGINNING:0000000010,IDLE:0000000001,ENDING:0100000000,RD_DATA:0000100000,SEND_ACK:0001000000,WR_DATA:1000000000,RD_ACK:0000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[9]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(1'b0));
  IBUF \addr_IBUF[0]_inst 
       (.I(addr[0]),
        .O(addr_IBUF[0]));
  IBUF \addr_IBUF[1]_inst 
       (.I(addr[1]),
        .O(addr_IBUF[1]));
  IBUF \addr_IBUF[2]_inst 
       (.I(addr[2]),
        .O(addr_IBUF[2]));
  IBUF \addr_IBUF[3]_inst 
       (.I(addr[3]),
        .O(addr_IBUF[3]));
  IBUF \addr_IBUF[4]_inst 
       (.I(addr[4]),
        .O(addr_IBUF[4]));
  IBUF \addr_IBUF[5]_inst 
       (.I(addr[5]),
        .O(addr_IBUF[5]));
  IBUF \addr_IBUF[6]_inst 
       (.I(addr[6]),
        .O(addr_IBUF[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_c[0]_i_1 
       (.I0(\data_c[31]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\addr_c[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[0]_i_3 
       (.I0(addr_c_reg__0[3]),
        .O(\addr_c[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[0]_i_4 
       (.I0(addr_c_reg[2]),
        .O(\addr_c[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[0]_i_5 
       (.I0(addr_c_reg[1]),
        .O(\addr_c[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[0]_i_6 
       (.I0(addr_c_reg[0]),
        .O(\addr_c[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[12]_i_2 
       (.I0(addr_c_reg__0[15]),
        .O(\addr_c[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[12]_i_3 
       (.I0(addr_c_reg__0[14]),
        .O(\addr_c[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[12]_i_4 
       (.I0(addr_c_reg__0[13]),
        .O(\addr_c[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[12]_i_5 
       (.I0(addr_c_reg__0[12]),
        .O(\addr_c[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[16]_i_2 
       (.I0(addr_c_reg__0[19]),
        .O(\addr_c[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[16]_i_3 
       (.I0(addr_c_reg__0[18]),
        .O(\addr_c[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[16]_i_4 
       (.I0(addr_c_reg__0[17]),
        .O(\addr_c[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[16]_i_5 
       (.I0(addr_c_reg__0[16]),
        .O(\addr_c[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[20]_i_2 
       (.I0(addr_c_reg__0[23]),
        .O(\addr_c[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[20]_i_3 
       (.I0(addr_c_reg__0[22]),
        .O(\addr_c[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[20]_i_4 
       (.I0(addr_c_reg__0[21]),
        .O(\addr_c[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[20]_i_5 
       (.I0(addr_c_reg__0[20]),
        .O(\addr_c[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[24]_i_2 
       (.I0(addr_c_reg__0[27]),
        .O(\addr_c[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[24]_i_3 
       (.I0(addr_c_reg__0[26]),
        .O(\addr_c[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[24]_i_4 
       (.I0(addr_c_reg__0[25]),
        .O(\addr_c[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[24]_i_5 
       (.I0(addr_c_reg__0[24]),
        .O(\addr_c[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[28]_i_2 
       (.I0(addr_c_reg__0[31]),
        .O(\addr_c[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[28]_i_3 
       (.I0(addr_c_reg__0[30]),
        .O(\addr_c[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[28]_i_4 
       (.I0(addr_c_reg__0[29]),
        .O(\addr_c[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[28]_i_5 
       (.I0(addr_c_reg__0[28]),
        .O(\addr_c[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[4]_i_2 
       (.I0(addr_c_reg__0[7]),
        .O(\addr_c[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[4]_i_3 
       (.I0(addr_c_reg__0[6]),
        .O(\addr_c[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[4]_i_4 
       (.I0(addr_c_reg__0[5]),
        .O(\addr_c[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[4]_i_5 
       (.I0(addr_c_reg__0[4]),
        .O(\addr_c[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[8]_i_2 
       (.I0(addr_c_reg__0[11]),
        .O(\addr_c[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[8]_i_3 
       (.I0(addr_c_reg__0[10]),
        .O(\addr_c[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[8]_i_4 
       (.I0(addr_c_reg__0[9]),
        .O(\addr_c[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_c[8]_i_5 
       (.I0(addr_c_reg__0[8]),
        .O(\addr_c[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[0]_i_2_n_7 ),
        .Q(addr_c_reg[0]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\addr_c_reg[0]_i_2_n_0 ,\addr_c_reg[0]_i_2_n_1 ,\addr_c_reg[0]_i_2_n_2 ,\addr_c_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[0]_i_2_n_4 ,\addr_c_reg[0]_i_2_n_5 ,\addr_c_reg[0]_i_2_n_6 ,\addr_c_reg[0]_i_2_n_7 }),
        .S({\addr_c[0]_i_3_n_0 ,\addr_c[0]_i_4_n_0 ,\addr_c[0]_i_5_n_0 ,\addr_c[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[8]_i_1_n_5 ),
        .Q(addr_c_reg__0[10]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[8]_i_1_n_4 ),
        .Q(addr_c_reg__0[11]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[12]_i_1_n_7 ),
        .Q(addr_c_reg__0[12]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[12]_i_1 
       (.CI(\addr_c_reg[8]_i_1_n_0 ),
        .CO({\addr_c_reg[12]_i_1_n_0 ,\addr_c_reg[12]_i_1_n_1 ,\addr_c_reg[12]_i_1_n_2 ,\addr_c_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[12]_i_1_n_4 ,\addr_c_reg[12]_i_1_n_5 ,\addr_c_reg[12]_i_1_n_6 ,\addr_c_reg[12]_i_1_n_7 }),
        .S({\addr_c[12]_i_2_n_0 ,\addr_c[12]_i_3_n_0 ,\addr_c[12]_i_4_n_0 ,\addr_c[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[12]_i_1_n_6 ),
        .Q(addr_c_reg__0[13]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[12]_i_1_n_5 ),
        .Q(addr_c_reg__0[14]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[12]_i_1_n_4 ),
        .Q(addr_c_reg__0[15]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[16]_i_1_n_7 ),
        .Q(addr_c_reg__0[16]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[16]_i_1 
       (.CI(\addr_c_reg[12]_i_1_n_0 ),
        .CO({\addr_c_reg[16]_i_1_n_0 ,\addr_c_reg[16]_i_1_n_1 ,\addr_c_reg[16]_i_1_n_2 ,\addr_c_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[16]_i_1_n_4 ,\addr_c_reg[16]_i_1_n_5 ,\addr_c_reg[16]_i_1_n_6 ,\addr_c_reg[16]_i_1_n_7 }),
        .S({\addr_c[16]_i_2_n_0 ,\addr_c[16]_i_3_n_0 ,\addr_c[16]_i_4_n_0 ,\addr_c[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[16]_i_1_n_6 ),
        .Q(addr_c_reg__0[17]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[16]_i_1_n_5 ),
        .Q(addr_c_reg__0[18]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[16]_i_1_n_4 ),
        .Q(addr_c_reg__0[19]),
        .R(sda_c0));
  FDSE #(
    .INIT(1'b1)) 
    \addr_c_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[0]_i_2_n_6 ),
        .Q(addr_c_reg[1]),
        .S(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[20]_i_1_n_7 ),
        .Q(addr_c_reg__0[20]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[20]_i_1 
       (.CI(\addr_c_reg[16]_i_1_n_0 ),
        .CO({\addr_c_reg[20]_i_1_n_0 ,\addr_c_reg[20]_i_1_n_1 ,\addr_c_reg[20]_i_1_n_2 ,\addr_c_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[20]_i_1_n_4 ,\addr_c_reg[20]_i_1_n_5 ,\addr_c_reg[20]_i_1_n_6 ,\addr_c_reg[20]_i_1_n_7 }),
        .S({\addr_c[20]_i_2_n_0 ,\addr_c[20]_i_3_n_0 ,\addr_c[20]_i_4_n_0 ,\addr_c[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[20]_i_1_n_6 ),
        .Q(addr_c_reg__0[21]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[20]_i_1_n_5 ),
        .Q(addr_c_reg__0[22]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[20]_i_1_n_4 ),
        .Q(addr_c_reg__0[23]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[24]_i_1_n_7 ),
        .Q(addr_c_reg__0[24]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[24]_i_1 
       (.CI(\addr_c_reg[20]_i_1_n_0 ),
        .CO({\addr_c_reg[24]_i_1_n_0 ,\addr_c_reg[24]_i_1_n_1 ,\addr_c_reg[24]_i_1_n_2 ,\addr_c_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[24]_i_1_n_4 ,\addr_c_reg[24]_i_1_n_5 ,\addr_c_reg[24]_i_1_n_6 ,\addr_c_reg[24]_i_1_n_7 }),
        .S({\addr_c[24]_i_2_n_0 ,\addr_c[24]_i_3_n_0 ,\addr_c[24]_i_4_n_0 ,\addr_c[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[24]_i_1_n_6 ),
        .Q(addr_c_reg__0[25]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[24]_i_1_n_5 ),
        .Q(addr_c_reg__0[26]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[24]_i_1_n_4 ),
        .Q(addr_c_reg__0[27]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[28]_i_1_n_7 ),
        .Q(addr_c_reg__0[28]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[28]_i_1 
       (.CI(\addr_c_reg[24]_i_1_n_0 ),
        .CO({\NLW_addr_c_reg[28]_i_1_CO_UNCONNECTED [3],\addr_c_reg[28]_i_1_n_1 ,\addr_c_reg[28]_i_1_n_2 ,\addr_c_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[28]_i_1_n_4 ,\addr_c_reg[28]_i_1_n_5 ,\addr_c_reg[28]_i_1_n_6 ,\addr_c_reg[28]_i_1_n_7 }),
        .S({\addr_c[28]_i_2_n_0 ,\addr_c[28]_i_3_n_0 ,\addr_c[28]_i_4_n_0 ,\addr_c[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[28]_i_1_n_6 ),
        .Q(addr_c_reg__0[29]),
        .R(sda_c0));
  FDSE #(
    .INIT(1'b1)) 
    \addr_c_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[0]_i_2_n_5 ),
        .Q(addr_c_reg[2]),
        .S(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[28]_i_1_n_5 ),
        .Q(addr_c_reg__0[30]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[28]_i_1_n_4 ),
        .Q(addr_c_reg__0[31]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[0]_i_2_n_4 ),
        .Q(addr_c_reg__0[3]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[4]_i_1_n_7 ),
        .Q(addr_c_reg__0[4]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[4]_i_1 
       (.CI(\addr_c_reg[0]_i_2_n_0 ),
        .CO({\addr_c_reg[4]_i_1_n_0 ,\addr_c_reg[4]_i_1_n_1 ,\addr_c_reg[4]_i_1_n_2 ,\addr_c_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[4]_i_1_n_4 ,\addr_c_reg[4]_i_1_n_5 ,\addr_c_reg[4]_i_1_n_6 ,\addr_c_reg[4]_i_1_n_7 }),
        .S({\addr_c[4]_i_2_n_0 ,\addr_c[4]_i_3_n_0 ,\addr_c[4]_i_4_n_0 ,\addr_c[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[4]_i_1_n_6 ),
        .Q(addr_c_reg__0[5]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[4]_i_1_n_5 ),
        .Q(addr_c_reg__0[6]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[4]_i_1_n_4 ),
        .Q(addr_c_reg__0[7]),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[8]_i_1_n_7 ),
        .Q(addr_c_reg__0[8]),
        .R(sda_c0));
  CARRY4 \addr_c_reg[8]_i_1 
       (.CI(\addr_c_reg[4]_i_1_n_0 ),
        .CO({\addr_c_reg[8]_i_1_n_0 ,\addr_c_reg[8]_i_1_n_1 ,\addr_c_reg[8]_i_1_n_2 ,\addr_c_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\addr_c_reg[8]_i_1_n_4 ,\addr_c_reg[8]_i_1_n_5 ,\addr_c_reg[8]_i_1_n_6 ,\addr_c_reg[8]_i_1_n_7 }),
        .S({\addr_c[8]_i_2_n_0 ,\addr_c[8]_i_3_n_0 ,\addr_c[8]_i_4_n_0 ,\addr_c[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_c_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\addr_c[0]_i_1_n_0 ),
        .D(\addr_c_reg[8]_i_1_n_6 ),
        .Q(addr_c_reg__0[9]),
        .R(sda_c0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF cmd_IBUF_inst
       (.I(cmd),
        .O(cmd_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\counter[31]_i_3_n_0 ),
        .O(counter));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_11 
       (.I0(\sda_c_reg_n_0_[23] ),
        .I1(\sda_c_reg_n_0_[22] ),
        .O(\counter[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_12 
       (.I0(\sda_c_reg_n_0_[20] ),
        .I1(\sda_c_reg_n_0_[21] ),
        .O(\counter[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_13 
       (.I0(\sda_c_reg_n_0_[18] ),
        .I1(\sda_c_reg_n_0_[19] ),
        .O(\counter[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_14 
       (.I0(\sda_c_reg_n_0_[16] ),
        .I1(\sda_c_reg_n_0_[17] ),
        .O(\counter[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_16 
       (.I0(\sda_c_reg_n_0_[14] ),
        .I1(\sda_c_reg_n_0_[15] ),
        .O(\counter[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_17 
       (.I0(\sda_c_reg_n_0_[12] ),
        .I1(\sda_c_reg_n_0_[13] ),
        .O(\counter[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_18 
       (.I0(\sda_c_reg_n_0_[10] ),
        .I1(\sda_c_reg_n_0_[11] ),
        .O(\counter[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_19 
       (.I0(\sda_c_reg_n_0_[8] ),
        .I1(\sda_c_reg_n_0_[9] ),
        .O(\counter[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_20 
       (.I0(\sda_c_reg_n_0_[2] ),
        .I1(\sda_c_reg_n_0_[3] ),
        .O(\counter[31]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[31]_i_21 
       (.I0(\sda_c_reg_n_0_[1] ),
        .O(\counter[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_22 
       (.I0(\sda_c_reg_n_0_[6] ),
        .I1(\sda_c_reg_n_0_[7] ),
        .O(\counter[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_23 
       (.I0(\sda_c_reg_n_0_[4] ),
        .I1(\sda_c_reg_n_0_[5] ),
        .O(\counter[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[31]_i_24 
       (.I0(\sda_c_reg_n_0_[2] ),
        .I1(\sda_c_reg_n_0_[3] ),
        .O(\counter[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[31]_i_25 
       (.I0(\sda_c_reg_n_0_[1] ),
        .I1(\sda_c_reg_n_0_[0] ),
        .O(\counter[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \counter[31]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(scl1),
        .O(\counter[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_6 
       (.I0(\sda_c_reg_n_0_[30] ),
        .I1(\sda_c_reg_n_0_[31] ),
        .O(\counter[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_7 
       (.I0(\sda_c_reg_n_0_[28] ),
        .I1(\sda_c_reg_n_0_[29] ),
        .O(\counter[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_8 
       (.I0(\sda_c_reg_n_0_[26] ),
        .I1(\sda_c_reg_n_0_[27] ),
        .O(\counter[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[31]_i_9 
       (.I0(\sda_c_reg_n_0_[24] ),
        .I1(\sda_c_reg_n_0_[25] ),
        .O(\counter[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(scl_i_2_n_0),
        .O(\counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[10]),
        .Q(\counter_reg_n_0_[10] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(sda_c0));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[16]),
        .Q(\counter_reg_n_0_[16] ),
        .R(sda_c0));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[17]),
        .Q(\counter_reg_n_0_[17] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[18]),
        .Q(\counter_reg_n_0_[18] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[19]),
        .Q(\counter_reg_n_0_[19] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[20]),
        .Q(\counter_reg_n_0_[20] ),
        .R(sda_c0));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[21]),
        .Q(\counter_reg_n_0_[21] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[22]),
        .Q(\counter_reg_n_0_[22] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[23]),
        .Q(\counter_reg_n_0_[23] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[24]),
        .Q(\counter_reg_n_0_[24] ),
        .R(sda_c0));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[25]),
        .Q(\counter_reg_n_0_[25] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[26]),
        .Q(\counter_reg_n_0_[26] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[27]),
        .Q(\counter_reg_n_0_[27] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[28]),
        .Q(\counter_reg_n_0_[28] ),
        .R(sda_c0));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\counter_reg[28]_i_1_n_0 ,\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[29]),
        .Q(\counter_reg_n_0_[29] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[30]),
        .Q(\counter_reg_n_0_[30] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[31]),
        .Q(\counter_reg_n_0_[31] ),
        .R(sda_c0));
  CARRY4 \counter_reg[31]_i_10 
       (.CI(\counter_reg[31]_i_15_n_0 ),
        .CO({\counter_reg[31]_i_10_n_0 ,\counter_reg[31]_i_10_n_1 ,\counter_reg[31]_i_10_n_2 ,\counter_reg[31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_reg[31]_i_10_O_UNCONNECTED [3:0]),
        .S({\counter[31]_i_16_n_0 ,\counter[31]_i_17_n_0 ,\counter[31]_i_18_n_0 ,\counter[31]_i_19_n_0 }));
  CARRY4 \counter_reg[31]_i_15 
       (.CI(1'b0),
        .CO({\counter_reg[31]_i_15_n_0 ,\counter_reg[31]_i_15_n_1 ,\counter_reg[31]_i_15_n_2 ,\counter_reg[31]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\counter[31]_i_20_n_0 ,\counter[31]_i_21_n_0 }),
        .O(\NLW_counter_reg[31]_i_15_O_UNCONNECTED [3:0]),
        .S({\counter[31]_i_22_n_0 ,\counter[31]_i_23_n_0 ,\counter[31]_i_24_n_0 ,\counter[31]_i_25_n_0 }));
  CARRY4 \counter_reg[31]_i_2 
       (.CI(\counter_reg[28]_i_1_n_0 ),
        .CO({\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\counter_reg[31]_i_2_n_2 ,\counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],p_0_in[31:29]}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  CARRY4 \counter_reg[31]_i_4 
       (.CI(\counter_reg[31]_i_5_n_0 ),
        .CO({scl1,\counter_reg[31]_i_4_n_1 ,\counter_reg[31]_i_4_n_2 ,\counter_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\sda_c_reg_n_0_[31] ,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\counter[31]_i_6_n_0 ,\counter[31]_i_7_n_0 ,\counter[31]_i_8_n_0 ,\counter[31]_i_9_n_0 }));
  CARRY4 \counter_reg[31]_i_5 
       (.CI(\counter_reg[31]_i_10_n_0 ),
        .CO({\counter_reg[31]_i_5_n_0 ,\counter_reg[31]_i_5_n_1 ,\counter_reg[31]_i_5_n_2 ,\counter_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\counter[31]_i_11_n_0 ,\counter[31]_i_12_n_0 ,\counter[31]_i_13_n_0 ,\counter[31]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(sda_c0));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter[4]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[6]),
        .Q(\counter_reg_n_0_[6] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[7]),
        .Q(\counter_reg_n_0_[7] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[8]),
        .Q(\counter_reg_n_0_[8] ),
        .R(sda_c0));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_0_in[9]),
        .Q(\counter_reg_n_0_[9] ),
        .R(sda_c0));
  IBUF \data_IBUF[0]_inst 
       (.I(data[0]),
        .O(data_IBUF[0]));
  IBUF \data_IBUF[1]_inst 
       (.I(data[1]),
        .O(data_IBUF[1]));
  IBUF \data_IBUF[2]_inst 
       (.I(data[2]),
        .O(data_IBUF[2]));
  IBUF \data_IBUF[3]_inst 
       (.I(data[3]),
        .O(data_IBUF[3]));
  IBUF \data_IBUF[4]_inst 
       (.I(data[4]),
        .O(data_IBUF[4]));
  IBUF \data_IBUF[5]_inst 
       (.I(data[5]),
        .O(data_IBUF[5]));
  IBUF \data_IBUF[6]_inst 
       (.I(data[6]),
        .O(data_IBUF[6]));
  IBUF \data_IBUF[7]_inst 
       (.I(data[7]),
        .O(data_IBUF[7]));
  LUT5 #(
    .INIT(32'hAAFFFE00)) 
    \data_c[0]_i_1 
       (.I0(\data_c[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\data_c[31]_i_2_n_0 ),
        .I4(\data_c_reg_n_0_[0] ),
        .O(\data_c[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[12]_i_2 
       (.I0(\data_c_reg_n_0_[12] ),
        .O(\data_c[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[12]_i_3 
       (.I0(\data_c_reg_n_0_[11] ),
        .O(\data_c[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[12]_i_4 
       (.I0(\data_c_reg_n_0_[10] ),
        .O(\data_c[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[12]_i_5 
       (.I0(\data_c_reg_n_0_[9] ),
        .O(\data_c[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[16]_i_2 
       (.I0(\data_c_reg_n_0_[16] ),
        .O(\data_c[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[16]_i_3 
       (.I0(\data_c_reg_n_0_[15] ),
        .O(\data_c[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[16]_i_4 
       (.I0(\data_c_reg_n_0_[14] ),
        .O(\data_c[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[16]_i_5 
       (.I0(\data_c_reg_n_0_[13] ),
        .O(\data_c[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFFFEAA0000)) 
    \data_c[1]_i_1 
       (.I0(\data_c[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[1]),
        .I4(\data_c[31]_i_2_n_0 ),
        .I5(\data_c_reg_n_0_[1] ),
        .O(\data_c[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[20]_i_2 
       (.I0(\data_c_reg_n_0_[20] ),
        .O(\data_c[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[20]_i_3 
       (.I0(\data_c_reg_n_0_[19] ),
        .O(\data_c[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[20]_i_4 
       (.I0(\data_c_reg_n_0_[18] ),
        .O(\data_c[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[20]_i_5 
       (.I0(\data_c_reg_n_0_[17] ),
        .O(\data_c[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[24]_i_2 
       (.I0(\data_c_reg_n_0_[24] ),
        .O(\data_c[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[24]_i_3 
       (.I0(\data_c_reg_n_0_[23] ),
        .O(\data_c[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[24]_i_4 
       (.I0(\data_c_reg_n_0_[22] ),
        .O(\data_c[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[24]_i_5 
       (.I0(\data_c_reg_n_0_[21] ),
        .O(\data_c[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[28]_i_2 
       (.I0(\data_c_reg_n_0_[28] ),
        .O(\data_c[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[28]_i_3 
       (.I0(\data_c_reg_n_0_[27] ),
        .O(\data_c[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[28]_i_4 
       (.I0(\data_c_reg_n_0_[26] ),
        .O(\data_c[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[28]_i_5 
       (.I0(\data_c_reg_n_0_[25] ),
        .O(\data_c[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFFFEAA0000)) 
    \data_c[2]_i_1 
       (.I0(\data_c[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(in9[2]),
        .I4(\data_c[31]_i_2_n_0 ),
        .I5(\data_c_reg_n_0_[2] ),
        .O(\data_c[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \data_c[2]_i_2 
       (.I0(sda_c0),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\data_c[31]_i_4_n_0 ),
        .O(\data_c[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \data_c[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\data_c[31]_i_2_n_0 ),
        .O(\data_c[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_c[31]_i_10 
       (.I0(\sda_c_reg_n_0_[21] ),
        .I1(\sda_c_reg_n_0_[20] ),
        .I2(\sda_c_reg_n_0_[5] ),
        .I3(\sda_c_reg_n_0_[4] ),
        .I4(\data_c[31]_i_14_n_0 ),
        .O(\data_c[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_c[31]_i_11 
       (.I0(\sda_c_reg_n_0_[17] ),
        .I1(\sda_c_reg_n_0_[16] ),
        .I2(\sda_c_reg_n_0_[19] ),
        .I3(\sda_c_reg_n_0_[18] ),
        .I4(\data_c[31]_i_15_n_0 ),
        .O(\data_c[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_c[31]_i_12 
       (.I0(\sda_c_reg_n_0_[30] ),
        .I1(\sda_c_reg_n_0_[31] ),
        .I2(\sda_c_reg_n_0_[26] ),
        .I3(\sda_c_reg_n_0_[27] ),
        .O(\data_c[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_c[31]_i_13 
       (.I0(\sda_c_reg_n_0_[8] ),
        .I1(\sda_c_reg_n_0_[9] ),
        .I2(\sda_c_reg_n_0_[28] ),
        .I3(\sda_c_reg_n_0_[29] ),
        .O(\data_c[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_c[31]_i_14 
       (.I0(\sda_c_reg_n_0_[6] ),
        .I1(\sda_c_reg_n_0_[7] ),
        .I2(\sda_c_reg_n_0_[12] ),
        .I3(\sda_c_reg_n_0_[13] ),
        .O(\data_c[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_c[31]_i_15 
       (.I0(\sda_c_reg_n_0_[10] ),
        .I1(\sda_c_reg_n_0_[11] ),
        .I2(\sda_c_reg_n_0_[14] ),
        .I3(\sda_c_reg_n_0_[15] ),
        .O(\data_c[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F0E0)) 
    \data_c[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\data_c[31]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(sda_c0),
        .O(\data_c[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \data_c[31]_i_4 
       (.I0(\data_c[31]_i_8_n_0 ),
        .I1(\data_c[31]_i_9_n_0 ),
        .I2(\data_c[31]_i_10_n_0 ),
        .I3(\data_c[31]_i_11_n_0 ),
        .O(\data_c[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[31]_i_5 
       (.I0(\data_c_reg_n_0_[31] ),
        .O(\data_c[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[31]_i_6 
       (.I0(\data_c_reg_n_0_[30] ),
        .O(\data_c[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[31]_i_7 
       (.I0(\data_c_reg_n_0_[29] ),
        .O(\data_c[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \data_c[31]_i_8 
       (.I0(\sda_c_reg_n_0_[1] ),
        .I1(\sda_c_reg_n_0_[0] ),
        .I2(\sda_c_reg_n_0_[3] ),
        .I3(\sda_c_reg_n_0_[2] ),
        .I4(\data_c[31]_i_12_n_0 ),
        .O(\data_c[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_c[31]_i_9 
       (.I0(\sda_c_reg_n_0_[25] ),
        .I1(\sda_c_reg_n_0_[24] ),
        .I2(\sda_c_reg_n_0_[23] ),
        .I3(\sda_c_reg_n_0_[22] ),
        .I4(\data_c[31]_i_13_n_0 ),
        .O(\data_c[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[4]_i_2 
       (.I0(\data_c_reg_n_0_[4] ),
        .O(\data_c[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[4]_i_3 
       (.I0(\data_c_reg_n_0_[3] ),
        .O(\data_c[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[4]_i_4 
       (.I0(\data_c_reg_n_0_[2] ),
        .O(\data_c[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[4]_i_5 
       (.I0(\data_c_reg_n_0_[1] ),
        .O(\data_c[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[8]_i_2 
       (.I0(\data_c_reg_n_0_[8] ),
        .O(\data_c[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[8]_i_3 
       (.I0(\data_c_reg_n_0_[7] ),
        .O(\data_c[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[8]_i_4 
       (.I0(\data_c_reg_n_0_[6] ),
        .O(\data_c[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_c[8]_i_5 
       (.I0(\data_c_reg_n_0_[5] ),
        .O(\data_c[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_c[0]_i_1_n_0 ),
        .Q(\data_c_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[10]),
        .Q(\data_c_reg_n_0_[10] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[11]),
        .Q(\data_c_reg_n_0_[11] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[12]),
        .Q(\data_c_reg_n_0_[12] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[12]_i_1 
       (.CI(\data_c_reg[8]_i_1_n_0 ),
        .CO({\data_c_reg[12]_i_1_n_0 ,\data_c_reg[12]_i_1_n_1 ,\data_c_reg[12]_i_1_n_2 ,\data_c_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_c_reg_n_0_[12] ,\data_c_reg_n_0_[11] ,\data_c_reg_n_0_[10] ,\data_c_reg_n_0_[9] }),
        .O(in9[12:9]),
        .S({\data_c[12]_i_2_n_0 ,\data_c[12]_i_3_n_0 ,\data_c[12]_i_4_n_0 ,\data_c[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[13]),
        .Q(\data_c_reg_n_0_[13] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[14]),
        .Q(\data_c_reg_n_0_[14] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[15]),
        .Q(\data_c_reg_n_0_[15] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[16]),
        .Q(\data_c_reg_n_0_[16] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[16]_i_1 
       (.CI(\data_c_reg[12]_i_1_n_0 ),
        .CO({\data_c_reg[16]_i_1_n_0 ,\data_c_reg[16]_i_1_n_1 ,\data_c_reg[16]_i_1_n_2 ,\data_c_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_c_reg_n_0_[16] ,\data_c_reg_n_0_[15] ,\data_c_reg_n_0_[14] ,\data_c_reg_n_0_[13] }),
        .O(in9[16:13]),
        .S({\data_c[16]_i_2_n_0 ,\data_c[16]_i_3_n_0 ,\data_c[16]_i_4_n_0 ,\data_c[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[17]),
        .Q(\data_c_reg_n_0_[17] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[18]),
        .Q(\data_c_reg_n_0_[18] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[19]),
        .Q(\data_c_reg_n_0_[19] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_c[1]_i_1_n_0 ),
        .Q(\data_c_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[20]),
        .Q(\data_c_reg_n_0_[20] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[20]_i_1 
       (.CI(\data_c_reg[16]_i_1_n_0 ),
        .CO({\data_c_reg[20]_i_1_n_0 ,\data_c_reg[20]_i_1_n_1 ,\data_c_reg[20]_i_1_n_2 ,\data_c_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_c_reg_n_0_[20] ,\data_c_reg_n_0_[19] ,\data_c_reg_n_0_[18] ,\data_c_reg_n_0_[17] }),
        .O(in9[20:17]),
        .S({\data_c[20]_i_2_n_0 ,\data_c[20]_i_3_n_0 ,\data_c[20]_i_4_n_0 ,\data_c[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[21]),
        .Q(\data_c_reg_n_0_[21] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[22]),
        .Q(\data_c_reg_n_0_[22] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[23]),
        .Q(\data_c_reg_n_0_[23] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[24]),
        .Q(\data_c_reg_n_0_[24] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[24]_i_1 
       (.CI(\data_c_reg[20]_i_1_n_0 ),
        .CO({\data_c_reg[24]_i_1_n_0 ,\data_c_reg[24]_i_1_n_1 ,\data_c_reg[24]_i_1_n_2 ,\data_c_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_c_reg_n_0_[24] ,\data_c_reg_n_0_[23] ,\data_c_reg_n_0_[22] ,\data_c_reg_n_0_[21] }),
        .O(in9[24:21]),
        .S({\data_c[24]_i_2_n_0 ,\data_c[24]_i_3_n_0 ,\data_c[24]_i_4_n_0 ,\data_c[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[25]),
        .Q(\data_c_reg_n_0_[25] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[26]),
        .Q(\data_c_reg_n_0_[26] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[27]),
        .Q(\data_c_reg_n_0_[27] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[28]),
        .Q(\data_c_reg_n_0_[28] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[28]_i_1 
       (.CI(\data_c_reg[24]_i_1_n_0 ),
        .CO({\data_c_reg[28]_i_1_n_0 ,\data_c_reg[28]_i_1_n_1 ,\data_c_reg[28]_i_1_n_2 ,\data_c_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_c_reg_n_0_[28] ,\data_c_reg_n_0_[27] ,\data_c_reg_n_0_[26] ,\data_c_reg_n_0_[25] }),
        .O(in9[28:25]),
        .S({\data_c[28]_i_2_n_0 ,\data_c[28]_i_3_n_0 ,\data_c[28]_i_4_n_0 ,\data_c[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[29]),
        .Q(\data_c_reg_n_0_[29] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\data_c[2]_i_1_n_0 ),
        .Q(\data_c_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[30]),
        .Q(\data_c_reg_n_0_[30] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[31]),
        .Q(\data_c_reg_n_0_[31] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[31]_i_3 
       (.CI(\data_c_reg[28]_i_1_n_0 ),
        .CO({\NLW_data_c_reg[31]_i_3_CO_UNCONNECTED [3:2],\data_c_reg[31]_i_3_n_2 ,\data_c_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\data_c_reg_n_0_[30] ,\data_c_reg_n_0_[29] }),
        .O({\NLW_data_c_reg[31]_i_3_O_UNCONNECTED [3],in9[31:29]}),
        .S({1'b0,\data_c[31]_i_5_n_0 ,\data_c[31]_i_6_n_0 ,\data_c[31]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[3]),
        .Q(\data_c_reg_n_0_[3] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[4]),
        .Q(\data_c_reg_n_0_[4] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\data_c_reg[4]_i_1_n_0 ,\data_c_reg[4]_i_1_n_1 ,\data_c_reg[4]_i_1_n_2 ,\data_c_reg[4]_i_1_n_3 }),
        .CYINIT(\data_c_reg_n_0_[0] ),
        .DI({\data_c_reg_n_0_[4] ,\data_c_reg_n_0_[3] ,\data_c_reg_n_0_[2] ,\data_c_reg_n_0_[1] }),
        .O(in9[4:1]),
        .S({\data_c[4]_i_2_n_0 ,\data_c[4]_i_3_n_0 ,\data_c[4]_i_4_n_0 ,\data_c[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[5]),
        .Q(\data_c_reg_n_0_[5] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[6]),
        .Q(\data_c_reg_n_0_[6] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[7]),
        .Q(\data_c_reg_n_0_[7] ),
        .R(\data_c[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[8]),
        .Q(\data_c_reg_n_0_[8] ),
        .R(\data_c[31]_i_1_n_0 ));
  CARRY4 \data_c_reg[8]_i_1 
       (.CI(\data_c_reg[4]_i_1_n_0 ),
        .CO({\data_c_reg[8]_i_1_n_0 ,\data_c_reg[8]_i_1_n_1 ,\data_c_reg[8]_i_1_n_2 ,\data_c_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_c_reg_n_0_[8] ,\data_c_reg_n_0_[7] ,\data_c_reg_n_0_[6] ,\data_c_reg_n_0_[5] }),
        .O(in9[8:5]),
        .S({\data_c[8]_i_2_n_0 ,\data_c[8]_i_3_n_0 ,\data_c[8]_i_4_n_0 ,\data_c[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_c_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_c[31]_i_2_n_0 ),
        .D(in9[9]),
        .Q(\data_c_reg_n_0_[9] ),
        .R(\data_c[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \flag[0]_i_1 
       (.I0(flag[0]),
        .O(\flag[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \flag[31]_i_1 
       (.I0(sda_c0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\flag[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \flag[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(sda_c0),
        .O(\flag[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(\flag[0]_i_1_n_0 ),
        .Q(flag[0]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[10]),
        .Q(flag[10]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[11]),
        .Q(flag[11]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[12]),
        .Q(flag[12]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[12]_i_1 
       (.CI(\flag_reg[8]_i_1_n_0 ),
        .CO({\flag_reg[12]_i_1_n_0 ,\flag_reg[12]_i_1_n_1 ,\flag_reg[12]_i_1_n_2 ,\flag_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[12:9]),
        .S(flag[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[13]),
        .Q(flag[13]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[14]),
        .Q(flag[14]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[15]),
        .Q(flag[15]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[16]),
        .Q(flag[16]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[16]_i_1 
       (.CI(\flag_reg[12]_i_1_n_0 ),
        .CO({\flag_reg[16]_i_1_n_0 ,\flag_reg[16]_i_1_n_1 ,\flag_reg[16]_i_1_n_2 ,\flag_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[16:13]),
        .S(flag[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[17]),
        .Q(flag[17]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[18]),
        .Q(flag[18]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[19]),
        .Q(flag[19]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[1]),
        .Q(flag[1]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[20]),
        .Q(flag[20]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[20]_i_1 
       (.CI(\flag_reg[16]_i_1_n_0 ),
        .CO({\flag_reg[20]_i_1_n_0 ,\flag_reg[20]_i_1_n_1 ,\flag_reg[20]_i_1_n_2 ,\flag_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[20:17]),
        .S(flag[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[21]),
        .Q(flag[21]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[22]),
        .Q(flag[22]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[23]),
        .Q(flag[23]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[24]),
        .Q(flag[24]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[24]_i_1 
       (.CI(\flag_reg[20]_i_1_n_0 ),
        .CO({\flag_reg[24]_i_1_n_0 ,\flag_reg[24]_i_1_n_1 ,\flag_reg[24]_i_1_n_2 ,\flag_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[24:21]),
        .S(flag[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[25]),
        .Q(flag[25]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[26]),
        .Q(flag[26]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[27]),
        .Q(flag[27]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[28]),
        .Q(flag[28]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[28]_i_1 
       (.CI(\flag_reg[24]_i_1_n_0 ),
        .CO({\flag_reg[28]_i_1_n_0 ,\flag_reg[28]_i_1_n_1 ,\flag_reg[28]_i_1_n_2 ,\flag_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[28:25]),
        .S(flag[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[29]),
        .Q(flag[29]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[2]),
        .Q(flag[2]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[30]),
        .Q(flag[30]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[31]),
        .Q(flag[31]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[31]_i_3 
       (.CI(\flag_reg[28]_i_1_n_0 ),
        .CO({\NLW_flag_reg[31]_i_3_CO_UNCONNECTED [3:2],\flag_reg[31]_i_3_n_2 ,\flag_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_flag_reg[31]_i_3_O_UNCONNECTED [3],in7[31:29]}),
        .S({1'b0,flag[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[3]),
        .Q(flag[3]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[4]),
        .Q(flag[4]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\flag_reg[4]_i_1_n_0 ,\flag_reg[4]_i_1_n_1 ,\flag_reg[4]_i_1_n_2 ,\flag_reg[4]_i_1_n_3 }),
        .CYINIT(flag[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[4:1]),
        .S(flag[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[5]),
        .Q(flag[5]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[6]),
        .Q(flag[6]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[7]),
        .Q(flag[7]),
        .R(\flag[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[8]),
        .Q(flag[8]),
        .R(\flag[31]_i_1_n_0 ));
  CARRY4 \flag_reg[8]_i_1 
       (.CI(\flag_reg[4]_i_1_n_0 ),
        .CO({\flag_reg[8]_i_1_n_0 ,\flag_reg[8]_i_1_n_1 ,\flag_reg[8]_i_1_n_2 ,\flag_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[8:5]),
        .S(flag[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \flag_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\flag[31]_i_2_n_0 ),
        .D(in7[9]),
        .Q(flag[9]),
        .R(\flag[31]_i_1_n_0 ));
  OBUF rd_OBUF_inst
       (.I(rd_OBUF),
        .O(rd));
  LUT4 #(
    .INIT(16'hAAA8)) 
    rd_i_1
       (.I0(\data_c[31]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .O(rd_i_1_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    rd_i_2
       (.I0(we_OBUF),
        .I1(sda_IBUF),
        .O(rd0));
  FDRE #(
    .INIT(1'b0)) 
    rd_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_i_1_n_0),
        .D(rd0),
        .Q(rd_OBUF),
        .R(1'b0));
  OBUF scl_OBUF_inst
       (.I(scl_OBUF),
        .O(scl));
  LUT6 #(
    .INIT(64'hFFFFFFFF6A6AFF6A)) 
    scl_i_1
       (.I0(scl_OBUF),
        .I1(counter),
        .I2(scl_i_2_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(wd_tristate_oe_i_3_n_0),
        .I5(sda_c0),
        .O(scl_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_10
       (.I0(\counter_reg_n_0_[19] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[25] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(scl_i_10_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    scl_i_2
       (.I0(scl_i_3_n_0),
        .I1(scl_i_4_n_0),
        .I2(scl_i_5_n_0),
        .I3(scl_i_6_n_0),
        .O(scl_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    scl_i_3
       (.I0(\counter_reg_n_0_[15] ),
        .I1(\counter_reg_n_0_[21] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[22] ),
        .I4(scl_i_7_n_0),
        .O(scl_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    scl_i_4
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(scl_i_8_n_0),
        .O(scl_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    scl_i_5
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[18] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(scl_i_9_n_0),
        .O(scl_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    scl_i_6
       (.I0(\counter_reg_n_0_[14] ),
        .I1(\counter_reg_n_0_[23] ),
        .I2(\counter_reg_n_0_[31] ),
        .I3(\counter_reg_n_0_[30] ),
        .I4(scl_i_10_n_0),
        .O(scl_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_7
       (.I0(\counter_reg_n_0_[28] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[12] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(scl_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_8
       (.I0(\counter_reg_n_0_[27] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[29] ),
        .I3(\counter_reg_n_0_[24] ),
        .O(scl_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_9
       (.I0(\counter_reg_n_0_[16] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[17] ),
        .O(scl_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    scl_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .Q(scl_OBUF),
        .R(1'b0));
  IOBUF sda_IOBUF_inst
       (.I(sda_OBUF),
        .IO(sda),
        .O(sda_IBUF),
        .T(sda_TRI));
  LUT2 #(
    .INIT(4'h8)) 
    sda_IOBUF_inst_i_1
       (.I0(wd_OBUF),
        .I1(sda_IOBUF_inst_i_2_n_0),
        .O(sda_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    sda_IOBUF_inst_i_2
       (.I0(wd_TRI),
        .O(sda_IOBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sda_c[0]_i_1 
       (.I0(\sda_c_reg_n_0_[0] ),
        .O(sda_c[0]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[10]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[10]),
        .O(sda_c[10]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[11]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[11]),
        .O(sda_c[11]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[12]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[12]),
        .O(sda_c[12]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[13]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[13]),
        .O(sda_c[13]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[14]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[14]),
        .O(sda_c[14]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[15]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[15]),
        .O(sda_c[15]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[16]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[16]),
        .O(sda_c[16]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[17]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[17]),
        .O(sda_c[17]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[18]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[18]),
        .O(sda_c[18]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[19]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[19]),
        .O(sda_c[19]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[1]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[1]),
        .O(sda_c[1]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[20]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[20]),
        .O(sda_c[20]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[21]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[21]),
        .O(sda_c[21]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[22]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[22]),
        .O(sda_c[22]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[23]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[23]),
        .O(sda_c[23]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[24]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[24]),
        .O(sda_c[24]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[25]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[25]),
        .O(sda_c[25]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[26]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[26]),
        .O(sda_c[26]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[27]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[27]),
        .O(sda_c[27]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[28]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[28]),
        .O(sda_c[28]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[29]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[29]),
        .O(sda_c[29]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[2]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[2]),
        .O(sda_c[2]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[30]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[30]),
        .O(sda_c[30]));
  LUT2 #(
    .INIT(4'hB)) 
    \sda_c[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\sda_c[31]_i_3_n_0 ),
        .O(\sda_c[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE0EC)) 
    \sda_c[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in22[31]),
        .I2(in23[31]),
        .I3(\sda_c[31]_i_3_n_0 ),
        .O(sda_c[31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \sda_c[31]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\sda_c[31]_i_6_n_0 ),
        .O(\sda_c[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sda_c[31]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\sda_c[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFC44)) 
    \sda_c[3]_i_1 
       (.I0(\sda_c[31]_i_3_n_0 ),
        .I1(in22[3]),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(in23[3]),
        .O(sda_c[3]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[4]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[4]),
        .O(sda_c[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \sda_c[4]_i_4 
       (.I0(\sda_c_reg_n_0_[2] ),
        .I1(\data_c[31]_i_4_n_0 ),
        .O(\sda_c[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[5]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[5]),
        .O(sda_c[5]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[6]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[6]),
        .O(sda_c[6]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[7]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[7]),
        .O(sda_c[7]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[8]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[8]),
        .O(sda_c[8]));
  LUT4 #(
    .INIT(16'hCF88)) 
    \sda_c[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(in23[9]),
        .I2(\sda_c[31]_i_3_n_0 ),
        .I3(in22[9]),
        .O(sda_c[9]));
  FDSE #(
    .INIT(1'b1)) 
    \sda_c_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[0]),
        .Q(\sda_c_reg_n_0_[0] ),
        .S(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[10]),
        .Q(\sda_c_reg_n_0_[10] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[11]),
        .Q(\sda_c_reg_n_0_[11] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[12]),
        .Q(\sda_c_reg_n_0_[12] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[12]_i_2 
       (.CI(\sda_c_reg[8]_i_2_n_0 ),
        .CO({\sda_c_reg[12]_i_2_n_0 ,\sda_c_reg[12]_i_2_n_1 ,\sda_c_reg[12]_i_2_n_2 ,\sda_c_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[12:9]),
        .S({\sda_c_reg_n_0_[12] ,\sda_c_reg_n_0_[11] ,\sda_c_reg_n_0_[10] ,\sda_c_reg_n_0_[9] }));
  CARRY4 \sda_c_reg[12]_i_3 
       (.CI(\sda_c_reg[8]_i_3_n_0 ),
        .CO({\sda_c_reg[12]_i_3_n_0 ,\sda_c_reg[12]_i_3_n_1 ,\sda_c_reg[12]_i_3_n_2 ,\sda_c_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[12:9]),
        .S({\sda_c_reg_n_0_[12] ,\sda_c_reg_n_0_[11] ,\sda_c_reg_n_0_[10] ,\sda_c_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[13]),
        .Q(\sda_c_reg_n_0_[13] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[14]),
        .Q(\sda_c_reg_n_0_[14] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[15]),
        .Q(\sda_c_reg_n_0_[15] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[16]),
        .Q(\sda_c_reg_n_0_[16] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[16]_i_2 
       (.CI(\sda_c_reg[12]_i_2_n_0 ),
        .CO({\sda_c_reg[16]_i_2_n_0 ,\sda_c_reg[16]_i_2_n_1 ,\sda_c_reg[16]_i_2_n_2 ,\sda_c_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[16:13]),
        .S({\sda_c_reg_n_0_[16] ,\sda_c_reg_n_0_[15] ,\sda_c_reg_n_0_[14] ,\sda_c_reg_n_0_[13] }));
  CARRY4 \sda_c_reg[16]_i_3 
       (.CI(\sda_c_reg[12]_i_3_n_0 ),
        .CO({\sda_c_reg[16]_i_3_n_0 ,\sda_c_reg[16]_i_3_n_1 ,\sda_c_reg[16]_i_3_n_2 ,\sda_c_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[16:13]),
        .S({\sda_c_reg_n_0_[16] ,\sda_c_reg_n_0_[15] ,\sda_c_reg_n_0_[14] ,\sda_c_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[17]),
        .Q(\sda_c_reg_n_0_[17] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[18]),
        .Q(\sda_c_reg_n_0_[18] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[19]),
        .Q(\sda_c_reg_n_0_[19] ),
        .R(sda_c0));
  FDSE #(
    .INIT(1'b1)) 
    \sda_c_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[1]),
        .Q(\sda_c_reg_n_0_[1] ),
        .S(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[20]),
        .Q(\sda_c_reg_n_0_[20] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[20]_i_2 
       (.CI(\sda_c_reg[16]_i_2_n_0 ),
        .CO({\sda_c_reg[20]_i_2_n_0 ,\sda_c_reg[20]_i_2_n_1 ,\sda_c_reg[20]_i_2_n_2 ,\sda_c_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[20:17]),
        .S({\sda_c_reg_n_0_[20] ,\sda_c_reg_n_0_[19] ,\sda_c_reg_n_0_[18] ,\sda_c_reg_n_0_[17] }));
  CARRY4 \sda_c_reg[20]_i_3 
       (.CI(\sda_c_reg[16]_i_3_n_0 ),
        .CO({\sda_c_reg[20]_i_3_n_0 ,\sda_c_reg[20]_i_3_n_1 ,\sda_c_reg[20]_i_3_n_2 ,\sda_c_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[20:17]),
        .S({\sda_c_reg_n_0_[20] ,\sda_c_reg_n_0_[19] ,\sda_c_reg_n_0_[18] ,\sda_c_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[21]),
        .Q(\sda_c_reg_n_0_[21] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[22]),
        .Q(\sda_c_reg_n_0_[22] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[23]),
        .Q(\sda_c_reg_n_0_[23] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[24]),
        .Q(\sda_c_reg_n_0_[24] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[24]_i_2 
       (.CI(\sda_c_reg[20]_i_2_n_0 ),
        .CO({\sda_c_reg[24]_i_2_n_0 ,\sda_c_reg[24]_i_2_n_1 ,\sda_c_reg[24]_i_2_n_2 ,\sda_c_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[24:21]),
        .S({\sda_c_reg_n_0_[24] ,\sda_c_reg_n_0_[23] ,\sda_c_reg_n_0_[22] ,\sda_c_reg_n_0_[21] }));
  CARRY4 \sda_c_reg[24]_i_3 
       (.CI(\sda_c_reg[20]_i_3_n_0 ),
        .CO({\sda_c_reg[24]_i_3_n_0 ,\sda_c_reg[24]_i_3_n_1 ,\sda_c_reg[24]_i_3_n_2 ,\sda_c_reg[24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[24:21]),
        .S({\sda_c_reg_n_0_[24] ,\sda_c_reg_n_0_[23] ,\sda_c_reg_n_0_[22] ,\sda_c_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[25]),
        .Q(\sda_c_reg_n_0_[25] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[26]),
        .Q(\sda_c_reg_n_0_[26] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[27]),
        .Q(\sda_c_reg_n_0_[27] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[28]),
        .Q(\sda_c_reg_n_0_[28] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[28]_i_2 
       (.CI(\sda_c_reg[24]_i_2_n_0 ),
        .CO({\sda_c_reg[28]_i_2_n_0 ,\sda_c_reg[28]_i_2_n_1 ,\sda_c_reg[28]_i_2_n_2 ,\sda_c_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[28:25]),
        .S({\sda_c_reg_n_0_[28] ,\sda_c_reg_n_0_[27] ,\sda_c_reg_n_0_[26] ,\sda_c_reg_n_0_[25] }));
  CARRY4 \sda_c_reg[28]_i_3 
       (.CI(\sda_c_reg[24]_i_3_n_0 ),
        .CO({\sda_c_reg[28]_i_3_n_0 ,\sda_c_reg[28]_i_3_n_1 ,\sda_c_reg[28]_i_3_n_2 ,\sda_c_reg[28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[28:25]),
        .S({\sda_c_reg_n_0_[28] ,\sda_c_reg_n_0_[27] ,\sda_c_reg_n_0_[26] ,\sda_c_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[29]),
        .Q(\sda_c_reg_n_0_[29] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[2]),
        .Q(\sda_c_reg_n_0_[2] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[30]),
        .Q(\sda_c_reg_n_0_[30] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[31]),
        .Q(\sda_c_reg_n_0_[31] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[31]_i_4 
       (.CI(\sda_c_reg[28]_i_3_n_0 ),
        .CO({\NLW_sda_c_reg[31]_i_4_CO_UNCONNECTED [3:2],\sda_c_reg[31]_i_4_n_2 ,\sda_c_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sda_c_reg[31]_i_4_O_UNCONNECTED [3],in22[31:29]}),
        .S({1'b0,\sda_c_reg_n_0_[31] ,\sda_c_reg_n_0_[30] ,\sda_c_reg_n_0_[29] }));
  CARRY4 \sda_c_reg[31]_i_5 
       (.CI(\sda_c_reg[28]_i_2_n_0 ),
        .CO({\NLW_sda_c_reg[31]_i_5_CO_UNCONNECTED [3:2],\sda_c_reg[31]_i_5_n_2 ,\sda_c_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sda_c_reg[31]_i_5_O_UNCONNECTED [3],in23[31:29]}),
        .S({1'b0,\sda_c_reg_n_0_[31] ,\sda_c_reg_n_0_[30] ,\sda_c_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[3]),
        .Q(\sda_c_reg_n_0_[3] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[4]),
        .Q(\sda_c_reg_n_0_[4] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sda_c_reg[4]_i_2_n_0 ,\sda_c_reg[4]_i_2_n_1 ,\sda_c_reg[4]_i_2_n_2 ,\sda_c_reg[4]_i_2_n_3 }),
        .CYINIT(\sda_c_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[4:1]),
        .S({\sda_c_reg_n_0_[4] ,\sda_c_reg_n_0_[3] ,\sda_c_reg_n_0_[2] ,\sda_c_reg_n_0_[1] }));
  CARRY4 \sda_c_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\sda_c_reg[4]_i_3_n_0 ,\sda_c_reg[4]_i_3_n_1 ,\sda_c_reg[4]_i_3_n_2 ,\sda_c_reg[4]_i_3_n_3 }),
        .CYINIT(\sda_c_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[4:1]),
        .S({\sda_c_reg_n_0_[4] ,\sda_c_reg_n_0_[3] ,\sda_c[4]_i_4_n_0 ,\sda_c_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[5]),
        .Q(\sda_c_reg_n_0_[5] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[6]),
        .Q(\sda_c_reg_n_0_[6] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[7]),
        .Q(\sda_c_reg_n_0_[7] ),
        .R(sda_c0));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[8]),
        .Q(\sda_c_reg_n_0_[8] ),
        .R(sda_c0));
  CARRY4 \sda_c_reg[8]_i_2 
       (.CI(\sda_c_reg[4]_i_2_n_0 ),
        .CO({\sda_c_reg[8]_i_2_n_0 ,\sda_c_reg[8]_i_2_n_1 ,\sda_c_reg[8]_i_2_n_2 ,\sda_c_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in23[8:5]),
        .S({\sda_c_reg_n_0_[8] ,\sda_c_reg_n_0_[7] ,\sda_c_reg_n_0_[6] ,\sda_c_reg_n_0_[5] }));
  CARRY4 \sda_c_reg[8]_i_3 
       (.CI(\sda_c_reg[4]_i_3_n_0 ),
        .CO({\sda_c_reg[8]_i_3_n_0 ,\sda_c_reg[8]_i_3_n_1 ,\sda_c_reg[8]_i_3_n_2 ,\sda_c_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[8:5]),
        .S({\sda_c_reg_n_0_[8] ,\sda_c_reg_n_0_[7] ,\sda_c_reg_n_0_[6] ,\sda_c_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \sda_c_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\sda_c[31]_i_1_n_0 ),
        .D(sda_c[9]),
        .Q(\sda_c_reg_n_0_[9] ),
        .R(sda_c0));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  IBUF stop_IBUF_inst
       (.I(stop),
        .O(stop_IBUF));
  OBUFT wd_OBUFT_inst
       (.I(wd_OBUF),
        .O(wd),
        .T(wd_TRI));
  FDRE #(
    .INIT(1'b0)) 
    wd_OBUFT_inst_i_1
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(wd_OBUFT_inst_i_2_n_0),
        .Q(wd_TRI),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    wd_OBUFT_inst_i_2
       (.I0(wd_OBUFT_inst_i_3_n_0),
        .O(wd_OBUFT_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAEFEAEAEA20)) 
    wd_OBUFT_inst_i_3
       (.I0(wd_OBUFT_inst_i_4_n_0),
        .I1(wd_tristate_oe_i_3_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(wd_tristate_oe_i_4_n_0),
        .I4(wd_tristate_oe_i_5_n_0),
        .I5(sda_IOBUF_inst_i_2_n_0),
        .O(wd_OBUFT_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wd_OBUFT_inst_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(wd_OBUFT_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAA20)) 
    wd_tristate_oe_i_1
       (.I0(wd_tristate_oe_i_2_n_0),
        .I1(wd_tristate_oe_i_3_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(wd_tristate_oe_i_4_n_0),
        .I4(wd_tristate_oe_i_5_n_0),
        .I5(wd_OBUF),
        .O(wd_tristate_oe_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    wd_tristate_oe_i_10
       (.I0(in23[30]),
        .I1(in23[31]),
        .I2(\sda_c_reg_n_0_[0] ),
        .I3(in23[3]),
        .I4(in23[1]),
        .O(wd_tristate_oe_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wd_tristate_oe_i_11
       (.I0(flag[19]),
        .I1(flag[30]),
        .I2(flag[15]),
        .I3(flag[22]),
        .I4(wd_tristate_oe_i_15_n_0),
        .O(wd_tristate_oe_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wd_tristate_oe_i_12
       (.I0(flag[7]),
        .I1(flag[28]),
        .I2(flag[6]),
        .I3(flag[13]),
        .I4(\FSM_onehot_state[9]_i_30_n_0 ),
        .O(wd_tristate_oe_i_12_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    wd_tristate_oe_i_13
       (.I0(flag[14]),
        .I1(flag[2]),
        .I2(flag[17]),
        .I3(\FSM_onehot_state[9]_i_29_n_0 ),
        .I4(wd_tristate_oe_i_16_n_0),
        .O(wd_tristate_oe_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    wd_tristate_oe_i_15
       (.I0(flag[0]),
        .I1(flag[16]),
        .I2(flag[25]),
        .I3(flag[5]),
        .O(wd_tristate_oe_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    wd_tristate_oe_i_16
       (.I0(flag[3]),
        .I1(flag[1]),
        .I2(flag[20]),
        .I3(flag[9]),
        .O(wd_tristate_oe_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    wd_tristate_oe_i_17
       (.I0(addr_IBUF[3]),
        .I1(addr_IBUF[2]),
        .I2(addr_c_reg[1]),
        .I3(addr_IBUF[1]),
        .I4(addr_c_reg[0]),
        .I5(addr_IBUF[0]),
        .O(wd_tristate_oe_i_17_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    wd_tristate_oe_i_18
       (.I0(addr_IBUF[6]),
        .I1(addr_c_reg[1]),
        .I2(addr_IBUF[5]),
        .I3(addr_c_reg[0]),
        .I4(addr_IBUF[4]),
        .O(wd_tristate_oe_i_18_n_0));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    wd_tristate_oe_i_2
       (.I0(wd_tristate_oe_i_6_n_0),
        .I1(\data_c_reg_n_0_[2] ),
        .I2(wd_tristate_oe_i_7_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(wd_tristate_oe_i_8_n_0),
        .O(wd_tristate_oe_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    wd_tristate_oe_i_3
       (.I0(wd_tristate_oe_i_9_n_0),
        .I1(wd_tristate_oe_i_10_n_0),
        .I2(\FSM_onehot_state[9]_i_11_n_0 ),
        .I3(\FSM_onehot_state[9]_i_15_n_0 ),
        .I4(\FSM_onehot_state[9]_i_14_n_0 ),
        .I5(\FSM_onehot_state[9]_i_13_n_0 ),
        .O(wd_tristate_oe_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    wd_tristate_oe_i_4
       (.I0(\data_c[31]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[8] ),
        .O(wd_tristate_oe_i_4_n_0));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    wd_tristate_oe_i_5
       (.I0(sda_c0),
        .I1(\FSM_onehot_state[9]_i_18_n_0 ),
        .I2(wd_tristate_oe_i_11_n_0),
        .I3(wd_tristate_oe_i_12_n_0),
        .I4(wd_tristate_oe_i_13_n_0),
        .O(wd_tristate_oe_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    wd_tristate_oe_i_6
       (.I0(data_IBUF[7]),
        .I1(data_IBUF[6]),
        .I2(\data_c_reg_n_0_[1] ),
        .I3(data_IBUF[5]),
        .I4(\data_c_reg_n_0_[0] ),
        .I5(data_IBUF[4]),
        .O(wd_tristate_oe_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    wd_tristate_oe_i_7
       (.I0(data_IBUF[3]),
        .I1(data_IBUF[2]),
        .I2(\data_c_reg_n_0_[1] ),
        .I3(data_IBUF[1]),
        .I4(\data_c_reg_n_0_[0] ),
        .I5(data_IBUF[0]),
        .O(wd_tristate_oe_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    wd_tristate_oe_i_8
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(wd_tristate_oe_reg_i_14_n_0),
        .I2(stop_IBUF),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(cmd_IBUF),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(wd_tristate_oe_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    wd_tristate_oe_i_9
       (.I0(in23[5]),
        .I1(in23[2]),
        .I2(in23[4]),
        .O(wd_tristate_oe_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wd_tristate_oe_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(wd_tristate_oe_i_1_n_0),
        .Q(wd_OBUF),
        .R(1'b0));
  MUXF7 wd_tristate_oe_reg_i_14
       (.I0(wd_tristate_oe_i_17_n_0),
        .I1(wd_tristate_oe_i_18_n_0),
        .O(wd_tristate_oe_reg_i_14_n_0),
        .S(addr_c_reg[2]));
  OBUF we_OBUF_inst
       (.I(we_OBUF),
        .O(we));
  LUT1 #(
    .INIT(2'h1)) 
    we_OBUF_inst_i_1
       (.I0(sda_TRI),
        .O(we_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    we_i_1
       (.I0(we_i_2_n_0),
        .O(we_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFF8AA)) 
    we_i_2
       (.I0(we_OBUF),
        .I1(we_i_3_n_0),
        .I2(we_i_4_n_0),
        .I3(\data_c[31]_i_4_n_0 ),
        .I4(sda_c0),
        .O(we_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    we_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(we_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    we_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(we_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    we_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(we_i_1_n_0),
        .Q(sda_TRI),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

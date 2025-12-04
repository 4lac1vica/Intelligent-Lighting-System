// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 19 13:07:53 2025
// Host        : TinuPC04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_keyPad_Unit_0_0/design_1_keyPad_Unit_0_0_sim_netlist.v
// Design      : design_1_keyPad_Unit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_keyPad_Unit_0_0,keyPad_Unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "keyPad_Unit,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_keyPad_Unit_0_0
   (clk,
    reset,
    row_out,
    col_in,
    key_code,
    key_pulse);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output [3:0]row_out;
  input [3:0]col_in;
  output [3:0]key_code;
  output key_pulse;

  wire clk;
  wire [3:0]col_in;
  wire [3:0]key_code;
  wire key_pulse;
  wire reset;
  wire [3:0]row_out;

  design_1_keyPad_Unit_0_0_keyPad_Unit inst
       (.clk(clk),
        .col_in(col_in),
        .key_code(key_code),
        .key_pulse(key_pulse),
        .reset(reset),
        .row_out(row_out));
endmodule

(* ORIG_REF_NAME = "keyPad_Unit" *) 
module design_1_keyPad_Unit_0_0_keyPad_Unit
   (row_out,
    key_code,
    key_pulse,
    clk,
    reset,
    col_in);
  output [3:0]row_out;
  output [3:0]key_code;
  output key_pulse;
  input clk;
  input reset;
  input [3:0]col_in;

  wire clk;
  wire [3:0]col_in;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire [16:0]counter_0;
  wire [1:0]current_state;
  wire [16:1]data0;
  wire [3:0]key_code;
  wire key_pulse;
  wire key_pulse_i_1_n_0;
  wire key_pulse_i_2_n_0;
  wire [3:0]key_register;
  wire key_register0;
  wire [3:0]last_key;
  wire [1:0]next_state;
  wire [3:0]raw_key;
  wire reset;
  wire [3:0]row_out;
  wire scan_tick;
  wire scan_tick_reg_n_0;
  wire \stable_cnt[0]_i_1_n_0 ;
  wire \stable_cnt[1]_i_1_n_0 ;
  wire \stable_cnt_reg_n_0_[0] ;
  wire \stable_cnt_reg_n_0_[1] ;
  wire stable_key0;
  wire \stable_key[3]_i_2_n_0 ;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "s_row0:00,s_row1:01,s_row2:10,s_row3:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .CLR(reset),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "s_row0:00,s_row1:01,s_row2:10,s_row3:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .CLR(reset),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \counter[0]_i_1 
       (.I0(\counter[16]_i_5_n_0 ),
        .I1(\counter[16]_i_4_n_0 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_2_n_0 ),
        .I4(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[10]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[10]),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[11]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[11]),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[12]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[12]),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[13]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[13]),
        .O(counter_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[14]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[14]),
        .O(counter_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[15]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[15]),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[16]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[16]),
        .O(counter_0[16]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[16]_i_2 
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[12]),
        .I3(counter[11]),
        .O(\counter[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter[16]_i_3 
       (.I0(counter[14]),
        .I1(counter[13]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(\counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[16]_i_4 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[16]_i_5 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(counter[8]),
        .O(\counter[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[1]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[1]),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[2]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[2]),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[3]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[3]),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[4]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[5]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[5]),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[6]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[7]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[8]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[9]_i_1 
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .I5(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'h7F007F7FFFFFFF00)) 
    key_pulse_i_1
       (.I0(key_code[1]),
        .I1(key_code[0]),
        .I2(key_code[2]),
        .I3(key_pulse_i_2_n_0),
        .I4(last_key[3]),
        .I5(key_code[3]),
        .O(key_pulse_i_1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    key_pulse_i_2
       (.I0(key_code[0]),
        .I1(last_key[0]),
        .I2(last_key[2]),
        .I3(key_code[2]),
        .I4(last_key[1]),
        .I5(key_code[1]),
        .O(key_pulse_i_2_n_0));
  FDCE key_pulse_reg
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .CLR(reset),
        .D(key_pulse_i_1_n_0),
        .Q(key_pulse));
  LUT6 #(
    .INIT(64'hFFEBFFF9FEEFFEEF)) 
    \key_register[0]_i_1 
       (.I0(col_in[2]),
        .I1(col_in[0]),
        .I2(col_in[1]),
        .I3(col_in[3]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(raw_key[0]));
  LUT6 #(
    .INIT(64'hFEFDFFF9FEEDFFFB)) 
    \key_register[1]_i_1 
       (.I0(col_in[1]),
        .I1(col_in[0]),
        .I2(col_in[2]),
        .I3(col_in[3]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(raw_key[1]));
  LUT6 #(
    .INIT(64'hFEFFFFFDFEFBFEE9)) 
    \key_register[2]_i_1 
       (.I0(col_in[3]),
        .I1(col_in[2]),
        .I2(col_in[0]),
        .I3(col_in[1]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(raw_key[2]));
  LUT4 #(
    .INIT(16'h2AA2)) 
    \key_register[3]_i_1 
       (.I0(scan_tick_reg_n_0),
        .I1(\stable_key[3]_i_2_n_0 ),
        .I2(key_register[3]),
        .I3(raw_key[3]),
        .O(key_register0));
  LUT6 #(
    .INIT(64'hFEFFFEEBFFEFFEEB)) 
    \key_register[3]_i_2 
       (.I0(col_in[3]),
        .I1(col_in[2]),
        .I2(col_in[0]),
        .I3(col_in[1]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(raw_key[3]));
  FDPE #(
    .INIT(1'b1)) 
    \key_register_reg[0] 
       (.C(clk),
        .CE(key_register0),
        .D(raw_key[0]),
        .PRE(reset),
        .Q(key_register[0]));
  FDPE #(
    .INIT(1'b1)) 
    \key_register_reg[1] 
       (.C(clk),
        .CE(key_register0),
        .D(raw_key[1]),
        .PRE(reset),
        .Q(key_register[1]));
  FDPE #(
    .INIT(1'b1)) 
    \key_register_reg[2] 
       (.C(clk),
        .CE(key_register0),
        .D(raw_key[2]),
        .PRE(reset),
        .Q(key_register[2]));
  FDPE #(
    .INIT(1'b1)) 
    \key_register_reg[3] 
       (.C(clk),
        .CE(key_register0),
        .D(raw_key[3]),
        .PRE(reset),
        .Q(key_register[3]));
  FDPE #(
    .INIT(1'b1)) 
    \last_key_reg[0] 
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .D(key_code[0]),
        .PRE(reset),
        .Q(last_key[0]));
  FDPE #(
    .INIT(1'b1)) 
    \last_key_reg[1] 
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .D(key_code[1]),
        .PRE(reset),
        .Q(last_key[1]));
  FDPE #(
    .INIT(1'b1)) 
    \last_key_reg[2] 
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .D(key_code[2]),
        .PRE(reset),
        .Q(last_key[2]));
  FDPE #(
    .INIT(1'b1)) 
    \last_key_reg[3] 
       (.C(clk),
        .CE(scan_tick_reg_n_0),
        .D(key_code[3]),
        .PRE(reset),
        .Q(last_key[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \row_out[0]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(row_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \row_out[1]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(row_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \row_out[2]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(row_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \row_out[3]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(row_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    scan_tick_i_1
       (.I0(\counter[16]_i_2_n_0 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(\counter[16]_i_5_n_0 ),
        .I4(counter[0]),
        .O(scan_tick));
  FDCE scan_tick_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scan_tick),
        .Q(scan_tick_reg_n_0));
  LUT6 #(
    .INIT(64'hD55D555520020000)) 
    \stable_cnt[0]_i_1 
       (.I0(scan_tick_reg_n_0),
        .I1(\stable_cnt_reg_n_0_[1] ),
        .I2(raw_key[3]),
        .I3(key_register[3]),
        .I4(\stable_key[3]_i_2_n_0 ),
        .I5(\stable_cnt_reg_n_0_[0] ),
        .O(\stable_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF83030F830303030)) 
    \stable_cnt[1]_i_1 
       (.I0(\stable_cnt_reg_n_0_[0] ),
        .I1(scan_tick_reg_n_0),
        .I2(\stable_cnt_reg_n_0_[1] ),
        .I3(raw_key[3]),
        .I4(key_register[3]),
        .I5(\stable_key[3]_i_2_n_0 ),
        .O(\stable_cnt[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stable_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\stable_cnt[0]_i_1_n_0 ),
        .Q(\stable_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \stable_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\stable_cnt[1]_i_1_n_0 ),
        .Q(\stable_cnt_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'h0800000800000000)) 
    \stable_key[3]_i_1 
       (.I0(scan_tick_reg_n_0),
        .I1(\stable_cnt_reg_n_0_[1] ),
        .I2(\stable_cnt_reg_n_0_[0] ),
        .I3(raw_key[3]),
        .I4(key_register[3]),
        .I5(\stable_key[3]_i_2_n_0 ),
        .O(stable_key0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \stable_key[3]_i_2 
       (.I0(raw_key[0]),
        .I1(key_register[0]),
        .I2(key_register[2]),
        .I3(raw_key[2]),
        .I4(key_register[1]),
        .I5(raw_key[1]),
        .O(\stable_key[3]_i_2_n_0 ));
  FDPE \stable_key_reg[0] 
       (.C(clk),
        .CE(stable_key0),
        .D(key_register[0]),
        .PRE(reset),
        .Q(key_code[0]));
  FDPE \stable_key_reg[1] 
       (.C(clk),
        .CE(stable_key0),
        .D(key_register[1]),
        .PRE(reset),
        .Q(key_code[1]));
  FDPE \stable_key_reg[2] 
       (.C(clk),
        .CE(stable_key0),
        .D(key_register[2]),
        .PRE(reset),
        .Q(key_code[2]));
  FDPE \stable_key_reg[3] 
       (.C(clk),
        .CE(stable_key0),
        .D(key_register[3]),
        .PRE(reset),
        .Q(key_code[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

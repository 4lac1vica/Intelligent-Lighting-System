// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 19 13:07:53 2025
// Host        : TinuPC04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_keyPad_Unit_0_0/design_1_keyPad_Unit_0_0_stub.v
// Design      : design_1_keyPad_Unit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "keyPad_Unit,Vivado 2024.1" *)
module design_1_keyPad_Unit_0_0(clk, reset, row_out, col_in, key_code, key_pulse)
/* synthesis syn_black_box black_box_pad_pin="reset,row_out[3:0],col_in[3:0],key_code[3:0],key_pulse" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  output [3:0]row_out;
  input [3:0]col_in;
  output [3:0]key_code;
  output key_pulse;
endmodule

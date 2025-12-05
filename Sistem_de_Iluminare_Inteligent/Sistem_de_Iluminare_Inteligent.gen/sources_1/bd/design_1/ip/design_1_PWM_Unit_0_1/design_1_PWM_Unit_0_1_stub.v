// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Dec  4 17:20:30 2025
// Host        : TinuPC04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_PWM_Unit_0_1/design_1_PWM_Unit_0_1_stub.v
// Design      : design_1_PWM_Unit_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PWM_Unit,Vivado 2024.1" *)
module design_1_PWM_Unit_0_1(duty_cycle, clk, reset, pwm_signal)
/* synthesis syn_black_box black_box_pad_pin="duty_cycle[7:0],reset,pwm_signal" */
/* synthesis syn_force_seq_prim="clk" */;
  input [7:0]duty_cycle;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  output pwm_signal;
endmodule

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Dec  4 17:20:30 2025
-- Host        : TinuPC04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_PWM_Unit_0_1/design_1_PWM_Unit_0_1_stub.vhdl
-- Design      : design_1_PWM_Unit_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_PWM_Unit_0_1 is
  Port ( 
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );

end design_1_PWM_Unit_0_1;

architecture stub of design_1_PWM_Unit_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "duty_cycle[7:0],clk,reset,pwm_signal";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PWM_Unit,Vivado 2024.1";
begin
end;

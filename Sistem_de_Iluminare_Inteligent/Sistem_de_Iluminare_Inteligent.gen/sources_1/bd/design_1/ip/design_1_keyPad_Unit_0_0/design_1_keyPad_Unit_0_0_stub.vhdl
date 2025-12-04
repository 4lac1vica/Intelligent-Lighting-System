-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Nov 19 13:07:53 2025
-- Host        : TinuPC04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_keyPad_Unit_0_0/design_1_keyPad_Unit_0_0_stub.vhdl
-- Design      : design_1_keyPad_Unit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_keyPad_Unit_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    key_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_pulse : out STD_LOGIC
  );

end design_1_keyPad_Unit_0_0;

architecture stub of design_1_keyPad_Unit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,row_out[3:0],col_in[3:0],key_code[3:0],key_pulse";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "keyPad_Unit,Vivado 2024.1";
begin
end;

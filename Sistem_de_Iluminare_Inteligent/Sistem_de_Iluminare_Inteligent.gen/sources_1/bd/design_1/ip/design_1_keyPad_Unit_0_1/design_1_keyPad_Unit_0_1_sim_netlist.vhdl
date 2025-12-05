-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Dec  4 17:21:42 2025
-- Host        : TinuPC04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_keyPad_Unit_0_1/design_1_keyPad_Unit_0_1_sim_netlist.vhdl
-- Design      : design_1_keyPad_Unit_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_keyPad_Unit_0_1_keyPad_Unit is
  port (
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_pulse : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_keyPad_Unit_0_1_keyPad_Unit : entity is "keyPad_Unit";
end design_1_keyPad_Unit_0_1_keyPad_Unit;

architecture STRUCTURE of design_1_keyPad_Unit_0_1_keyPad_Unit is
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \^key_code\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal key_pulse_i_1_n_0 : STD_LOGIC;
  signal key_pulse_i_2_n_0 : STD_LOGIC;
  signal key_register : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal key_register0 : STD_LOGIC;
  signal last_key : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal raw_key : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal scan_tick : STD_LOGIC;
  signal scan_tick_reg_n_0 : STD_LOGIC;
  signal \stable_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \stable_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \stable_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \stable_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal stable_key0 : STD_LOGIC;
  signal \stable_key[3]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s_row0:00,s_row1:01,s_row2:10,s_row3:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s_row0:00,s_row1:01,s_row2:10,s_row3:11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \row_out[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \row_out[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \row_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \row_out[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of scan_tick_i_1 : label is "soft_lutpair0";
begin
  key_code(3 downto 0) <= \^key_code\(3 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(0),
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => next_state(1)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      CLR => reset,
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      CLR => reset,
      D => next_state(1),
      Q => current_state(1)
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \NLW_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \counter[16]_i_5_n_0\,
      I1 => \counter[16]_i_4_n_0\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_2_n_0\,
      I4 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(12),
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(13),
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(14),
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(15),
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(16),
      O => counter_0(16)
    );
\counter[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter(10),
      I1 => counter(9),
      I2 => counter(12),
      I3 => counter(11),
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter(14),
      I1 => counter(13),
      I2 => counter(16),
      I3 => counter(15),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(4),
      I3 => counter(3),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(6),
      I2 => counter(7),
      I3 => counter(8),
      O => \counter[16]_i_5_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(1),
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(2),
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      I5 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => counter_0(9),
      Q => counter(9)
    );
key_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F007F7FFFFFFF00"
    )
        port map (
      I0 => \^key_code\(1),
      I1 => \^key_code\(0),
      I2 => \^key_code\(2),
      I3 => key_pulse_i_2_n_0,
      I4 => last_key(3),
      I5 => \^key_code\(3),
      O => key_pulse_i_1_n_0
    );
key_pulse_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^key_code\(0),
      I1 => last_key(0),
      I2 => last_key(2),
      I3 => \^key_code\(2),
      I4 => last_key(1),
      I5 => \^key_code\(1),
      O => key_pulse_i_2_n_0
    );
key_pulse_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      CLR => reset,
      D => key_pulse_i_1_n_0,
      Q => key_pulse
    );
\key_register[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFFF9FEEFFEEF"
    )
        port map (
      I0 => col_in(2),
      I1 => col_in(0),
      I2 => col_in(1),
      I3 => col_in(3),
      I4 => current_state(1),
      I5 => current_state(0),
      O => raw_key(0)
    );
\key_register[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFDFFF9FEEDFFFB"
    )
        port map (
      I0 => col_in(1),
      I1 => col_in(0),
      I2 => col_in(2),
      I3 => col_in(3),
      I4 => current_state(1),
      I5 => current_state(0),
      O => raw_key(1)
    );
\key_register[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFDFEFBFEE9"
    )
        port map (
      I0 => col_in(3),
      I1 => col_in(2),
      I2 => col_in(0),
      I3 => col_in(1),
      I4 => current_state(1),
      I5 => current_state(0),
      O => raw_key(2)
    );
\key_register[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AA2"
    )
        port map (
      I0 => scan_tick_reg_n_0,
      I1 => \stable_key[3]_i_2_n_0\,
      I2 => key_register(3),
      I3 => raw_key(3),
      O => key_register0
    );
\key_register[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEEBFFEFFEEB"
    )
        port map (
      I0 => col_in(3),
      I1 => col_in(2),
      I2 => col_in(0),
      I3 => col_in(1),
      I4 => current_state(1),
      I5 => current_state(0),
      O => raw_key(3)
    );
\key_register_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => key_register0,
      D => raw_key(0),
      PRE => reset,
      Q => key_register(0)
    );
\key_register_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => key_register0,
      D => raw_key(1),
      PRE => reset,
      Q => key_register(1)
    );
\key_register_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => key_register0,
      D => raw_key(2),
      PRE => reset,
      Q => key_register(2)
    );
\key_register_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => key_register0,
      D => raw_key(3),
      PRE => reset,
      Q => key_register(3)
    );
\last_key_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      D => \^key_code\(0),
      PRE => reset,
      Q => last_key(0)
    );
\last_key_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      D => \^key_code\(1),
      PRE => reset,
      Q => last_key(1)
    );
\last_key_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      D => \^key_code\(2),
      PRE => reset,
      Q => last_key(2)
    );
\last_key_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => scan_tick_reg_n_0,
      D => \^key_code\(3),
      PRE => reset,
      Q => last_key(3)
    );
\row_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => row_out(0)
    );
\row_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => row_out(1)
    );
\row_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => row_out(2)
    );
\row_out[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => row_out(3)
    );
scan_tick_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \counter[16]_i_2_n_0\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter[16]_i_5_n_0\,
      I4 => counter(0),
      O => scan_tick
    );
scan_tick_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => scan_tick,
      Q => scan_tick_reg_n_0
    );
\stable_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D55D555520020000"
    )
        port map (
      I0 => scan_tick_reg_n_0,
      I1 => \stable_cnt_reg_n_0_[1]\,
      I2 => raw_key(3),
      I3 => key_register(3),
      I4 => \stable_key[3]_i_2_n_0\,
      I5 => \stable_cnt_reg_n_0_[0]\,
      O => \stable_cnt[0]_i_1_n_0\
    );
\stable_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F83030F830303030"
    )
        port map (
      I0 => \stable_cnt_reg_n_0_[0]\,
      I1 => scan_tick_reg_n_0,
      I2 => \stable_cnt_reg_n_0_[1]\,
      I3 => raw_key(3),
      I4 => key_register(3),
      I5 => \stable_key[3]_i_2_n_0\,
      O => \stable_cnt[1]_i_1_n_0\
    );
\stable_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \stable_cnt[0]_i_1_n_0\,
      Q => \stable_cnt_reg_n_0_[0]\
    );
\stable_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \stable_cnt[1]_i_1_n_0\,
      Q => \stable_cnt_reg_n_0_[1]\
    );
\stable_key[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000800000000"
    )
        port map (
      I0 => scan_tick_reg_n_0,
      I1 => \stable_cnt_reg_n_0_[1]\,
      I2 => \stable_cnt_reg_n_0_[0]\,
      I3 => raw_key(3),
      I4 => key_register(3),
      I5 => \stable_key[3]_i_2_n_0\,
      O => stable_key0
    );
\stable_key[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => raw_key(0),
      I1 => key_register(0),
      I2 => key_register(2),
      I3 => raw_key(2),
      I4 => key_register(1),
      I5 => raw_key(1),
      O => \stable_key[3]_i_2_n_0\
    );
\stable_key_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stable_key0,
      D => key_register(0),
      PRE => reset,
      Q => \^key_code\(0)
    );
\stable_key_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stable_key0,
      D => key_register(1),
      PRE => reset,
      Q => \^key_code\(1)
    );
\stable_key_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stable_key0,
      D => key_register(2),
      PRE => reset,
      Q => \^key_code\(2)
    );
\stable_key_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => stable_key0,
      D => key_register(3),
      PRE => reset,
      Q => \^key_code\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_keyPad_Unit_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    key_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_pulse : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_keyPad_Unit_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_keyPad_Unit_0_1 : entity is "design_1_keyPad_Unit_0_1,keyPad_Unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_keyPad_Unit_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_keyPad_Unit_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_keyPad_Unit_0_1 : entity is "keyPad_Unit,Vivado 2024.1";
end design_1_keyPad_Unit_0_1;

architecture STRUCTURE of design_1_keyPad_Unit_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_keyPad_Unit_0_1_keyPad_Unit
     port map (
      clk => clk,
      col_in(3 downto 0) => col_in(3 downto 0),
      key_code(3 downto 0) => key_code(3 downto 0),
      key_pulse => key_pulse,
      reset => reset,
      row_out(3 downto 0) => row_out(3 downto 0)
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Dec  4 17:20:30 2025
-- Host        : TinuPC04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/SSC/proiectSSC/Sistem_de_Iluminare_Inteligent/Sistem_de_Iluminare_Inteligent.gen/sources_1/bd/design_1/ip/design_1_PWM_Unit_0_1/design_1_PWM_Unit_0_1_sim_netlist.vhdl
-- Design      : design_1_PWM_Unit_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PWM_Unit_0_1_PWM_Unit is
  port (
    pwm_signal : out STD_LOGIC;
    clk : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PWM_Unit_0_1_PWM_Unit : entity is "PWM_Unit";
end design_1_PWM_Unit_0_1_PWM_Unit;

architecture STRUCTURE of design_1_PWM_Unit_0_1_PWM_Unit is
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \pwm_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal pwm_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pwm_signal0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_n_1 : STD_LOGIC;
  signal pwm_signal0_carry_n_2 : STD_LOGIC;
  signal pwm_signal0_carry_n_3 : STD_LOGIC;
  signal pwm_signal_i_1_n_0 : STD_LOGIC;
  signal NLW_pwm_signal0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pwm_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pwm_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pwm_cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_3\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_signal0_carry : label is 11;
begin
\pwm_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      O => \pwm_cnt[0]_i_1_n_0\
    );
\pwm_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      O => plusOp(1)
    );
\pwm_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(2),
      O => plusOp(2)
    );
\pwm_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(2),
      I3 => pwm_cnt_reg(3),
      O => plusOp(3)
    );
\pwm_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(3),
      I4 => pwm_cnt_reg(4),
      O => plusOp(4)
    );
\pwm_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(2),
      I4 => pwm_cnt_reg(4),
      I5 => pwm_cnt_reg(5),
      O => plusOp(5)
    );
\pwm_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pwm_cnt[7]_i_4_n_0\,
      I1 => pwm_cnt_reg(6),
      O => plusOp(6)
    );
\pwm_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => reset,
      I1 => \pwm_cnt[7]_i_3_n_0\,
      I2 => pwm_cnt_reg(6),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(4),
      I5 => pwm_cnt_reg(5),
      O => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \pwm_cnt[7]_i_4_n_0\,
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(7),
      O => plusOp(7)
    );
\pwm_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(7),
      I3 => pwm_cnt_reg(1),
      O => \pwm_cnt[7]_i_3_n_0\
    );
\pwm_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(2),
      I5 => pwm_cnt_reg(4),
      O => \pwm_cnt[7]_i_4_n_0\
    );
\pwm_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pwm_cnt[0]_i_1_n_0\,
      Q => pwm_cnt_reg(0),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => pwm_cnt_reg(1),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => pwm_cnt_reg(2),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => pwm_cnt_reg(3),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => pwm_cnt_reg(4),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => pwm_cnt_reg(5),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => pwm_cnt_reg(6),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => pwm_cnt_reg(7),
      R => \pwm_cnt[7]_i_1_n_0\
    );
pwm_signal0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_in,
      CO(2) => pwm_signal0_carry_n_1,
      CO(1) => pwm_signal0_carry_n_2,
      CO(0) => pwm_signal0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_signal0_carry_i_1_n_0,
      DI(2) => pwm_signal0_carry_i_2_n_0,
      DI(1) => pwm_signal0_carry_i_3_n_0,
      DI(0) => pwm_signal0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_signal0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_signal0_carry_i_5_n_0,
      S(2) => pwm_signal0_carry_i_6_n_0,
      S(1) => pwm_signal0_carry_i_7_n_0,
      S(0) => pwm_signal0_carry_i_8_n_0
    );
pwm_signal0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(6),
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(7),
      I3 => duty_cycle(7),
      O => pwm_signal0_carry_i_1_n_0
    );
pwm_signal0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(4),
      I1 => pwm_cnt_reg(4),
      I2 => pwm_cnt_reg(5),
      I3 => duty_cycle(5),
      O => pwm_signal0_carry_i_2_n_0
    );
pwm_signal0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(2),
      I1 => pwm_cnt_reg(2),
      I2 => pwm_cnt_reg(3),
      I3 => duty_cycle(3),
      O => pwm_signal0_carry_i_3_n_0
    );
pwm_signal0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(0),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      I3 => duty_cycle(1),
      O => pwm_signal0_carry_i_4_n_0
    );
pwm_signal0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(6),
      I1 => pwm_cnt_reg(6),
      I2 => duty_cycle(7),
      I3 => pwm_cnt_reg(7),
      O => pwm_signal0_carry_i_5_n_0
    );
pwm_signal0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(4),
      I1 => pwm_cnt_reg(4),
      I2 => duty_cycle(5),
      I3 => pwm_cnt_reg(5),
      O => pwm_signal0_carry_i_6_n_0
    );
pwm_signal0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(2),
      I1 => pwm_cnt_reg(2),
      I2 => duty_cycle(3),
      I3 => pwm_cnt_reg(3),
      O => pwm_signal0_carry_i_7_n_0
    );
pwm_signal0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(0),
      I1 => pwm_cnt_reg(0),
      I2 => duty_cycle(1),
      I3 => pwm_cnt_reg(1),
      O => pwm_signal0_carry_i_8_n_0
    );
pwm_signal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => reset,
      O => pwm_signal_i_1_n_0
    );
pwm_signal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pwm_signal_i_1_n_0,
      Q => pwm_signal,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PWM_Unit_0_1 is
  port (
    duty_cycle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PWM_Unit_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PWM_Unit_0_1 : entity is "design_1_PWM_Unit_0_1,PWM_Unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_PWM_Unit_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_PWM_Unit_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_PWM_Unit_0_1 : entity is "PWM_Unit,Vivado 2024.1";
end design_1_PWM_Unit_0_1;

architecture STRUCTURE of design_1_PWM_Unit_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_PWM_Unit_0_1_PWM_Unit
     port map (
      clk => clk,
      duty_cycle(7 downto 0) => duty_cycle(7 downto 0),
      pwm_signal => pwm_signal,
      reset => reset
    );
end STRUCTURE;

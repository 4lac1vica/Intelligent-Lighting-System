----------------------------------------------------------------------------------
-- Company: UTCN
-- Engineer: Todi Tinu-Constantin
-- 
-- Create Date: 11/07/2025 08:29:06 PM
-- Design Name: Debouncer 
-- Module Name: debouncer - Behavioral
-- Project Name: Debouncer 
-- Target Devices: Zybo Z7-20
-- Tool Versions: 2024.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debouncer is

    generic(
        STABLE_COUNT : integer := 200000
    );

  Port ( 
    clk : in std_logic;
    btn_in : in std_logic;
    btn_out : out std_logic
  );
end debouncer;

architecture Behavioral of debouncer is

signal D1, D2 : std_logic;
signal Q1, Q2 : std_logic;
signal counter : integer range 0 to STABLE_COUNT := 0; 
signal stable_btn : std_logic;
begin

D1 <= btn_in;


FF1: process(clk)
begin 
    if rising_edge(clk) then
        Q1 <= D1;
    end if;
end process;

D2 <= Q1;

FF2: process(clk)
begin
    if rising_edge(clk) then
        Q2 <= D2;
    end if;
end process;


DEBOUNCE_LOGIC: process(clk)
begin 
    if rising_edge(clk) then 
        if Q2 = stable_btn then
            if counter < STABLE_COUNT then
                counter <= counter + 1;
            end if;
        else 
            counter <= 0;    
        end if;
        
        if counter = STABLE_COUNT then
            stable_btn <= Q2;
        end if;
    end if;
end process;


btn_out <= stable_btn;


end Behavioral;

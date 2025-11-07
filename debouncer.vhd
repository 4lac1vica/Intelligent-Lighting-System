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
  Port ( 
    clk : in std_logic;
    btn_in : in std_logic;
    btn_out : out std_logic
  );
end debouncer;

architecture Behavioral of debouncer is




begin


end Behavioral;

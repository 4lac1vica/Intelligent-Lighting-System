----------------------------------------------------------------------------------
-- Company: UTCN
-- Engineer: Todi Tinu-Constantin
-- 
-- Create Date: 11/07/2025 08:24:23 PM
-- Design Name: keyPad_Unit
-- Module Name: keyPad_Unit - Behavioral
-- Project Name: Sistem de iluminare inteligent 
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

entity keyPad_Unit is
Port (
    clk : in std_logic;
    reset : in std_logic;
    row_out : out std_logic_vector(3 downto 0);
    col_in : in std_logic_vector(3 downto 0);
    key_code : out std_logic_vector(3 downto 0);
    key_pulse : out std_logic
);
end keyPad_Unit;



architecture Behavioral of keyPad_Unit is

type state_type is (S_ROW0, S_ROW1, S_ROW2, S_ROW3);
signal current_state, next_state : state_type;
signal col_index : integer range -1 to 3 := -1;
signal scan_tick : std_logic;
signal counter : integer range 0 to 100000 := 0;


begin

logica_stari: process(clk, reset)
begin 
    if reset = '1' then
        current_state <= S_ROW0;
    elsif rising_edge(clk) and scan_tick = '1' then 
        current_state <= next_state;
    end if;
end process;

areibuire: process(current_state)
begin 
    case current_state is
        when S_ROW0 => 
            row_out <= "1000";
            next_state <= S_ROW1;
        when S_ROW1 =>
            row_out <= "0100";
            next_state <= S_ROW2;
        when S_ROW2 => 
           row_out <= "0010";
           next_state <= S_ROW3;
        when S_ROW3 =>
            row_out <= "0001";
            next_state <= S_ROW0;
        when others => 
            next_state <= S_ROW0;     
    end case;
end process;

identificare_index: process(col_in)
begin 
    case col_in is    
         when "0001" => 
            col_index <= 0;
         when "0010" => 
            col_index <= 1;
         when "0100" =>
            col_index <= 2;
         when "1000" => 
            col_index <= 3;
         when others =>
            col_index <= -1;    
    end case;
end process;

mapare: process(col_index, current_state)
begin 
    case current_state is
        when S_ROW0 => 
            case col_index is
                when 0 => key_code <= X"1";
                when 1 => key_code <= X"2";
                when 2 => key_code <= X"3";
                when 3 => key_code <= X"A";
                when others => key_code <= X"F";   
            end case;
        when S_ROW1 => 
            case col_index is 
                when 0 => key_code <= X"4";
                when 1 => key_code <= X"5";
                when 2 => key_code <= X"6";
                when 3 => key_code <= X"B";
                when others => key_code <= X"F";     
            end case;
        when S_ROW2 =>
            case col_index is
                when 0 => key_code <= X"7";
                when 1 => key_code <= X"8";
                when 2 => key_code <= X"9";
                when 3 => key_code <= X"C";
                when others => key_code <= X"F";
            end case;
        when S_ROW3 => 
            case col_index is 
               when 0 => key_code <= X"E";
               when 1 => key_code <= X"0";
               when 2 => key_code <= X"F";
               when 3 => key_code <= X"D";
               when others => key_code <= X"F"; 
            end case;
    end case;
end process;


clock_divider: process(clk)
begin 
   if reset = '1' then
        counter <= 0;
        scan_tick <= '0';
   elsif rising_edge(clk) then
       if counter = 100000 then
            counter <= 0;
            scan_tick <= '1';
       else
            counter <= counter + 1;
            scan_tick <= '0';
       end if;
   end if;
end process;



end Behavioral;

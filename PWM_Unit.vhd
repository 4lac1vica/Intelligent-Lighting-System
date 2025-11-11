----------------------------------------------------------------------------------
-- Company: UTCN
-- Engineer: Todi Tinu-Constantin
-- 
-- Create Date: 11/07/2025 10:02:11 AM
-- Design Name: PWM_UNIT
-- Module Name: PWM_Unit - Behavioral
-- Project Name: Sistem de Iluminare Inteligent
-- Target Devices: Zybo Z20
-- Tool Versions: 2024.1
-- Description: PWM_UNIT
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM_Unit is

    generic(
        clk_cnt_len : positive := 1
    );


    Port (
        duty_cycle : in std_logic_vector(7 downto 0);
        clk : in std_logic;
        reset : in std_logic;
        pwm_signal : out std_logic
    );
end PWM_Unit;

architecture Behavioral of PWM_Unit is


signal clk_cnt : integer range 0 to clk_cnt_len - 1; --clk counter care numara cate cicluri de ceas sunt 
signal pwm_cnt : unsigned(7 downto 0);


begin

clk_cnt_proc: process(clk)
begin 
    if rising_edge(clk) then 
       if reset = '1' then
            clk_cnt <= 0;
       else 
           if clk_cnt < clk_cnt_len - 1 then 
                clk_cnt <= clk_cnt + 1;
           else 
                clk_cnt <= 0;
           end if; 
       end if;
    end if;
end process;

pwm_proc: process(clk)
begin

if rising_edge(clk) then 
    if reset = '1' then 
        pwm_cnt <= (others => '0');
        pwm_signal <= '0';
    else 
        if clk_cnt_len = 1 or clk_cnt = 0 then 
            pwm_cnt <= pwm_cnt + 1;
            pwm_signal <= '0';
            
            if pwm_cnt = unsigned(to_signed(-2, pwm_cnt'length)) then 
                pwm_cnt <= (others => '0');
            end if;
            
            if pwm_cnt < unsigned(duty_cycle) then
                pwm_signal <= '1'; 
            else 
                pwm_signal <= '0';
            end if;  
        end if;     
    end if;
end if;

end process;




end Behavioral;

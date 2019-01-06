----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2018 13:14:02
-- Design Name: 
-- Module Name: N_divider - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity N_divider is 
    generic ( N: integer := 7);
    Port (
           RAZ : in STD_LOGIC;
           clk : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end N_divider;

architecture Behavioral of N_divider is

signal count : integer range 0 to N;

begin
process(CLK, RAZ)
begin
if (RAZ = '1') then         -- reset asynchrone
     count <= 0;
else if (CLK'event and CLK = '1') then     -- rising_edg(H)    
        if (count < N) then
            count <= count +1;
            else 
            count <= 0;       -- incrementation
        end if;
 
    end if;    
 end if;
end process;

clk_div <= '0' when (count < N/2 ) else '1';

end Behavioral;

----------------------------------------------------------------------------------
-- Project by Erwin LEJEUNE
-- Graduate School of Engineering ESTEI
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
----------------------------------------------------------------------------------

entity compteur8bits is
    Port ( 
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (7 downto 0);
           decompt : in STD_LOGIC);
end compteur8bits;

architecture Behavioral of compteur8bits is
signal tempo : std_logic_vector(7 downto 0);

begin
process(clk, reset)
    begin
        if (reset = '1') then
            tempo <= "00000000";
        elsif (clk'event and clk = '1') then
            if (decompt = '0') then
                tempo <= tempo + 1;
            elsif(decompt = '1') then
                tempo <= tempo - 1;
            end if;
        end if;
    end process;

S <= tempo;

end Behavioral;
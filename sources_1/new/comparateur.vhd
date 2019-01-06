----------------------------------------------------------------------------------
-- Project by Erwin LEJEUNE
-- Graduate School of Engineering ESTEI
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------

entity comparateur is
    Port ( 
           refrn : in STD_LOGIC_VECTOR (7 downto 0);
           modulant : in STD_LOGIC_VECTOR (7 downto 0);
           MLI : out STD_LOGIC);
end comparateur;

architecture Behavioral of comparateur is

begin

MLI <= '1' when (modulant < refrn) else
       '0';

end Behavioral;

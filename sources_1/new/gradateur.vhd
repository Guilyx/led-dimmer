----------------------------------------------------------------------------------
-- Project by Erwin LEJEUNE
-- Graduate School of Engineering ESTEI
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.NUMERIC_STD.ALL;
----------------------------------------------------------------------------------

entity gradateur is
    Port (
          reset : in STD_LOGIC;
          clk : in STD_LOGIC;
          -- S : out STD_LOGIC_VECTOR (7 downto 0);
          decompt : in STD_LOGIC;
          refrn : in STD_LOGIC_VECTOR (7 downto 0);
          -- modulant : in STD_LOGIC_VECTOR (7 downto 0);
          MLI : out STD_LOGIC
          );
end gradateur;

-------------------------------------------------------

architecture Behavioral of gradateur is
    signal modulantS : std_logic_vector(7 downto 0);
    component compteur8bits port (  
                                  reset : in STD_LOGIC;
                                  clk : in STD_LOGIC;
                                  S : out STD_LOGIC_VECTOR (7 downto 0);
                                  decompt : in STD_LOGIC
                                  );
    end component;
    
    component comparateur port (
                               refrn : in STD_LOGIC_VECTOR (7 downto 0);
                               modulant : in STD_LOGIC_VECTOR (7 downto 0);
                               MLI : out STD_LOGIC
                               );
    end component;


begin
    COMPT : compteur8bits PORT MAP (reset => reset, clk => clk, decompt => decompt, S => modulantS);
    COMP : comparateur PORT MAP (refrn => refrn, modulant => modulantS, MLI => MLI);
end Behavioral;

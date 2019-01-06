----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2018 13:43:08
-- Design Name: 
-- Module Name: compteur8bits_tb - Behavioral
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
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

entity compteur8bits_tb is
--  Port ( );
end compteur8bits_tb;
---------------------------------------------
architecture bench of compteur8bits_tb is
signal clk : std_logic;
signal reset : std_logic;
signal decompt: std_logic;
signal S : std_logic_vector(7 downto 0);
signal StopClock : boolean;
---------------------------------------------
begin
        M : entity work.compteur8bits(Behavioral) port map (
        clk => clk,
        reset => reset,
        decompt => decompt,
        S => S);

process
    begin
        while not StopClock loop
            clk <= '0';
            wait for 50 ms;
            clk <= '1';
            wait for 50 ms;
        end loop;
        wait;
end process;

process
begin
    reset <= '0';
    decompt <= '0';
    wait for 20 ns; -- 20ns pour bien montrer que reset est asynchrone
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    wait for 250 ns;
    decompt <= '1';
    wait for 700 ns;
    decompt <= '0';    
    StopClock <= False;
    wait;
end process;

end bench;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NorUnit is
    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC);
end NorUnit;

architecture Behavioral of NorUnit is

signal or_1: std_logic;

begin
 
	or_1 <= '0' when (A > X"0")  else '1';
 
 R <= not or_1;
 
end Behavioral;


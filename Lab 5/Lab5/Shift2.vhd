library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift2 is
    Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end Shift2;

architecture Behavioral of Shift2 is

begin

	R(27 downto 2) <= A(25 downto 0);
	R(1 downto 0) <= "00";
	R(31 downto 28) <= "0000";
	
end Behavioral;


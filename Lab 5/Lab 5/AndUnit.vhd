library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AndUnit is
    Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end AndUnit;

architecture Behavioral of AndUnit is

begin

and_gate: for i in 0 to 31 generate
 
	R(i) <= A(i) and B(i);
	
end generate;
 
end Behavioral;


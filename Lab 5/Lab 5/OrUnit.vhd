library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrUnit is
    Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end OrUnit;

architecture Behavioral of OrUnit is

begin

or_gate: for i in 0 to 31 generate
 
	R(i) <= A(i) or B(i);
	
end generate;

end Behavioral;


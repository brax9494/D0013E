library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtend is
    Port ( A : in  STD_LOGIC_VECTOR(15 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end SignExtend;

architecture Behavioral of SignExtend is

begin

copy: for i in 0 to 15 generate
 
	R(i) <= A(i);
	
end generate;

extend: for j in 16 to 31 generate
	
	R(j) <= A(15);

end generate;

end Behavioral;




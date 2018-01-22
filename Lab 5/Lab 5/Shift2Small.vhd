library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift2Small is
    Port ( A : in  STD_LOGIC_VECTOR(25 downto 0);
           R : out  STD_LOGIC_VECTOR(27 downto 0));
end Shift2Small;

architecture Behavioral of Shift2Small is

begin
	
	R(27 downto 2) <= A(25 downto 0);
	R(1 downto 0) <= "00";

end Behavioral;


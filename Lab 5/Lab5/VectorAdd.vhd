library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VectorAdd is
    Port ( A : in  STD_LOGIC_VECTOR(27 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end VectorAdd;

architecture Behavioral of VectorAdd is

begin

	R(31 downto 28) <= B;
	R(27 downto 0) <= A;

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer2_1_32 is
    Port ( A, B: in  STD_LOGIC_VECTOR(31 downto 0);
			  Op: in std_logic;
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end Multiplexer2_1_32;

architecture Behavioral of Multiplexer2_1_32 is

begin

R <= A when (Op = '0') else
     B;

end Behavioral;
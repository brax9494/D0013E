library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer is
    Port ( A, B, C, D : in  STD_LOGIC_VECTOR(31 downto 0);
           Op : in  STD_LOGIC_VECTOR(1 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end Multiplexer;

architecture Behavioral of Multiplexer is

begin

 R <= A when (Op = "00") else
        B when (Op = "01") else
        C when (Op = "10") else
        D;

end Behavioral;


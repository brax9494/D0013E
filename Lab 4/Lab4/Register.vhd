library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MyRegister is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(31 downto 0);
           Q : out  STD_LOGIC_VECTOR(31 downto 0));
end MyRegister;

architecture Behavioral of MyRegister is

begin

Process(Clk,Reset)
Begin
	if reset='1' then
		Q <= X"00000000";
	elsif Clk'event and Clk='1' then
		Q <= D;
	End if;
End Process;

end Behavioral;


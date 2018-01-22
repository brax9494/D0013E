library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
    Port ( A, B, Cin : in  STD_LOGIC;
           Cout, R : out  STD_LOGIC);
end entity;

architecture Behavioral of FULL_ADDER is

signal xor_1, and_1, and_2: std_logic;

begin

	xor_1 <= A xor B;
	and_1 <= xor_1 and Cin;
	and_2 <= A and B;
	R <= xor_1 xor Cin;
	Cout <= and_1 or and_2;
	
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADDER is
    Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Cin : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           C, V : out  STD_LOGIC);
end entity;

architecture Behavioral of ADDER is
component FULL_ADDER is
	 Port ( A, B, Cin : in  STD_LOGIC;
           Cout, R : out  STD_LOGIC);
end component;

 signal carry : std_logic_vector(32 downto 0);
 
begin

carry(0) <= Cin;

 adders: for i in 0 to 31 generate
 
	adder_instance: FULL_ADDER port map(A => A(i), B => B(i), Cin => carry(i), R => R(i), Cout => carry(i+1));
	
 end generate;

 V <= carry(31) xor carry(32);
 C <= carry(32);
	
end Behavioral;


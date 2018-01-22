library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArithmeticUnit is
    Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Sub : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           V, C : out  STD_LOGIC);
end ArithmeticUnit;

architecture Behavioral of ArithmeticUnit is

component ADDER is
   Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Cin : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           C, V : out  STD_LOGIC);
end component;

signal xor_1: std_logic_vector(31 downto 0);

begin

 subtract: for i in 0 to 31 generate
 
	xor_1(i) <= (B(i) xor Sub);
	
 end generate;
 
 ADDER_1: ADDER Port Map(A => A, B => xor_1, Cin => Sub, R => R, C => C, V => V);

end Behavioral;


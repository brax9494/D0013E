library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PCPlus4 is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			  RegIn : in std_logic_vector(31 downto 0);
           Q, AddOut : out  STD_LOGIC_VECTOR(31 downto 0));
end PCPlus4;

architecture Behavioral of PCPlus4 is

Component ADDER is
	Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
			  Cin : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           C, V : out  STD_LOGIC);
end component;

Component MyRegister is
	Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(31 downto 0);
           Q : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

	signal Q_output: std_logic_vector(31 downto 0);
	
begin
	
	Register_1: MyRegister Port Map(Clk => Clk, Reset => Reset, D => RegIn, Q => Q_output);	
	ADDER_1: ADDER Port Map (A => X"00000004", B => Q_output, Cin => '0', R => AddOut);
   Q <= Q_output;

end Behavioral;


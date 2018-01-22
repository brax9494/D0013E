library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicUnit is
    Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Sub : in  STD_LOGIC;
           Op : in  STD_LOGIC_VECTOR(1 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           Z : out  STD_LOGIC);
end LogicUnit;

architecture Behavioral of LogicUnit is

Component AndUnit is
	Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

Component OrUnit is 
	Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

Component ZeroExtend is
	Port ( A : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

Component ArithmeticUnit is
	Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Sub : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           V, C : out  STD_LOGIC);
end component;

Component Multiplexer is
	Port ( A, B, C, D : in  STD_LOGIC_VECTOR(31 downto 0);
           Op : in  STD_LOGIC_VECTOR(1 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

	signal and_1, or_1, ari_1, zero_1, mux_1: std_logic_vector(31 downto 0);

begin

	AndUnit_1: AndUnit Port Map(A => A, B => B, R => and_1);
	OrUnit_1: OrUnit Port Map(A => A, B => B, R => or_1);
	AritUnit_1: ArithmeticUnit Port Map (A => A, B => B, Sub => Sub, R => ari_1);
	ZeroExtend_1: ZeroExtend Port Map (A => ari_1(31), R => zero_1);
	Multiplexer_1: Multiplexer Port Map (A => and_1, B => or_1, C => ari_1, D => zero_1, Op => Op, R => mux_1);
	Z <= '0' when (mux_1 /= X"00000000") else '1';
	R <= mux_1;

end Behavioral;


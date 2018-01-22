library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FirstMipsVersion is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC);
end FirstMipsVersion;

architecture Behavioral of FirstMipsVersion is

component Regfile is
	port(
      clk: IN std_logic;
      reset: IN std_logic;
      A_data: OUT std_logic_vector(31 downto 0);
      B_data: OUT std_logic_vector(31 downto 0);
      A_addr: IN std_logic_vector(4 downto 0);
      B_addr: IN std_logic_vector(4 downto 0);
      W_data: IN std_logic_vector(31 downto 0);
      W_addr: IN std_logic_vector(4 downto 0);
      W_ena: IN std_logic);
end component;

component LogicUnit is
	Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Sub : in  STD_LOGIC;
           Op : in  STD_LOGIC_VECTOR(1 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           Z : out  STD_LOGIC);
end component;

component programmemory is
	port( address:in std_logic_vector(31 downto 0);
        instruction: out std_logic_vector(31 downto 0)
        );
end component;

component PCPlus4 is
	Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component ControlUnit is
	Port ( Opcode, Funct : in  STD_LOGIC_VECTOR(5 downto 0);
           Z : in  STD_LOGIC;
           WE, RegDestination, ALUSource : out  STD_LOGIC;
           ALUControl : out  STD_LOGIC_VECTOR(2 downto 0));
end component;

component Multiplexer2_1 is
	Port ( A, B: in  STD_LOGIC_VECTOR(4 downto 0);
			  Op: in std_logic;
           R : out  STD_LOGIC_VECTOR(4 downto 0));
end component;

component SignExtend is
	Port ( A : in  STD_LOGIC_VECTOR(15 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Multiplexer2_1_32 is
	Port ( A, B: in  STD_LOGIC_VECTOR(31 downto 0);
			  Op: in std_logic;
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

	signal pcplus_out, instruction, A_data, B_data, signext_out, mux2_out, WD : std_logic_vector(31 downto 0);
	signal mux1_out : std_logic_vector(4 downto 0);
	signal ALUControl : std_logic_vector(2 downto 0);
	signal Z, WE, RegDestination, ALUSource : std_logic;

begin	

 PCPlus4_1: PCPlus4 Port Map(Clk => Clk, Reset => Reset, Q => pcplus_out);
 Programmemory_1 : programmemory Port Map(address => pcplus_out, instruction => instruction);
 Multiplexer_1 : Multiplexer2_1 Port Map(A => instruction(20 downto 16), B => instruction(15 downto 11), op => RegDestination, R => mux1_out);
 Regfile_1: Regfile Port Map(clk => clk, reset => reset, A_data => A_data, B_data => B_data, A_addr => instruction(25 downto 21), B_addr => instruction(20 downto 16), W_data => WD, W_addr => mux1_out, W_ena => WE);
 SignExtend_1: SignExtend Port Map(A => instruction(15 downto 0), R => signext_out);
 Multiplexer_2: Multiplexer2_1_32 Port Map(A => B_data, B => signext_out, Op => ALUSource, R => mux2_out);
 ALU : LogicUnit Port Map(A => A_data, B => mux2_out, Sub => ALUControl(2), Op => ALUControl(1 downto 0), Z => Z, R => WD);
 ControlUnit_1 : ControlUnit Port Map(Opcode => instruction(31 downto 26), Funct => instruction(5 downto 0), Z => Z, WE => WE, ALUControl => ALUControl, RegDestination => RegDestination, ALUSource => ALUSource);

end Behavioral;


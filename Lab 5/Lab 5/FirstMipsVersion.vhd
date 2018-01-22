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
			  RegIn : in std_logic_vector(31 downto 0);
           Q, AddOut : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component ControlUnit is
	Port ( Opcode, Funct : in  STD_LOGIC_VECTOR(5 downto 0);
           Z : in  STD_LOGIC;
           WE, RegDestination, ALUSource, MemWE, MemtoReg, Jump, Branch : out  STD_LOGIC;
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

component DataMemory is
	Port ( Clk, Reset, MemWE : in  STD_LOGIC;
           Address, DataIn: in  STD_LOGIC_VECTOR(31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Shift2 is
	Port ( A : in  STD_LOGIC_VECTOR(31 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Adder is
	Port ( A, B : in  STD_LOGIC_VECTOR(31 downto 0);
           Cin : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(31 downto 0);
           C, V : out  STD_LOGIC);
end component;

component Shift2Small is
	Port ( A : in  STD_LOGIC_VECTOR(25 downto 0);
           R : out  STD_LOGIC_VECTOR(27 downto 0));
end component;

component VectorAdd is
	Port ( A : in  STD_LOGIC_VECTOR(27 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           R : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

	signal shift28, VectorAdd_out, pcplus_out, mux4_out, shift1_out, AddOut2, instruction, shift32, mux5_out, signext_out, mux2_out, ALU_out, DataM_out, WD, A_data, B_data, RegIn, AddOut : std_logic_vector(31 downto 0);
	signal shift2_out : std_logic_vector(27 downto 0);
	signal mux1_out : std_logic_vector(4 downto 0);
	signal ALUControl : std_logic_vector(2 downto 0);
	signal Z, WE, RegDestination, ALUSource, MemWE, MemtoReg, Jump, Branch : std_logic;

begin	

 PCPlus4_1: PCPlus4 Port Map(Clk => Clk, Reset => Reset, Q => pcplus_out, RegIn => RegIn, AddOut => AddOut);
 Programmemory_1 : programmemory Port Map(address => pcplus_out, instruction => instruction);
 Multiplexer_1 : Multiplexer2_1 Port Map(A => instruction(20 downto 16), B => instruction(15 downto 11), op => RegDestination, R => mux1_out);
 Regfile_1: Regfile Port Map(clk => Clk, reset => Reset, A_data => A_data, B_data => B_data, A_addr => instruction(25 downto 21), B_addr => instruction(20 downto 16), W_data => WD, W_addr => mux1_out, W_ena => WE);
 SignExtend_1: SignExtend Port Map(A => instruction(15 downto 0), R => signext_out);
 Multiplexer_2: Multiplexer2_1_32 Port Map(A => B_data, B => signext_out, Op => ALUSource, R => mux2_out);
 ALU : LogicUnit Port Map(A => A_data, B => mux2_out, Sub => ALUControl(2), Op => ALUControl(1 downto 0), Z => Z, R => ALU_out);
 ControlUnit_1 : ControlUnit Port Map(Opcode => instruction(31 downto 26), Funct => instruction(5 downto 0), Z => Z, WE => WE, ALUControl => ALUControl, RegDestination => RegDestination, ALUSource => ALUSource, MemWE => MemWE, MemtoReg => MemtoReg, Jump => Jump, Branch => Branch);
 DataMemory_1: DataMemory Port Map(Clk => Clk, Reset => Reset, MemWe => MemWE, Address => ALU_out, DataIn => B_data, DataOut => DataM_out);
 Multiplexer_3: Multiplexer2_1_32 Port Map(A => ALU_out, B => DataM_out, Op => MemtoReg, R => WD);
 Shift2_1: Shift2 Port Map(A => signext_out, R => shift1_out);
 Adder_1: Adder Port Map(A => shift1_out, B => AddOut, Cin => '0', R => AddOut2);
 Multiplexer_4: Multiplexer2_1_32 Port Map(A => AddOut, B => AddOut2, Op => (Z and Branch), R => mux4_out);
 Shift2_2: Shift2Small Port Map(A => instruction(25 downto 0), R => shift2_out);
 VectorAdd_1: VectorAdd Port Map(A => shift2_out, B => AddOut(31 downto 28), R => VectorAdd_out);
 Multiplexer_5: Multiplexer2_1_32 Port Map(A => mux4_out, B => VectorAdd_out, Op => Jump, R => RegIn); 
 
end Behavioral;


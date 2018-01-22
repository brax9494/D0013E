LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY DataMemory_tb IS
END DataMemory_tb;
 
ARCHITECTURE behavior OF DataMemory_tb IS 
 
    COMPONENT DataMemory
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         MemWE : IN  std_logic;
         Address : IN  std_logic_vector(31 downto 0);
         DataIn : IN  std_logic_vector(31 downto 0);
         DataOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal MemWE : std_logic := '0';
   signal Address : std_logic_vector(31 downto 0) := (others => '0');
   signal DataIn : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal DataOut : std_logic_vector(31 downto 0);
 
begin
  -- Create an instance of the component under test
  FirstMipsVersion_1: DataMemory port map( Clk=> Clk, Reset => Reset, MemWE => MemWE, Address => Address, DataIn => DataIn, DataOut => DataOut);
 
  -- Now define a process to apply some stimulus over time...
  process
    constant PERIOD: time := 40 ns;
  begin
    clk <= '0'; Reset <= '1'; --MemWE <= '0'; Address <= X"00000000"; DataIn <= X"00000000";
	 wait for PERIOD;
	 clk <= '0'; Reset <= '0'; --MemWE <= '0'; Address <= X"00000001"; DataIn <= X"00000005";
	 wait for PERIOD;
    clk <= '1'; Reset <= '0'; MemWE <= '1'; Address <= X"00000001"; DataIn <= X"00000005";
    wait for PERIOD;
	 clk <= '0'; Reset <= '0'; MemWE <= '0'; Address <= X"00000000"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '1'; Reset <= '0'; MemWE <= '0'; Address <= X"00000001"; DataIn <= X"00000000";
    wait for PERIOD;
	 
	 clk <= '0'; Reset <= '0'; --MemWE <= '0'; Address <= X"00000001"; DataIn <= X"00000005";
	 wait for PERIOD;
    clk <= '1'; Reset <= '0'; MemWE <= '1'; Address <= X"00000002"; DataIn <= X"00000009";
    wait for PERIOD;
	 clk <= '0'; Reset <= '0'; MemWE <= '0'; Address <= X"00000000"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '1'; Reset <= '0'; MemWE <= '0'; Address <= X"00000002"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '0'; Reset <= '0'; MemWE <= '0'; Address <= X"00000000"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '1'; Reset <= '0'; MemWE <= '0'; Address <= X"00000001"; DataIn <= X"00000000";
    wait for PERIOD;
	 
	 clk <= '0'; Reset <= '0'; --MemWE <= '0'; Address <= X"00000001"; DataIn <= X"00000005";
	 wait for PERIOD;
    clk <= '1'; Reset <= '0'; MemWE <= '1'; Address <= X"00000003"; DataIn <= X"00000002";
    wait for PERIOD;
	 clk <= '0'; Reset <= '0'; MemWE <= '0'; Address <= X"00000000"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '1'; Reset <= '0'; MemWE <= '0'; Address <= X"00000003"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '0'; Reset <= '0'; MemWE <= '0'; Address <= X"00000000"; DataIn <= X"00000000";
    wait for PERIOD;
	 clk <= '1'; Reset <= '0'; MemWE <= '0'; Address <= X"00000001"; DataIn <= X"00000000";
    wait for PERIOD;
    
    -- put breakpoint to line below
    wait for PERIOD;        
  end process;

END;

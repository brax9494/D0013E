LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY PCPlus4_tb IS
END PCPlus4_tb;
 
ARCHITECTURE behavior OF PCPlus4_tb IS 
 
    COMPONENT PCPlus4
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Q : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(31 downto 0);

begin
  -- Create an instance of the component under test
  PCPlus4_instance: PCPlus4 port map( Clk=> Clk, Reset => Reset, Q => Q);
 
  -- Now define a process to apply some stimulus over time...
  process
    constant PERIOD: time := 40 ns;
  begin
    clk <= '0'; Reset <= '1';
	 wait for PERIOD;
    clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '0';
    wait for PERIOD;
	 clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '0';
    wait for PERIOD;
	 clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '0';
    wait for PERIOD;
	 clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '1';
    wait for PERIOD;
    
	 clk <= '0'; Reset <= '1';
	 wait for PERIOD;
    clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '0';
    wait for PERIOD;
	 clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '1'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '0';
    wait for PERIOD;
	 clk <= '0'; Reset <= '1';
    wait for PERIOD;
    -- put breakpoint to line below
    wait for PERIOD;        
  end process;
end behavior;

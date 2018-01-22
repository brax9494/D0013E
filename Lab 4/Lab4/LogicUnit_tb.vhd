LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY LogicUnit_tb IS
END LogicUnit_tb;
 
ARCHITECTURE behavior OF LogicUnit_tb IS 
 
    COMPONENT LogicUnit
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         Sub : IN  std_logic;
         Op : IN  std_logic_vector(1 downto 0);
         R : OUT  std_logic_vector(31 downto 0);
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal Sub : std_logic := '0';
   signal Op : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal R : std_logic_vector(31 downto 0);
   signal Z : std_logic;
 
 begin
  -- Create an instance of the component under test
  LogicUnit_instance: LogicUnit port map( A => A, B => B, Sub => Sub, Op => Op, R => R, Z => Z);
 
  -- Now define a process to apply some stimulus over time...
  process
    constant PERIOD: time := 40 ns;
  begin
    A <= X"00000110"; B <= X"01000101"; Op <= "00";
    wait for PERIOD;
    A <= X"01010101"; B <= X"10101010"; Op <= "01";
    wait for PERIOD;
    A <= X"02030708"; B <= X"04070302"; Sub <= '0'; Op <= "10";
    wait for PERIOD;
	 A <= X"03020107"; B <= X"00302134"; Sub <= '1'; Op <= "10";
	 wait for PERIOD;
    A <= X"10304032"; B <= X"10004032"; Sub <= '1'; Op <= "11";
    wait for PERIOD;
	 A <= X"FFFFFFFB"; B <= X"FFFFFFF6"; Sub <= '1'; Op <= "11";
	 wait for PERIOD;

    -- put breakpoint to line below
    wait for PERIOD;        
  end process;
end behavior;

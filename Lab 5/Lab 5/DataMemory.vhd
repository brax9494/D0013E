library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DataMemory is
    Port ( Clk, Reset, MemWE : in  STD_LOGIC;
           Address, DataIn: in  STD_LOGIC_VECTOR(31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR(31 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is
type registerfile_type is array(31 downto 0) of std_logic_vector(31 downto 0);
signal Myregisterfile:registerfile_type;
begin
       
	process(clk,reset)
   begin
         if reset = '1' then
				Myregisterfile <= (others => (others => '0'));
         elsif clk'event and clk='1' then
				if MemWE ='1' then
					Myregisterfile(conv_integer(Address))<= DataIn;
             end if;
         end if;
			if Address(31) = '0' and conv_integer(Address) <= 31 then
				DataOut <= Myregisterfile(conv_integer(Address));
			end if;
   end process;
   
end Behavioral;


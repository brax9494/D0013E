library IEEE;
use IEEE.std_logic_1164.all;

entity programmemory is
  port( address:in std_logic_vector(31 downto 0);
        instruction: out std_logic_vector(31 downto 0)
        );
end programmemory;

architecture behav of programmemory is
begin

with address select
  instruction <="00100000001000001111111111111000" when X"00000000",  --addi r0,r1,-8 | r0 = -8
        "00100000010000010000000000000011" when X"00000004",  		 --addi r1,r2,3  | r1 = 3
		    "00000000000000010001000000100000" when X"00000008",  		 --add  r2,r0,r1 | r2 = -5
        "00000000001000000001100000100010" when X"0000000c",  		 --sub  r3,r1,r0 | r3 = 11
		    "00000000010000110010000000101010" when X"00000010",  		 --slt  r4,r2,r3 | r4 = 1
		    "00101000010001001111111111110111" when X"00000014",  		 --slti r4,r2,-9 | r4 = 0
		    "00000000010000110010000000101010" when X"00000018",  		 --slt  r4,r2,r3 | r4 = 1
		    "00000000100001100010100000100101" when X"0000001c",  		 --or   r5,r4,r6 | r5 = 1
		    "00000000101000010011000000100100" when X"00000020",  		 --and  r6,r5,r1 | r6 = 1
			 "10101100111000100000000000000000" when X"00000024",  		 --sw   r2,0(r7) | r2 = [0 + r7]
			 "10001100111010000000000000000000" when X"00000028",  		 --lw   r8,0(r7) | r8 = [0 + r7]
			 "10101101001000110000000000000100" when X"0000002c",			 --sw   r3,4(r9) | r3 = [4 + r9]
			 "10001101010010010000000000000100" when X"00000030",			 --lw   r9,4(r10)| r9 = [4 + r10]
        "11111100001000000000000000000001" when others;

	-- r1 = m, r2 = n, r3 = i, r4 = r0*r1
--	instruction <= "00100000001000010000000000001000" when X"00000000", --addi r1, r1, 8
--						"00100000010000100000000000000011" when X"00000004", --addi r2, r2, 3
--						"10101100000000010000000000001000" when X"00000008", --sw r1, 0x0008(r0)
--						"10101100000000100000000000001001" when X"0000000c", --sw r2, 0x0009(r0)
--						"00100000011000110000000000000000" when X"00000010", --addi r3, r3, 0 
--						"00010000011000100000000000000101" when X"00000014", --beq r3, r2, 5
--						"00000000001001000010000000100000" when X"00000018", --add r4, r1, r4
--						"10101100000001000000000000001010" when X"0000001c", --sw r4, 0x000A(r0)
--						"00100000011000110000000000000001" when X"00000020", --addi r3, r3, 1
--						"00001000000000000000000000000101" when X"00000024", --J row 5
--						"11111100001000000000000000000001" when others;

	-- r1 = fact, r2 = ans, r3 = i, r4 = j, r5 = prev r2
--	instruction <= "00100000001000010000000000000101" when X"00000000", --addi r1, r1, 8
--                  "10101100000000010000000000000110" when X"00000004", --sw r1, 0x0006(r0)
--						"00010000001000000000000000001110" when X"00000008", --beq  r1, r0, 14
--						"00100000001000010000000000000001" when X"0000000c", --addi r1, r1, 1
--						"00100000011000110000000000000001" when X"00000010", --addi r3, r3, 1
--						"00100000101001010000000000000001" when X"00000014", --addi r5, r5, 1
--						"00010000001000110000000000001100" when X"00000018", --beq  r1, r3, 12
--						"00100000000000100000000000000000" when X"0000001c", --addi r2, r0, 0 
--						"00100000000001000000000000000000" when X"00000020", --addi r4, r0, 0 
--						"00010000100000110000000000000011" when X"00000024", --beq r4, r3, 3
--						"00000000010001010001000000100000" when X"00000028", --add r2, r2, r5
--						"00100000100001000000000000000001" when X"0000002c", --addi r4, r4, 1
--						"00001000000000000000000000001001" when X"00000030", --J row 9
--						"00100000011000110000000000000001" when X"00000034", --addi r3, r3, 1
--						"00000000010000000010100000100000" when X"00000038", --add r5, r2, r0
--						"10101100000000100000000000000001" when X"0000003c", --sw r2, 0x0001(r0)
--						"00001000000000000000000000000110" when X"00000040", --J row 6
--						"00100000010000100000000000000001" when X"00000044", --addi r2, r2, 1
--						"10101100000000100000000000000001" when X"00000048", --sw r2, 0x0001(r0)
--						"11111100001000000000000000000001" when others;
						
end behav;
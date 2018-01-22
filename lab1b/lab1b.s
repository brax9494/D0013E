# ----------------------------------------------------------
#  Group 89's "underlag" for Lab 1
#  Pseudo-instructions may be used for Lab 1.
# ----------------------------------------------------------
 
# Group 89's Codeword Generator Subroutine (pseudocode)
#  (remember:  "seed" is a global variable, UNSIGNED INTEGER;
#              you may implement local variables in registers or on the stack;
#              result returned in v0; preserve all except t regs)
#
# FUNCTION codgen(): UNSIGNED INTEGER;
#  LOCAL SIGNED INTEGER   n;
#  LOCAL UNSIGNED INTEGER x, y;
#  BEGIN
#    n := [count the number of 1's in word "seed"];
#    x := [multiply "seed" by the constant 8];
#    y := [divide "seed" (unsigned !) by the constant 4];
#    seed := x XOR y XOR n;
#   RETURN( seed XOR 0x45de4eab );
#  END;
# 
# hint:  if "seed" is initialized to 0x3ee1c908,
#        the first five calls will generate these values:
#        0xbd6874a7, 0xbe421058, 0xa7dbae99, 0x6d70373b, 0x0a861c41, ...
# your code is to be written farther down (see comment below).
 
 
# Group 89's Recursive Decoding Subroutine (pseudocode)
#  (for "decode", all four local variables must be implemented ON THE
#              STACK, and NOT in registers; implement the code literally,.
#              no optimizations.  We're trying to teach you something.
#   remember:  result returned in v0; preserve all except t regs)
#
# FUNCTION decode( wordarr, bytearr ): UNSIGNED INTEGER;
#    (wordarr, bytearr passed by reference)
#  LOCAL UNSIGNED INTEGER m, r, x, y;
#  BEGIN
#    x := ONE'S-COMPLEMENT of codgen();
#    IF ([contents of word at "wordarr"] = 0) THEN  
#      [byte pointed to by "bytearr"] := 0;
#      r := x;
#    ELSE
#      y := decode( wordarr+, bytearr+ );  # "k+" means "successor in k"
#      m := ( x + y ) XOR [contents of word at "wordarr"];
#      [byte pointed to by "bytearr"] := [the eight bits at "m"<10:3>];
#      r := TWO'S-COMPLEMENT OF codgen();
#      r := x + y + m + r + 5;
#    ENDIF;
#    RETURN( r );
#  END;
 
 
# ----------------------------------------------------------
# The following are the ONLY lines that may appear in the
# ".data" section of the code.  You may add NO other lines.
# NO additional global variables.
# ----------------------------------------------------------
 
 
	.data
plain:	.space	95		# room for 95 characters
 
	.align 4
seed:	.word    0			# 32-bit UNSIGNED INTEGER.
 
abc:	.word	0x04bf7ca1	# string "abc", encoded
	.word	0x6ba7434b
	.word	0x2b5c1cc6
	.word	    0
coded:	.word	0x3cb9b75b	# the real encoded data
	.word	0x4ac59d4f
	.word	0x18da1f54
	.word	0xacfe3197
	.word	0xd7833c17
	.word	0xa148377b
	.word	0x66b69faf
	.word	0xfcd34ebe
	.word	0xdb3e2505
	.word	0xbdddeb89
	.word	0xbf0e005d
	.word	0x9ab92e7b
	.word	0xf7e6e3b0
	.word	0xb820ed1e
	.word	0xc5a4c670
	.word	0x1c0eb93c
	.word	0x0e34e591
	.word	0x146a1adc
	.word	0x0a409351
	.word	0x61f01fe7
	.word	0x603df5e4
	.word	0x586550ed
	.word	0x9f7435e8
	.word	0x1c625346
	.word	0x560870e8
	.word	0xd50d4ea0
	.word	0xca681b40
	.word	0x692d7015
	.word	0x33c57d03
	.word	0xf5d2bb48
	.word	0x31c0f71a
	.word	0xc6ef0636
	.word	0xcef82e08
	.word	0xc544265b
	.word	0x992e2def
	.word	0x00b1b7e9
	.word	0x8825be4b
	.word	0x8b15a9f1
	.word	0x42e10f65
	.word	0xb4186a36
	.word	0xd5c0eb6d
	.word	0x787cb9c2
	.word	0xa55b6c02
	.word	0x70fd1cc4
	.word	0x76b2e1fe
	.word	0xb8a72e96
	.word	0x588e19c3
	.word	0x0e01908b
	.word	0x0070d16c
	.word	0x3baedc1e
	.word	0x815dac25
	.word	0xab1898ce
	.word	0xc8d6bc78
	.word	0xd049ec95
	.word	0x27ca19bd
	.word	0xea7ef77b
	.word	0x3299b033
	.word	0x171aef29
	.word	0x9a8f2d10
	.word	0x9228200c
	.word	0x19665414
	.word	0x9eb9f42c
	.word	0xcaba2036
	.word	0x059b35f0
	.word	0x616fb492
	.word	0x2e8f7030
	.word	0xae33e7ab
	.word	0xf430d5c8
	.word	0xcf3b6ca4
	.word	0x06d0a168
	.word	0x8a1a7748
	.word	0x0a5e4ac7
	.word	0x703bfd07
	.word	0x1b9f5ba2
	.word	0x9408fff4
	.word	0xa1e71a08
	.word	0x7f24df0f
	.word	0x3df64778
	.word	0xb1c3394e
	.word	0x8151c5a4
	.word	0x669cde3f
	.word	0xbcf6e845
	.word	0xa89b00cb
	.word	0xd953be28
	.word	0x43828ba0
	.word	0x7ade5a02
	.word	0x0f392ad6
	.word	0xf098e6a2
	.word	0x59883c8b
	.word	0xaf57e8e3
	.word	0xef6cc3c0
	.word	0x1c9fe8e2
	.word	0xb1e0071d
	.word	0x6dc517ac
	.word	    0
 
 
# ----------------------------------------------------------
# The following is the main program.  You may not change this.
# You may only add your subroutines AFTER the "infinite end loop" instruction here.
# You MUST have two subroutines named "codgen" and "decode".
# BOTH must adhere to our calling conventions; 
# both MUST preserve all registers except v-regs and t-regs;
# we are going to TEST for this when we run your code.
# ----------------------------------------------------------
 
 
	.text
	.set noreorder
main:	li	$s0, 0x69da6bf9	# initialize "seed"
	la	$s1, seed	# initialize "seed"
	sw	$s0, 0($s1)
	la	$a0, coded	# address of start of coded words
	la	$a1, plain	# address of start of decoded bytes
	bal	decode		# outer call to recursive "decode"

end:    b       end             # infinite loop; plaintext now in "plain".
 
 
# ----------------------------------------------------------
# Group 89's assembly code for Function CodGen :
# ----------------------------------------------------------


  #    +-------------------+
  #    | 		   | -4($fp) <= $sp points here
  #    +-------------------+
  #    | old frame pointer |  0($fp) <= $fp points here
  #    +-------------------+
  #    |  our return addr  |  4($fp)
  #  --+-------------------+--
  #    |                   |
  #    |  caller's stack   |
  #    |                   |



codgen:  addiu $sp, $sp, -4  # creates the stack for codgen so that we can use it to store our local variables
         sw    $31, 0($sp)  
         addiu $sp, $sp, -4
         sw    $fp, 0($sp)  
         move  $fp, $sp  
         addiu $sp, $sp, -4

	 lw    $t0, 0($s1)   # loads the value of seed into $t0 so we can use it without modifying the $s registers
	 li    $t2, 0        # sets the value of $t2 to 0 just to make sure that it doesn't have a higher value when we start counting 1's in the seed

loop:    beq   $t0, $zero, loopend   # a loop that continues until the seed is 0, so we can count the amount of 1's in the seed
    	 addi  $t1, $t0, -1
    	 and   $t0, $t0, $t1
    	 addi  $t2, $t2, 1
    	 b     loop

loopend: lw    $t0, 0($s1)
    	 sll   $t3, $t0, 3   # shifts the value of the seed left 3 times to multiply it by 8
    	 srl   $t4, $t0, 2   # shifts the value of the seed right 2 times to divide it by 4

    	 xor   $t0, $t2, $t3 
    	 xor   $t0, $t0, $t4    # performs the xor's that are used to modify the value of the seed
    	 li    $t5, 0x45de4eab
         xor   $v0, $t5, $t0    # the return value which will be used in decode
	 sw    $t0, 0($s1)    # stores the modified value of the seed so that it can be used later

exit:    move  $sp, $fp  # removes the stack and returns to where codgen was called so that the program can continue from there
         lw    $fp, 0($sp)
         addiu $sp, $sp, 4
         lw    $31, 0($sp)
         addiu $sp, $sp, 4
         jr    $31	  
		

# ----------------------------------------------------------
# Group 89's assembly code for Function DeCode :
# ----------------------------------------------------------

	# your activation record diagram here.
  #    +-------------------+
  #    |  uninit, for "a1" | -24($fp) <= $sp points here
  #    +-------------------+
  #    |  uninit, for "a0" | -20($fp) 
  #    +-------------------+
  #    |  uninit, for "m"  | -16($fp) 
  #    +-------------------+
  #    |  uninit, for "y"  | -12($fp) 
  #    +-------------------+
  #    |  uninit, for "r"  | -8($fp) 
  #    +-------------------+
  #    |  uninit, for "x"  | -4($fp) 
  #    +-------------------+
  #    | old frame pointer |  0($fp) <= $fp points here
  #    +-------------------+
  #    |  our return addr  |  4($fp)
  #  --+-------------------+--
  #    |                   |
  #    |  caller's stack   |
  #    |                   |

decode: addiu $sp, $sp, -4  # creates the stack for decode so that we can use it to store local variables and parametres
	sw    $31, 0($sp)	
       	addiu $sp, $sp, -4
        sw    $fp, 0($sp)	
        move  $fp, $sp	
        addiu $sp, $sp, -24

	bal   codgen  # "jumps" to codgen so we get the value that we're supposed to invert for "x"
	add   $t0, $zero, $v0
	not   $t0, $t0
	sw    $t0, -4($fp)  # stores "x", "$a0" and "$a1" on the stack so we can access them later
	sw    $a0, -20($fp)
	sw    $a1, -24($fp)

if2:	lw    $t0, 0($a0)
	bne   $t0, $zero, else2

then2:	sb    $zero, 0($a1)
	lw    $t0, -4($fp)   # takes the value of "x" from the stack and stores it on the stack, but where we want "r" to be stored. We do this because it's the base case.
	sw    $t0, -8($fp)
	addi  $v0, $t0, 0
	b     exit2 

else2:	addi  $a0, $a0, 4
	addi  $a1, $a1, 1
	bal   decode  # runs decode several times until we reach the base case so we can get the value of $v0 which is the value that "y" will get
	addi  $t2, $v0, 0
	sw    $t2, -12($fp)

	lw    $t0, -4($fp)
	lw    $t1, -12($fp)
	lw    $t2, -20($fp)
	lw    $t3, 0($t2)
	add   $t4, $t0, $t1
	xor   $t4, $t4, $t3
	sw    $t4, -16($fp)  # using the code above we get the value of "m" by using the formula in pseudo code, then we store it in the stack for later use

	srl   $t4, $t4, 3
	lw    $t0, -24($fp)
	sb    $t4, 0($t0)  # makes bytearr point at the char that the 10th to 3rd bits of "m" represents, so we eventually get the message decoded

	bal   codgen  # runs codgen so we can invert and add 1 to the value it returns, thus we get a value for "r"
	addi  $t0, $v0, 0
	not   $t0, $t0
	addi  $t0, $t0, 1
	
	lw    $t1, -4($fp) # by using the lines below we calculate the final formula for "r" so that we can return "r"
	lw    $t2, -12($fp)
	lw    $t3, -16($fp)
	add   $t0, $t0, $t1
	add   $t0, $t0, $t2
	add   $t0, $t0, $t3
	addi  $t0, $t0, 5
	sw    $t0, -8($fp)
	addi  $v0, $t0, 0

exit2:	move	$sp, $fp # clears the stack and returns to where decode was called so that the program can continue from there
	lw	$fp, 0($sp)
	addiu	$sp, $sp, 4
	lw	$31, 0($sp)
	addiu	$sp, $sp, 4
	jr 	$31 	 

# end of file.

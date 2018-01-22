# Assignment: extend this program to reverse the string "intext"
# and write the result to "outtext".	

            .text
            .set noreorder
main:       la 	$t1, intext	# t1 points to start of intext
            la 	$t2, outtext	# t2 points to start of outtext
	    	 li 	$t0, 0		# t0 used to count characers

seek_end:   lb 	$t3, 0($t1)	# read character
            beq  $t3, 0, seek_end1 # check if 0 (end of string)
            addiu $t0, $t0, 1
            addiu $t1, $t1, 1
            b     seek_end

seek_end1: addu  $t2, $t2, $t0	# t2 points to end of outtext
           sb    $t3, 0($t2)	# write 0 to terminate string
           la    $t1, intext	# t1 points to start of intext
		addiu	$t2, $t2, -1

		addu  $a0, $a0, $t0
		addiu $a0, $a0, 1 
		addu	$a1, $a1, $t1	
		addu	$a2, $a2, $t2

rev:	    	addiu $sp, $sp, -4
	    	sw    $31, 0($sp)	
       	addiu $sp, $sp, -4
           sw    $fp, 0($sp)	
           move  $fp, $sp	
           addiu $sp, $sp, -12

		sw    $a0, -4($fp)
		sw    $a1, -8($fp)
		sw    $a2, -12($fp)

if:		ori	$t0, $zero, 1
		bne	$a0, $t0, else

then:		b 	exit

else:		addiu $a0, $a0, -1
		addiu	$a1, $a1, 1
		addiu	$a2, $a2, -1
		bal 	rev

		lw	$t1, -8($fp)
		lw	$t2, -12($fp)
		lb	$t3, 0($t1)		
		sb	$t3, 0($t2)

exit:		move	$sp, $fp
		lw	$fp, 0($sp)
		addiu	$sp, $sp, 4
		lw	$31, 0($sp)
		addiu	$sp, $sp, 4
		jr 	$31 	  

stop:	    	b     	stop

            .data
intext:		.string "!dlroW olleH"
            .align 4
outtext:	.string "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"


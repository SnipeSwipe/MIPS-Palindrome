.data
	num: .word 0
	r: .word 0
	rev: .word 0
	temp: .word 0
	str: .asciiz "\nEnter a number:"
	yes: .asciiz "\nYes"
	no: .asciiz "\nNo"
.text
main:
	j palin
	jr $ra
palin:
	li $v0, 4    #print message
	la $a0, str
	syscall
	
	li $v0, 5   #take input
	syscall
	sw $v0, num
	
	lw $t1, num   #t1=num
	sw $t1, temp  #temp=num
	loop:
		lw $t1, temp      #t1=temp
		rem $t2, $t1, 10	#t2=temp%10
		sw $t2, r		#r=t2
		lw $t0, rev			#rev=rev*10+r
		lw $t2, r
		mul $t1, $t0, 10		
		add $t3, $t1, $t2
		sw $t3, rev
		lw $t0, temp			#temp=temp/10
		div $t0, $t0, 10
		sw $t0, temp
		lw $t0, temp
		bne $t0, $zero, loop
	
	lw $t0, num
	lw $t1, rev

	bne $t0, $t1, n
	li $v0, 4    #print message
	la $a0, yes
	syscall
	jr $ra
	n:
		li $v0, 4    #print message
		la $a0, no
		syscall

	jr $ra
		

	




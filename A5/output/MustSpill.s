        .text
        .globl        main
main:
        move $fp, $sp
        subu $sp, $sp, 12
        sw $ra, -4($fp)
        jal Test35
        move $s0, $v0
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $ra, -4($fp)
        addu $sp, $sp, 12
        jal _exitret

        .text
        .globl        Test35
Test35:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 108
        sw $ra, -4($fp)
        sw $s0, 0($sp)
        sw $s1, 4($sp)
        sw $s2, 8($sp)
        sw $s3, 12($sp)
        sw $s4, 16($sp)
        sw $s5, 20($sp)
        sw $s6, 24($sp)
        sw $s7, 28($sp)
        li $v0, 0
        sw $v0, 32($sp)
        li $v0, 1
        sw $v0, 36($sp)
        li $v0, 2
        sw $v0, 40($sp)
        li $v0, 3
        sw $v0, 44($sp)
        li $v0, 4
        sw $v0, 48($sp)
        li $v0, 5
        sw $v0, 52($sp)
        li $v0, 6
        sw $v0, 56($sp)
        li $v0, 7
        sw $v0, 60($sp)
        li $v0, 8
        sw $v0, 64($sp)
        li $v0, 9
        sw $v0, 68($sp)
        li $v0, 10
        sw $v0, 72($sp)
        li $v0, 11
        sw $v0, 76($sp)
        li $v0, 12
        sw $v0, 80($sp)
        li $v0, 13
        sw $v0, 84($sp)
        li $v0, 14
        sw $v0, 88($sp)
        li $v0, 15
        sw $v0, 92($sp)
        li $t8, 16
        li $t9, 17
        li $s0, 18
        li $s1, 19
        li $s2, 20
        li $s3, 21
        li $s4, 22
        li $s5, 23
        li $s6, 24
        li $s7, 25
        li $t0, 26
        li $t1, 27
        li $t2, 28
        li $t3, 29
        li $t4, 30
        li $t5, 31
        li $t6, 32
        li $t7, 33
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t7
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t6
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t5
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t3
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s7
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s6
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s5
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s3
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t9
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $t8
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 92($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 88($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 84($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 80($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 76($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 72($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 68($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 64($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 60($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 56($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 52($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 48($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 44($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 40($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 36($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 32($sp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v0, 32($sp)
        move $v0, $v0
        lw $s0, 0($sp)
        lw $s1, 4($sp)
        lw $s2, 8($sp)
        lw $s3, 12($sp)
        lw $s4, 16($sp)
        lw $s5, 20($sp)
        lw $s6, 24($sp)
        lw $s7, 28($sp)
        lw $ra, -4($fp)
        lw $fp, -8($fp)
        addu $sp, $sp, 108
        jr $ra

        .text
        .globl _halloc
_halloc: 
        li $v0, 9 
        syscall
        jr $ra


        .text
        .globl _error
_error:
        li $v0, 4
        syscall
        li $v0, 10
        syscall


        .text
        .globl _print
_print:
        li $v0, 1
        syscall
        la $a0, newline
        li $v0, 4
        syscall
        jr $ra


        .text
        .globl _exitret
_exitret:
        li $v0, 10
        syscall
        .data
        .align 0
newline: 	.asciiz "\n"

        .data
        .align 0
error_msg:	.asciiz " ERROR : Abnormally terminated!\n "

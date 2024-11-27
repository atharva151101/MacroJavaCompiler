        .text
        .globl        main
main:
        move $fp, $sp
        subu $sp, $sp, 48
        sw $ra, -4($fp)
        li $v1, 8
        move $s0, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _halloc
        move $s0, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s0
        li $v1, 4
        move $s1, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s1
        jal _halloc
        move $s1, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s1, $s1
        la $s2, MT4_Change
        sw $s2, 4($s0)
        la $s2, MT4_Start
        sw $s2, 0($s0)
        sw $s0, 0($s1)
        move $s1, $s1
        lw $s0, 0($s1)
        lw $s0, 0($s0)
        li $v1, 1
        move $s2, $v1
        li $v1, 2
        move $s3, $v1
        li $v1, 3
        move $s4, $v1
        li $v1, 4
        move $s5, $v1
        li $v1, 5
        move $s6, $v1
        li $v1, 6
        move $s7, $v1
        sw $t0, 0($sp)
        sw $t1, 4($sp)
        sw $t2, 8($sp)
        sw $t3, 12($sp)
        sw $t4, 16($sp)
        sw $t5, 20($sp)
        sw $t6, 24($sp)
        sw $t7, 28($sp)
        sw $t8, 32($sp)
        sw $t9, 36($sp)
        move $a0, $s1
        move $a1, $s2
        move $a2, $s3
        move $a3, $s4
        sw $s5, -12($sp)
        sw $s6, -16($sp)
        sw $s7, -20($sp)
        jalr $s0
        lw $t0, 0($sp)
        lw $t1, 4($sp)
        lw $t2, 8($sp)
        lw $t3, 12($sp)
        lw $t4, 16($sp)
        lw $t5, 20($sp)
        lw $t6, 24($sp)
        lw $t7, 28($sp)
        lw $t8, 32($sp)
        lw $t9, 36($sp)
        move $s7, $v0
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s7
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $ra, -4($fp)
        addu $sp, $sp, 48
        jal _exitret

        .text
        .globl        MT4_Start
MT4_Start:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 92
        sw $ra, -4($fp)
        sw $s0, 0($sp)
        sw $s1, 4($sp)
        sw $s2, 8($sp)
        sw $s3, 12($sp)
        sw $s4, 16($sp)
        sw $s5, 20($sp)
        sw $s6, 24($sp)
        sw $s7, 28($sp)
        move $s0, $a0
        move $s1, $a1
        move $s2, $a2
        move $s3, $a3
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s1
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
        move $a0, $s3
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v1, -12($fp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v1, -16($fp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v1, -20($fp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s0
        lw $s4, 0($s0)
        lw $s4, 4($s4)
        sw $t0, 32($sp)
        sw $t1, 36($sp)
        sw $t2, 40($sp)
        sw $t3, 44($sp)
        sw $t4, 48($sp)
        sw $t5, 52($sp)
        sw $t6, 56($sp)
        sw $t7, 60($sp)
        sw $t8, 64($sp)
        sw $t9, 68($sp)
        move $a0, $s0
        lw $v0, -20($fp)
        move $a1, $v0
        lw $v0, -16($fp)
        move $a2, $v0
        lw $v0, -12($fp)
        move $a3, $v0
        sw $s3, -12($sp)
        sw $s2, -16($sp)
        sw $s1, -20($sp)
        jalr $s4
        lw $t0, 32($sp)
        lw $t1, 36($sp)
        lw $t2, 40($sp)
        lw $t3, 44($sp)
        lw $t4, 48($sp)
        lw $t5, 52($sp)
        lw $t6, 56($sp)
        lw $t7, 60($sp)
        lw $t8, 64($sp)
        lw $t9, 68($sp)
        move $s4, $v0
        move $s4, $s4
        move $v0, $s4
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
        addu $sp, $sp, 92
        jr $ra

        .text
        .globl        MT4_Change
MT4_Change:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 52
        sw $ra, -4($fp)
        sw $s0, 0($sp)
        sw $s1, 4($sp)
        sw $s2, 8($sp)
        sw $s3, 12($sp)
        sw $s4, 16($sp)
        sw $s5, 20($sp)
        sw $s6, 24($sp)
        sw $s7, 28($sp)
        move $v1, $a0
        move $s0, $a1
        move $s1, $a2
        move $s2, $a3
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
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
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v1, -12($fp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v1, -16($fp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $v1, -20($fp)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $v1
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        li $v1, 0
        move $s2, $v1
        move $v0, $s2
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
        addu $sp, $sp, 52
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

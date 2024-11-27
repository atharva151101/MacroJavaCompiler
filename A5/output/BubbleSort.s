        .text
        .globl        main
main:
        move $fp, $sp
        subu $sp, $sp, 48
        sw $ra, -4($fp)
        li $v1, 16
        move $s0, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _halloc
        move $s0, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s0
        li $v1, 12
        move $s1, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s1
        jal _halloc
        move $s1, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s1, $s1
        la $s2, BBS_Init
        sw $s2, 12($s0)
        la $s2, BBS_Print
        sw $s2, 8($s0)
        la $s2, BBS_Sort
        sw $s2, 4($s0)
        la $s2, BBS_Start
        sw $s2, 0($s0)
        li $v1, 4
        move $s2, $v1
        move $s2, $s2
L0:        li $v1, 11
        move $s3, $v1
        slt $s3, $s3, $s2
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        bne $s3 1 L1
        add $s3, $s1, $s2
        li $v1, 0
        move $s4, $v1
        sw $s4, 0($s3)
        li $v1, 4
        move $s4, $v1
        add $s4, $s2, $s4
        move $s2, $s4
        j L0
L1:        sw $s0, 0($s1)
        move $s1, $s1
        lw $s2, 0($s1)
        lw $s2, 0($s2)
        li $v1, 10
        move $s0, $v1
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
        move $a1, $s0
        jalr $s2
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
        move $s0, $v0
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $ra, -4($fp)
        addu $sp, $sp, 48
        jal _exitret

        .text
        .globl        BBS_Start
BBS_Start:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 80
        sw $ra, -4($fp)
        sw $s0, 0($sp)
        sw $s1, 4($sp)
        sw $s2, 8($sp)
        sw $s3, 12($sp)
        sw $s4, 16($sp)
        sw $s5, 20($sp)
        sw $s6, 24($sp)
        sw $s7, 28($sp)
        move $s1, $a0
        move $s0, $a1
        move $s2, $s1
        lw $s3, 0($s2)
        lw $s3, 12($s3)
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
        move $a0, $s2
        move $a1, $s0
        jalr $s3
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
        move $s3, $v0
        move $v1, $s3
        move $s3, $s1
        lw $s2, 0($s3)
        lw $s2, 8($s2)
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
        move $a0, $s3
        jalr $s2
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
        move $s2, $v0
        move $v1, $s2
        li $v1, 99999
        move $s2, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s1
        lw $s3, 0($s2)
        lw $s3, 4($s3)
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
        move $a0, $s2
        jalr $s3
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
        move $s3, $v0
        move $v1, $s3
        move $s1, $s1
        lw $s3, 0($s1)
        lw $s3, 8($s3)
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
        move $a0, $s1
        jalr $s3
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
        move $s3, $v0
        move $v1, $s3
        li $v1, 0
        move $s3, $v1
        move $v0, $s3
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        BBS_Sort
BBS_Sort:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 40
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
        lw $s1, 8($s0)
        li $v1, 1
        move $s2, $v1
        sub $s2, $s1, $s2
        move $s2, $s2
        li $v1, 0
        move $s1, $v1
        li $v1, 1
        move $s3, $v1
        sub $s3, $s1, $s3
        move $s3, $s3
L2:        li $v1, 1
        move $s1, $v1
        sub $s1, $s2, $s1
        slt $s1, $s1, $s3
        sw $t0, -4($sp)
        li $t0 1
        sub $s1, $t0, $s1
        lw $t0, -4($sp)
        bne $s1 1 L3
        li $v1, 1
        move $s1, $v1
        move $s1, $s1
L4:        slt $s4, $s2, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        bne $s4 1 L5
        li $v1, 1
        move $s4, $v1
        sub $s4, $s1, $s4
        move $s4, $s4
        lw $v1, 4($s0)
        li $v1, 4
        move $s5, $v1
        mult , $s4, $s5
        mflo , $s5
        move $s5, $s5
        lw $s4, 4($s0)
        lw $s6, 0($s4)
        li $v1, 1
        move $s7, $v1
        li $v1, 1
        move $t0, $v1
        sub $t0, $s6, $t0
        slt $t0, $t0, $s5
        sw $t1, -4($sp)
        li $t1 1
        sub $t0, $t1, $t0
        lw $t1, -4($sp)
        sub $t0, $s7, $t0
        bne $t0 1 L6
        jal _error
L6:        nop
        li $v1, 4
        move $t0, $v1
        add $t0, $s5, $t0
        add $t0, $s4, $t0
        lw $t0, 0($t0)
        move $t0, $t0
        lw $v1, 4($s0)
        li $v1, 4
        move $s4, $v1
        mult , $s1, $s4
        mflo , $s4
        move $s4, $s4
        lw $s5, 4($s0)
        lw $s7, 0($s5)
        li $v1, 1
        move $s6, $v1
        li $v1, 1
        move $t1, $v1
        sub $t1, $s7, $t1
        slt $t1, $t1, $s4
        sw $t0, -4($sp)
        li $t0 1
        sub $t1, $t0, $t1
        lw $t0, -4($sp)
        sub $t1, $s6, $t1
        bne $t1 1 L7
        jal _error
L7:        nop
        li $v1, 4
        move $t1, $v1
        add $t1, $s4, $t1
        add $t1, $s5, $t1
        lw $t1, 0($t1)
        move $t1, $t1
        li $v1, 1
        move $s5, $v1
        sub $s5, $t0, $s5
        slt $s5, $s5, $t1
        sw $t0, -4($sp)
        li $t0 1
        sub $s5, $t0, $s5
        lw $t0, -4($sp)
        bne $s5 1 L8
        li $v1, 1
        move $s5, $v1
        sub $s5, $s1, $s5
        move $s5, $s5
        lw $v1, 4($s0)
        li $v1, 4
        move $t1, $v1
        mult , $s5, $t1
        mflo , $t1
        move $t1, $t1
        lw $t0, 4($s0)
        lw $s4, 0($t0)
        li $v1, 1
        move $s6, $v1
        li $v1, 1
        move $s7, $v1
        sub $s7, $s4, $s7
        slt $s7, $s7, $t1
        sw $t0, -4($sp)
        li $t0 1
        sub $s7, $t0, $s7
        lw $t0, -4($sp)
        sub $s7, $s6, $s7
        bne $s7 1 L10
        jal _error
L10:        nop
        li $v1, 4
        move $s7, $v1
        add $s7, $t1, $s7
        add $s7, $t0, $s7
        lw $s7, 0($s7)
        move $s7, $s7
        li $v1, 1
        move $t0, $v1
        li $v1, 4
        move $t1, $v1
        mult , $t0, $t1
        mflo , $t1
        move $t1, $t1
        add $t0, $s0, $t1
        lw $v1, 0($t0)
        li $v1, 4
        move $t0, $v1
        mult , $s5, $t0
        mflo , $t0
        move $t0, $t0
        li $v1, 1
        move $s5, $v1
        li $v1, 4
        move $s6, $v1
        mult , $s5, $s6
        mflo , $s6
        move $t1, $s6
        add $t1, $s0, $t1
        lw $t1, 0($t1)
        lw $s6, 0($t1)
        li $v1, 1
        move $s5, $v1
        li $v1, 1
        move $s4, $v1
        sub $s4, $s6, $s4
        slt $s4, $s4, $t0
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        sub $s4, $s5, $s4
        bne $s4 1 L11
        jal _error
L11:        nop
        li $v1, 4
        move $s4, $v1
        add $s4, $t0, $s4
        add $s4, $t1, $s4
        lw $v1, 4($s0)
        li $v1, 4
        move $t1, $v1
        mult , $s1, $t1
        mflo , $t1
        move $t1, $t1
        lw $t0, 4($s0)
        lw $s5, 0($t0)
        li $v1, 1
        move $s6, $v1
        li $v1, 1
        move $t2, $v1
        sub $t2, $s5, $t2
        slt $t2, $t2, $t1
        sw $t0, -4($sp)
        li $t0 1
        sub $t2, $t0, $t2
        lw $t0, -4($sp)
        sub $t2, $s6, $t2
        bne $t2 1 L12
        jal _error
L12:        nop
        li $v1, 4
        move $t2, $v1
        add $t2, $t1, $t2
        add $t2, $t0, $t2
        lw $t2, 0($t2)
        sw $t2, 0($s4)
        li $v1, 1
        move $t2, $v1
        li $v1, 4
        move $s4, $v1
        mult , $t2, $s4
        mflo , $s4
        move $s4, $s4
        add $t2, $s0, $s4
        lw $v1, 0($t2)
        li $v1, 4
        move $t2, $v1
        mult , $s1, $t2
        mflo , $t2
        move $t2, $t2
        li $v1, 1
        move $t0, $v1
        li $v1, 4
        move $t1, $v1
        mult , $t0, $t1
        mflo , $t1
        move $s4, $t1
        add $s4, $s0, $s4
        lw $s4, 0($s4)
        lw $t1, 0($s4)
        li $v1, 1
        move $t0, $v1
        li $v1, 1
        move $s6, $v1
        sub $s6, $t1, $s6
        slt $s6, $s6, $t2
        sw $t0, -4($sp)
        li $t0 1
        sub $s6, $t0, $s6
        lw $t0, -4($sp)
        sub $s6, $t0, $s6
        bne $s6 1 L13
        jal _error
L13:        nop
        li $v1, 4
        move $s6, $v1
        add $s6, $t2, $s6
        add $s6, $s4, $s6
        sw $s7, 0($s6)
        j L9
L8:        li $v1, 0
        move $s6, $v1
        move $v1, $s6
L9:        nop
        li $v1, 1
        move $s6, $v1
        add $s6, $s1, $s6
        move $s1, $s6
        j L4
L5:        nop
        li $v1, 1
        move $s1, $v1
        sub $s1, $s2, $s1
        move $s2, $s1
        j L2
L3:        nop
        li $v1, 0
        move $s3, $v1
        move $v0, $s3
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
        addu $sp, $sp, 40
        jr $ra

        .text
        .globl        BBS_Print
BBS_Print:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 40
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
        li $v1, 0
        move $s1, $v1
        move $s1, $s1
L14:        lw $s2, 8($s0)
        li $v1, 1
        move $s3, $v1
        sub $s3, $s2, $s3
        move $s3, $s3
        slt $s3, $s3, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        bne $s3 1 L15
        lw $v1, 4($s0)
        li $v1, 4
        move $s3, $v1
        mult , $s1, $s3
        mflo , $s3
        move $s3, $s3
        lw $s2, 4($s0)
        lw $s4, 0($s2)
        li $v1, 1
        move $s5, $v1
        li $v1, 1
        move $s6, $v1
        sub $s6, $s4, $s6
        slt $s6, $s6, $s3
        sw $t0, -4($sp)
        li $t0 1
        sub $s6, $t0, $s6
        lw $t0, -4($sp)
        sub $s6, $s5, $s6
        bne $s6 1 L16
        jal _error
L16:        nop
        li $v1, 4
        move $s6, $v1
        add $s6, $s3, $s6
        add $s6, $s2, $s6
        lw $s6, 0($s6)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s6
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        li $v1, 1
        move $s6, $v1
        add $s6, $s1, $s6
        move $s1, $s6
        j L14
L15:        nop
        li $v1, 0
        move $s1, $v1
        move $v0, $s1
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
        addu $sp, $sp, 40
        jr $ra

        .text
        .globl        BBS_Init
BBS_Init:
        sw $fp, -8($sp)
        move $fp, $sp
        subu $sp, $sp, 40
        sw $ra, -4($fp)
        sw $s0, 0($sp)
        sw $s1, 4($sp)
        sw $s2, 8($sp)
        sw $s3, 12($sp)
        sw $s4, 16($sp)
        sw $s5, 20($sp)
        sw $s6, 24($sp)
        sw $s7, 28($sp)
        move $s1, $a0
        move $s0, $a1
        sw $s0, 8($s1)
        li $v1, 1
        move $s2, $v1
        add $s2, $s0, $s2
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s3
        jal _halloc
        move $s3, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s3, $s3
        li $v1, 4
        move $s2, $v1
        move $s2, $s2
L17:        li $v1, 1
        move $s4, $v1
        add $s4, $s0, $s4
        li $v1, 4
        move $s5, $v1
        mult , $s4, $s5
        mflo , $s5
        li $v1, 1
        move $s4, $v1
        sub $s4, $s5, $s4
        slt $s4, $s4, $s2
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        bne $s4 1 L18
        add $s4, $s3, $s2
        li $v1, 0
        move $s5, $v1
        sw $s5, 0($s4)
        li $v1, 4
        move $s5, $v1
        add $s5, $s2, $s5
        move $s2, $s5
        j L17
L18:        li $v1, 4
        move $s2, $v1
        mult , $s0, $s2
        mflo , $s2
        sw $s2, 0($s3)
        sw $s3, 4($s1)
        li $v1, 1
        move $s3, $v1
        li $v1, 4
        move $s2, $v1
        mult , $s3, $s2
        mflo , $s2
        move $s2, $s2
        add $s3, $s1, $s2
        lw $v1, 0($s3)
        li $v1, 0
        move $s3, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s3, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s3, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s3, $s5
        mflo , $s5
        move $s2, $s5
        add $s2, $s1, $s2
        lw $s2, 0($s2)
        lw $s5, 0($s2)
        li $v1, 1
        move $s3, $v1
        li $v1, 1
        move $s4, $v1
        sub $s4, $s5, $s4
        slt $s4, $s4, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        sub $s4, $s3, $s4
        bne $s4 1 L19
        jal _error
L19:        nop
        li $v1, 4
        move $s4, $v1
        add $s4, $s0, $s4
        add $s4, $s2, $s4
        li $v1, 20
        move $s2, $v1
        sw $s2, 0($s4)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s4, $v1
        mult , $s2, $s4
        mflo , $s4
        move $s4, $s4
        add $s2, $s1, $s4
        lw $v1, 0($s2)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s2, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s4, $s3
        add $s4, $s1, $s4
        lw $s4, 0($s4)
        lw $s3, 0($s4)
        li $v1, 1
        move $s2, $v1
        li $v1, 1
        move $s5, $v1
        sub $s5, $s3, $s5
        slt $s5, $s5, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s5, $t0, $s5
        lw $t0, -4($sp)
        sub $s5, $s2, $s5
        bne $s5 1 L20
        jal _error
L20:        nop
        li $v1, 4
        move $s5, $v1
        add $s5, $s0, $s5
        add $s5, $s4, $s5
        li $v1, 7
        move $s4, $v1
        sw $s4, 0($s5)
        li $v1, 1
        move $s4, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s4, $s5
        mflo , $s5
        move $s5, $s5
        add $s4, $s1, $s5
        lw $v1, 0($s4)
        li $v1, 2
        move $s4, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s4, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s4, $v1
        li $v1, 4
        move $s2, $v1
        mult , $s4, $s2
        mflo , $s2
        move $s5, $s2
        add $s5, $s1, $s5
        lw $s5, 0($s5)
        lw $s2, 0($s5)
        li $v1, 1
        move $s4, $v1
        li $v1, 1
        move $s3, $v1
        sub $s3, $s2, $s3
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s4, $s3
        bne $s3 1 L21
        jal _error
L21:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s5, $s3
        li $v1, 12
        move $s5, $v1
        sw $s5, 0($s3)
        li $v1, 1
        move $s5, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s5, $s3
        mflo , $s3
        move $s3, $s3
        add $s5, $s1, $s3
        lw $v1, 0($s5)
        li $v1, 3
        move $s5, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s5, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s5, $v1
        li $v1, 4
        move $s4, $v1
        mult , $s5, $s4
        mflo , $s4
        move $s3, $s4
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s4, 0($s3)
        li $v1, 1
        move $s5, $v1
        li $v1, 1
        move $s2, $v1
        sub $s2, $s4, $s2
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s5, $s2
        bne $s2 1 L22
        jal _error
L22:        nop
        li $v1, 4
        move $s2, $v1
        add $s2, $s0, $s2
        add $s2, $s3, $s2
        li $v1, 18
        move $s3, $v1
        sw $s3, 0($s2)
        li $v1, 1
        move $s3, $v1
        li $v1, 4
        move $s2, $v1
        mult , $s3, $s2
        mflo , $s2
        move $s2, $s2
        add $s3, $s1, $s2
        lw $v1, 0($s3)
        li $v1, 4
        move $s3, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s3, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s3, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s3, $s5
        mflo , $s5
        move $s2, $s5
        add $s2, $s1, $s2
        lw $s2, 0($s2)
        lw $s5, 0($s2)
        li $v1, 1
        move $s3, $v1
        li $v1, 1
        move $s4, $v1
        sub $s4, $s5, $s4
        slt $s4, $s4, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        sub $s4, $s3, $s4
        bne $s4 1 L23
        jal _error
L23:        nop
        li $v1, 4
        move $s4, $v1
        add $s4, $s0, $s4
        add $s4, $s2, $s4
        li $v1, 2
        move $s2, $v1
        sw $s2, 0($s4)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s4, $v1
        mult , $s2, $s4
        mflo , $s4
        move $s4, $s4
        add $s2, $s1, $s4
        lw $v1, 0($s2)
        li $v1, 5
        move $s2, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s2, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s4, $s3
        add $s4, $s1, $s4
        lw $s4, 0($s4)
        lw $s3, 0($s4)
        li $v1, 1
        move $s2, $v1
        li $v1, 1
        move $s5, $v1
        sub $s5, $s3, $s5
        slt $s5, $s5, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s5, $t0, $s5
        lw $t0, -4($sp)
        sub $s5, $s2, $s5
        bne $s5 1 L24
        jal _error
L24:        nop
        li $v1, 4
        move $s5, $v1
        add $s5, $s0, $s5
        add $s5, $s4, $s5
        li $v1, 11
        move $s4, $v1
        sw $s4, 0($s5)
        li $v1, 1
        move $s4, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s4, $s5
        mflo , $s5
        move $s5, $s5
        add $s4, $s1, $s5
        lw $v1, 0($s4)
        li $v1, 6
        move $s4, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s4, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s4, $v1
        li $v1, 4
        move $s2, $v1
        mult , $s4, $s2
        mflo , $s2
        move $s5, $s2
        add $s5, $s1, $s5
        lw $s5, 0($s5)
        lw $s2, 0($s5)
        li $v1, 1
        move $s4, $v1
        li $v1, 1
        move $s3, $v1
        sub $s3, $s2, $s3
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s4, $s3
        bne $s3 1 L25
        jal _error
L25:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s5, $s3
        li $v1, 6
        move $s5, $v1
        sw $s5, 0($s3)
        li $v1, 1
        move $s5, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s5, $s3
        mflo , $s3
        move $s3, $s3
        add $s5, $s1, $s3
        lw $v1, 0($s5)
        li $v1, 7
        move $s5, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s5, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s5, $v1
        li $v1, 4
        move $s4, $v1
        mult , $s5, $s4
        mflo , $s4
        move $s3, $s4
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s4, 0($s3)
        li $v1, 1
        move $s5, $v1
        li $v1, 1
        move $s2, $v1
        sub $s2, $s4, $s2
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s5, $s2
        bne $s2 1 L26
        jal _error
L26:        nop
        li $v1, 4
        move $s2, $v1
        add $s2, $s0, $s2
        add $s2, $s3, $s2
        li $v1, 9
        move $s3, $v1
        sw $s3, 0($s2)
        li $v1, 1
        move $s3, $v1
        li $v1, 4
        move $s2, $v1
        mult , $s3, $s2
        mflo , $s2
        move $s2, $s2
        add $s3, $s1, $s2
        lw $v1, 0($s3)
        li $v1, 8
        move $s3, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s3, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s3, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s3, $s5
        mflo , $s5
        move $s2, $s5
        add $s2, $s1, $s2
        lw $s2, 0($s2)
        lw $s5, 0($s2)
        li $v1, 1
        move $s3, $v1
        li $v1, 1
        move $s4, $v1
        sub $s4, $s5, $s4
        slt $s4, $s4, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        sub $s4, $s3, $s4
        bne $s4 1 L27
        jal _error
L27:        nop
        li $v1, 4
        move $s4, $v1
        add $s4, $s0, $s4
        add $s4, $s2, $s4
        li $v1, 19
        move $s2, $v1
        sw $s2, 0($s4)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s4, $v1
        mult , $s2, $s4
        mflo , $s4
        move $s4, $s4
        add $s2, $s1, $s4
        lw $v1, 0($s2)
        li $v1, 9
        move $s2, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s2, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s4, $s3
        add $s4, $s1, $s4
        lw $s4, 0($s4)
        lw $s1, 0($s4)
        li $v1, 1
        move $s3, $v1
        li $v1, 1
        move $s2, $v1
        sub $s2, $s1, $s2
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s3, $s2
        bne $s2 1 L28
        jal _error
L28:        nop
        li $v1, 4
        move $s2, $v1
        add $s2, $s0, $s2
        add $s2, $s4, $s2
        li $v1, 5
        move $s4, $v1
        sw $s4, 0($s2)
        li $v1, 0
        move $s4, $v1
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
        addu $sp, $sp, 40
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

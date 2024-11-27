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
        la $s2, QS_Init
        sw $s2, 12($s0)
        la $s2, QS_Print
        sw $s2, 8($s0)
        la $s2, QS_Sort
        sw $s2, 4($s0)
        la $s2, QS_Start
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
        .globl        QS_Start
QS_Start:
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
        li $v1, 9999
        move $s2, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        lw $s2, 8($s1)
        li $v1, 1
        move $s3, $v1
        sub $s3, $s2, $s3
        move $s3, $s3
        move $s2, $s1
        lw $s0, 0($s2)
        lw $s0, 4($s0)
        li $v1, 0
        move $s4, $v1
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
        move $a1, $s4
        move $a2, $s3
        jalr $s0
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
        move $s3, $s4
        move $s1, $s1
        lw $s4, 0($s1)
        lw $s4, 8($s4)
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
        move $s3, $s4
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        QS_Sort
QS_Sort:
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
        move $s2, $a2
        li $v1, 0
        move $s3, $v1
        move $s3, $s3
        li $v1, 1
        move $s4, $v1
        sub $s4, $s2, $s4
        move $s4, $s4
        slt $s4, $s4, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        bne $s4 1 L2
        lw $v1, 4($s1)
        li $v1, 4
        move $s4, $v1
        mult , $s2, $s4
        mflo , $s4
        move $s4, $s4
        lw $s5, 4($s1)
        lw $s6, 0($s5)
        li $v1, 1
        move $s7, $v1
        sub $s7, $s6, $s7
        move $s7, $s7
        li $v1, 1
        move $s6, $v1
        slt $s7, $s7, $s4
        sw $t0, -4($sp)
        li $t0 1
        sub $s7, $t0, $s7
        lw $t0, -4($sp)
        sub $s7, $s6, $s7
        bne $s7 1 L4
        jal _error
L4:        nop
        li $v1, 4
        move $s7, $v1
        add $s7, $s4, $s7
        add $s7, $s5, $s7
        lw $s7, 0($s7)
        move $s7, $s7
        li $v1, 1
        move $s5, $v1
        sub $s5, $s0, $s5
        move $s5, $s5
        move $s4, $s2
        li $v1, 1
        move $s6, $v1
        move $s6, $s6
L5:        bne $s6 1 L6
        li $v1, 1
        move $t0, $v1
        move $t0, $t0
L7:        bne $t0 1 L8
        li $v1, 1
        move $t1, $v1
        add $t1, $s5, $t1
        move $s5, $t1
        lw $v1, 4($s1)
        li $v1, 4
        move $t1, $v1
        mult , $s5, $t1
        mflo , $t1
        move $t1, $t1
        lw $t2, 4($s1)
        lw $t3, 0($t2)
        li $v1, 1
        move $t4, $v1
        sub $t4, $t3, $t4
        move $t4, $t4
        li $v1, 1
        move $t3, $v1
        slt $t4, $t4, $t1
        sw $t0, -4($sp)
        li $t0 1
        sub $t4, $t0, $t4
        lw $t0, -4($sp)
        sub $t4, $t3, $t4
        bne $t4 1 L9
        jal _error
L9:        nop
        li $v1, 4
        move $t4, $v1
        add $t4, $t1, $t4
        add $t4, $t2, $t4
        lw $t4, 0($t4)
        move $t4, $t4
        li $v1, 1
        move $t2, $v1
        sub $t2, $s7, $t2
        move $t2, $t2
        li $v1, 1
        move $t1, $v1
        slt $t2, $t2, $t4
        sw $t0, -4($sp)
        li $t0 1
        sub $t2, $t0, $t2
        lw $t0, -4($sp)
        sub $t2, $t1, $t2
        bne $t2 1 L10
        li $v1, 0
        move $t2, $v1
        move $t0, $t2
        j L11
L10:        li $v1, 1
        move $t2, $v1
        move $t0, $t2
L11:        nop
        j L7
L8:        nop
        li $v1, 1
        move $t2, $v1
        move $t0, $t2
L12:        bne $t0 1 L13
        li $v1, 1
        move $t2, $v1
        sub $t2, $s4, $t2
        move $s4, $t2
        lw $v1, 4($s1)
        li $v1, 4
        move $t2, $v1
        mult , $s4, $t2
        mflo , $t2
        move $t2, $t2
        lw $t1, 4($s1)
        lw $t3, 0($t1)
        li $v1, 1
        move $t5, $v1
        sub $t5, $t3, $t5
        move $t5, $t5
        li $v1, 1
        move $t3, $v1
        slt $t5, $t5, $t2
        sw $t0, -4($sp)
        li $t0 1
        sub $t5, $t0, $t5
        lw $t0, -4($sp)
        sub $t5, $t3, $t5
        bne $t5 1 L14
        jal _error
L14:        nop
        li $v1, 4
        move $t5, $v1
        add $t5, $t2, $t5
        add $t5, $t1, $t5
        lw $t5, 0($t5)
        move $t4, $t5
        li $v1, 1
        move $t5, $v1
        sub $t5, $t4, $t5
        move $t5, $t5
        li $v1, 1
        move $t4, $v1
        slt $t5, $t5, $s7
        sw $t0, -4($sp)
        li $t0 1
        sub $t5, $t0, $t5
        lw $t0, -4($sp)
        sub $t5, $t4, $t5
        bne $t5 1 L15
        li $v1, 0
        move $t5, $v1
        move $t0, $t5
        j L16
L15:        li $v1, 1
        move $t5, $v1
        move $t0, $t5
L16:        nop
        j L12
L13:        nop
        lw $v1, 4($s1)
        li $v1, 4
        move $t0, $v1
        mult , $s5, $t0
        mflo , $t0
        move $t0, $t0
        lw $t5, 4($s1)
        lw $t4, 0($t5)
        li $v1, 1
        move $t1, $v1
        sub $t1, $t4, $t1
        move $t1, $t1
        li $v1, 1
        move $t4, $v1
        slt $t1, $t1, $t0
        sw $t0, -4($sp)
        li $t0 1
        sub $t1, $t0, $t1
        lw $t0, -4($sp)
        sub $t1, $t4, $t1
        bne $t1 1 L17
        jal _error
L17:        nop
        li $v1, 4
        move $t1, $v1
        add $t1, $t0, $t1
        add $t1, $t5, $t1
        lw $t1, 0($t1)
        move $s3, $t1
        li $v1, 1
        move $t1, $v1
        li $v1, 4
        move $t5, $v1
        mult , $t1, $t5
        mflo , $t5
        move $t5, $t5
        add $t1, $s1, $t5
        lw $v1, 0($t1)
        li $v1, 4
        move $t1, $v1
        mult , $s5, $t1
        mflo , $t1
        move $t1, $t1
        li $v1, 1
        move $t0, $v1
        li $v1, 4
        move $t4, $v1
        mult , $t0, $t4
        mflo , $t4
        move $t5, $t4
        add $t5, $s1, $t5
        lw $t5, 0($t5)
        lw $t4, 0($t5)
        li $v1, 1
        move $t0, $v1
        sub $t0, $t4, $t0
        move $t0, $t0
        li $v1, 1
        move $t4, $v1
        slt $t0, $t0, $t1
        sw $t1, -4($sp)
        li $t1 1
        sub $t0, $t1, $t0
        lw $t1, -4($sp)
        sub $t0, $t4, $t0
        bne $t0 1 L18
        jal _error
L18:        nop
        li $v1, 4
        move $t0, $v1
        add $t0, $t1, $t0
        add $t0, $t5, $t0
        lw $v1, 4($s1)
        li $v1, 4
        move $t5, $v1
        mult , $s4, $t5
        mflo , $t5
        move $t5, $t5
        lw $t1, 4($s1)
        lw $t4, 0($t1)
        li $v1, 1
        move $t2, $v1
        sub $t2, $t4, $t2
        move $t2, $t2
        li $v1, 1
        move $t4, $v1
        slt $t2, $t2, $t5
        sw $t0, -4($sp)
        li $t0 1
        sub $t2, $t0, $t2
        lw $t0, -4($sp)
        sub $t2, $t4, $t2
        bne $t2 1 L19
        jal _error
L19:        nop
        li $v1, 4
        move $t2, $v1
        add $t2, $t5, $t2
        add $t2, $t1, $t2
        lw $t2, 0($t2)
        sw $t2, 0($t0)
        li $v1, 1
        move $t2, $v1
        li $v1, 4
        move $t0, $v1
        mult , $t2, $t0
        mflo , $t0
        move $t0, $t0
        add $t2, $s1, $t0
        lw $v1, 0($t2)
        li $v1, 4
        move $t2, $v1
        mult , $s4, $t2
        mflo , $t2
        move $t2, $t2
        li $v1, 1
        move $t1, $v1
        li $v1, 4
        move $t5, $v1
        mult , $t1, $t5
        mflo , $t5
        move $t0, $t5
        add $t0, $s1, $t0
        lw $t0, 0($t0)
        lw $t5, 0($t0)
        li $v1, 1
        move $t1, $v1
        sub $t1, $t5, $t1
        move $t1, $t1
        li $v1, 1
        move $t5, $v1
        slt $t1, $t1, $t2
        sw $t0, -4($sp)
        li $t0 1
        sub $t1, $t0, $t1
        lw $t0, -4($sp)
        sub $t1, $t5, $t1
        bne $t1 1 L20
        jal _error
L20:        nop
        li $v1, 4
        move $t1, $v1
        add $t1, $t2, $t1
        add $t1, $t0, $t1
        sw $s3, 0($t1)
        slt $t1, $s5, $s4
        sw $t0, -4($sp)
        li $t0 1
        sub $t1, $t0, $t1
        lw $t0, -4($sp)
        bne $t1 1 L21
        li $v1, 0
        move $t1, $v1
        move $s6, $t1
        j L22
L21:        li $v1, 1
        move $t1, $v1
        move $s6, $t1
L22:        nop
        j L5
L6:        nop
        li $v1, 1
        move $s6, $v1
        li $v1, 4
        move $s7, $v1
        mult , $s6, $s7
        mflo , $s7
        move $s7, $s7
        add $s6, $s1, $s7
        lw $v1, 0($s6)
        li $v1, 4
        move $s6, $v1
        mult , $s4, $s6
        mflo , $s6
        move $s6, $s6
        li $v1, 1
        move $s4, $v1
        li $v1, 4
        move $t1, $v1
        mult , $s4, $t1
        mflo , $t1
        move $s7, $t1
        add $s7, $s1, $s7
        lw $s7, 0($s7)
        lw $t1, 0($s7)
        li $v1, 1
        move $s4, $v1
        sub $s4, $t1, $s4
        move $s4, $s4
        li $v1, 1
        move $t1, $v1
        slt $s4, $s4, $s6
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        sub $s4, $t1, $s4
        bne $s4 1 L23
        jal _error
L23:        nop
        li $v1, 4
        move $s4, $v1
        add $s4, $s6, $s4
        add $s4, $s7, $s4
        lw $v1, 4($s1)
        li $v1, 4
        move $s7, $v1
        mult , $s5, $s7
        mflo , $s7
        move $s7, $s7
        lw $s6, 4($s1)
        lw $t1, 0($s6)
        li $v1, 1
        move $t0, $v1
        sub $t0, $t1, $t0
        move $t0, $t0
        li $v1, 1
        move $t1, $v1
        slt $t0, $t0, $s7
        sw $t1, -4($sp)
        li $t1 1
        sub $t0, $t1, $t0
        lw $t1, -4($sp)
        sub $t0, $t1, $t0
        bne $t0 1 L24
        jal _error
L24:        nop
        li $v1, 4
        move $t0, $v1
        add $t0, $s7, $t0
        add $t0, $s6, $t0
        lw $t0, 0($t0)
        sw $t0, 0($s4)
        li $v1, 1
        move $t0, $v1
        li $v1, 4
        move $s4, $v1
        mult , $t0, $s4
        mflo , $s4
        move $s4, $s4
        add $t0, $s1, $s4
        lw $v1, 0($t0)
        li $v1, 4
        move $t0, $v1
        mult , $s5, $t0
        mflo , $t0
        move $t0, $t0
        li $v1, 1
        move $s6, $v1
        li $v1, 4
        move $s7, $v1
        mult , $s6, $s7
        mflo , $s7
        move $s4, $s7
        add $s4, $s1, $s4
        lw $s4, 0($s4)
        lw $s7, 0($s4)
        li $v1, 1
        move $s6, $v1
        sub $s6, $s7, $s6
        move $s6, $s6
        li $v1, 1
        move $s7, $v1
        slt $s6, $s6, $t0
        sw $t0, -4($sp)
        li $t0 1
        sub $s6, $t0, $s6
        lw $t0, -4($sp)
        sub $s6, $s7, $s6
        bne $s6 1 L25
        jal _error
L25:        nop
        li $v1, 4
        move $s6, $v1
        add $s6, $t0, $s6
        add $s6, $s4, $s6
        lw $v1, 4($s1)
        li $v1, 4
        move $s4, $v1
        mult , $s2, $s4
        mflo , $s4
        move $s4, $s4
        lw $t0, 4($s1)
        lw $s7, 0($t0)
        li $v1, 1
        move $t1, $v1
        sub $t1, $s7, $t1
        move $t1, $t1
        li $v1, 1
        move $s7, $v1
        slt $t1, $t1, $s4
        sw $t0, -4($sp)
        li $t0 1
        sub $t1, $t0, $t1
        lw $t0, -4($sp)
        sub $t1, $s7, $t1
        bne $t1 1 L26
        jal _error
L26:        nop
        li $v1, 4
        move $t1, $v1
        add $t1, $s4, $t1
        add $t1, $t0, $t1
        lw $t1, 0($t1)
        sw $t1, 0($s6)
        li $v1, 1
        move $t1, $v1
        li $v1, 4
        move $s6, $v1
        mult , $t1, $s6
        mflo , $s6
        move $s6, $s6
        add $t1, $s1, $s6
        lw $v1, 0($t1)
        li $v1, 4
        move $t1, $v1
        mult , $s2, $t1
        mflo , $t1
        move $t1, $t1
        li $v1, 1
        move $t0, $v1
        li $v1, 4
        move $s4, $v1
        mult , $t0, $s4
        mflo , $s4
        move $s6, $s4
        add $s6, $s1, $s6
        lw $s6, 0($s6)
        lw $s4, 0($s6)
        li $v1, 1
        move $t0, $v1
        sub $t0, $s4, $t0
        move $t0, $t0
        li $v1, 1
        move $s4, $v1
        slt $t0, $t0, $t1
        sw $t1, -4($sp)
        li $t1 1
        sub $t0, $t1, $t0
        lw $t1, -4($sp)
        sub $t0, $s4, $t0
        bne $t0 1 L27
        jal _error
L27:        nop
        li $v1, 4
        move $t0, $v1
        add $t0, $t1, $t0
        add $t0, $s6, $t0
        sw $s3, 0($t0)
        move $t0, $s1
        lw $s3, 0($t0)
        lw $s3, 4($s3)
        li $v1, 1
        move $s6, $v1
        sub $s6, $s5, $s6
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
        move $a0, $t0
        move $a1, $s0
        move $a2, $s6
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
        move $s6, $v0
        move $v1, $s6
        move $s1, $s1
        lw $s6, 0($s1)
        lw $s6, 4($s6)
        li $v1, 1
        move $s3, $v1
        add $s3, $s5, $s3
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
        move $a1, $s3
        move $a2, $s2
        jalr $s6
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
        j L3
L2:        li $v1, 0
        move $s3, $v1
        move $v1, $s3
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        QS_Print
QS_Print:
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
L28:        lw $s2, 8($s0)
        li $v1, 1
        move $s3, $v1
        sub $s3, $s2, $s3
        move $s3, $s3
        slt $s3, $s3, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        bne $s3 1 L29
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
        sub $s5, $s4, $s5
        move $s5, $s5
        li $v1, 1
        move $s4, $v1
        slt $s5, $s5, $s3
        sw $t0, -4($sp)
        li $t0 1
        sub $s5, $t0, $s5
        lw $t0, -4($sp)
        sub $s5, $s4, $s5
        bne $s5 1 L30
        jal _error
L30:        nop
        li $v1, 4
        move $s5, $v1
        add $s5, $s3, $s5
        add $s5, $s2, $s5
        lw $s5, 0($s5)
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s5
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        li $v1, 1
        move $s5, $v1
        add $s5, $s1, $s5
        move $s1, $s5
        j L28
L29:        nop
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
        .globl        QS_Init
QS_Init:
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
L31:        li $v1, 1
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
        bne $s4 1 L32
        add $s4, $s3, $s2
        li $v1, 0
        move $s5, $v1
        sw $s5, 0($s4)
        li $v1, 4
        move $s5, $v1
        add $s5, $s2, $s5
        move $s2, $s5
        j L31
L32:        li $v1, 4
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
        sub $s3, $s5, $s3
        move $s3, $s3
        li $v1, 1
        move $s5, $v1
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s5, $s3
        bne $s3 1 L33
        jal _error
L33:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s2, $s3
        li $v1, 20
        move $s2, $v1
        sw $s2, 0($s3)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s3, $s3
        add $s2, $s1, $s3
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
        move $s5, $v1
        mult , $s2, $s5
        mflo , $s5
        move $s3, $s5
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s5, 0($s3)
        li $v1, 1
        move $s2, $v1
        sub $s2, $s5, $s2
        move $s2, $s2
        li $v1, 1
        move $s5, $v1
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s5, $s2
        bne $s2 1 L34
        jal _error
L34:        nop
        li $v1, 4
        move $s2, $v1
        add $s2, $s0, $s2
        add $s2, $s3, $s2
        li $v1, 7
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
        li $v1, 2
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
        sub $s3, $s5, $s3
        move $s3, $s3
        li $v1, 1
        move $s5, $v1
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s5, $s3
        bne $s3 1 L35
        jal _error
L35:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s2, $s3
        li $v1, 12
        move $s2, $v1
        sw $s2, 0($s3)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s3, $s3
        add $s2, $s1, $s3
        lw $v1, 0($s2)
        li $v1, 3
        move $s2, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s2, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s2, $s5
        mflo , $s5
        move $s3, $s5
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s5, 0($s3)
        li $v1, 1
        move $s2, $v1
        sub $s2, $s5, $s2
        move $s2, $s2
        li $v1, 1
        move $s5, $v1
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s5, $s2
        bne $s2 1 L36
        jal _error
L36:        nop
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
        sub $s3, $s5, $s3
        move $s3, $s3
        li $v1, 1
        move $s5, $v1
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s5, $s3
        bne $s3 1 L37
        jal _error
L37:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s2, $s3
        li $v1, 2
        move $s2, $v1
        sw $s2, 0($s3)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s3, $s3
        add $s2, $s1, $s3
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
        move $s5, $v1
        mult , $s2, $s5
        mflo , $s5
        move $s3, $s5
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s5, 0($s3)
        li $v1, 1
        move $s2, $v1
        sub $s2, $s5, $s2
        move $s2, $s2
        li $v1, 1
        move $s5, $v1
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s5, $s2
        bne $s2 1 L38
        jal _error
L38:        nop
        li $v1, 4
        move $s2, $v1
        add $s2, $s0, $s2
        add $s2, $s3, $s2
        li $v1, 11
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
        li $v1, 6
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
        sub $s3, $s5, $s3
        move $s3, $s3
        li $v1, 1
        move $s5, $v1
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s5, $s3
        bne $s3 1 L39
        jal _error
L39:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s2, $s3
        li $v1, 6
        move $s2, $v1
        sw $s2, 0($s3)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s3, $s3
        add $s2, $s1, $s3
        lw $v1, 0($s2)
        li $v1, 7
        move $s2, $v1
        li $v1, 4
        move $s0, $v1
        mult , $s2, $s0
        mflo , $s0
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s5, $v1
        mult , $s2, $s5
        mflo , $s5
        move $s3, $s5
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s5, 0($s3)
        li $v1, 1
        move $s2, $v1
        sub $s2, $s5, $s2
        move $s2, $s2
        li $v1, 1
        move $s5, $v1
        slt $s2, $s2, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s2, $t0, $s2
        lw $t0, -4($sp)
        sub $s2, $s5, $s2
        bne $s2 1 L40
        jal _error
L40:        nop
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
        sub $s3, $s5, $s3
        move $s3, $s3
        li $v1, 1
        move $s5, $v1
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        sub $s3, $s5, $s3
        bne $s3 1 L41
        jal _error
L41:        nop
        li $v1, 4
        move $s3, $v1
        add $s3, $s0, $s3
        add $s3, $s2, $s3
        li $v1, 19
        move $s2, $v1
        sw $s2, 0($s3)
        li $v1, 1
        move $s2, $v1
        li $v1, 4
        move $s3, $v1
        mult , $s2, $s3
        mflo , $s3
        move $s3, $s3
        add $s2, $s1, $s3
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
        move $s5, $v1
        mult , $s2, $s5
        mflo , $s5
        move $s3, $s5
        add $s3, $s1, $s3
        lw $s3, 0($s3)
        lw $s1, 0($s3)
        li $v1, 1
        move $s5, $v1
        sub $s5, $s1, $s5
        move $s5, $s5
        li $v1, 1
        move $s1, $v1
        slt $s5, $s5, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s5, $t0, $s5
        lw $t0, -4($sp)
        sub $s5, $s1, $s5
        bne $s5 1 L42
        jal _error
L42:        nop
        li $v1, 4
        move $s5, $v1
        add $s5, $s0, $s5
        add $s5, $s3, $s5
        li $v1, 5
        move $s3, $v1
        sw $s3, 0($s5)
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

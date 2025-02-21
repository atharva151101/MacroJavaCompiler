        .text
        .globl        main
main:
        move $fp, $sp
        subu $sp, $sp, 48
        sw $ra, -4($fp)
        li $v1, 4
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
        la $s2, TV_Start
        sw $s2, 0($s0)
        sw $s0, 0($s1)
        move $s1, $s1
        lw $s0, 0($s1)
        lw $s0, 0($s0)
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
        .globl        TV_Start
TV_Start:
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
        move $v1, $a0
        li $v1, 84
        move $s0, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _halloc
        move $s0, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s0
        li $v1, 28
        move $s1, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s1
        jal _halloc
        move $s1, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s1, $s1
        la $s2, Tree_accept
        sw $s2, 80($s0)
        la $s2, Tree_RecPrint
        sw $s2, 76($s0)
        la $s2, Tree_Print
        sw $s2, 72($s0)
        la $s2, Tree_Search
        sw $s2, 68($s0)
        la $s2, Tree_RemoveLeft
        sw $s2, 64($s0)
        la $s2, Tree_RemoveRight
        sw $s2, 60($s0)
        la $s2, Tree_Remove
        sw $s2, 56($s0)
        la $s2, Tree_Delete
        sw $s2, 52($s0)
        la $s2, Tree_Insert
        sw $s2, 48($s0)
        la $s2, Tree_Compare
        sw $s2, 44($s0)
        la $s2, Tree_SetHas_Right
        sw $s2, 40($s0)
        la $s2, Tree_SetHas_Left
        sw $s2, 36($s0)
        la $s2, Tree_GetHas_Left
        sw $s2, 32($s0)
        la $s2, Tree_GetHas_Right
        sw $s2, 28($s0)
        la $s2, Tree_SetKey
        sw $s2, 24($s0)
        la $s2, Tree_GetKey
        sw $s2, 20($s0)
        la $s2, Tree_GetLeft
        sw $s2, 16($s0)
        la $s2, Tree_GetRight
        sw $s2, 12($s0)
        la $s2, Tree_SetLeft
        sw $s2, 8($s0)
        la $s2, Tree_SetRight
        sw $s2, 4($s0)
        la $s2, Tree_Init
        sw $s2, 0($s0)
        li $v1, 4
        move $s2, $v1
        move $s2, $s2
L2:        li $v1, 27
        move $s3, $v1
        slt $s3, $s3, $s2
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        bne $s3 1 L3
        add $s3, $s1, $s2
        li $v1, 0
        move $s4, $v1
        sw $s4, 0($s3)
        li $v1, 4
        move $s4, $v1
        add $s4, $s2, $s4
        move $s2, $s4
        j L2
L3:        sw $s0, 0($s1)
        move $s1, $s1
        move $s2, $s1
        lw $s0, 0($s2)
        lw $s0, 0($s0)
        li $v1, 16
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
        move $v1, $s4
        move $s4, $s1
        lw $s0, 0($s4)
        lw $s0, 72($s0)
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
        move $a0, $s4
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
        move $s0, $v0
        move $v1, $s0
        li $v1, 100000000
        move $s0, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s1
        lw $s4, 0($s0)
        lw $s4, 48($s4)
        li $v1, 8
        move $s2, $v1
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
        move $a1, $s2
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
        move $s2, $v0
        move $v1, $s2
        move $s2, $s1
        lw $s4, 0($s2)
        lw $s4, 48($s4)
        li $v1, 24
        move $s0, $v1
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
        move $s0, $v0
        move $v1, $s0
        move $s0, $s1
        lw $s4, 0($s0)
        lw $s4, 48($s4)
        li $v1, 4
        move $s2, $v1
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
        move $a1, $s2
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
        move $s2, $v0
        move $v1, $s2
        move $s2, $s1
        lw $s4, 0($s2)
        lw $s4, 48($s4)
        li $v1, 12
        move $s0, $v1
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
        move $s0, $v0
        move $v1, $s0
        move $s0, $s1
        lw $s4, 0($s0)
        lw $s4, 48($s4)
        li $v1, 20
        move $s2, $v1
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
        move $a1, $s2
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
        move $s2, $v0
        move $v1, $s2
        move $s2, $s1
        lw $s4, 0($s2)
        lw $s4, 48($s4)
        li $v1, 28
        move $s0, $v1
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
        move $s0, $v0
        move $v1, $s0
        move $s0, $s1
        lw $s4, 0($s0)
        lw $s4, 48($s4)
        li $v1, 14
        move $s2, $v1
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
        move $a1, $s2
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
        move $s2, $v0
        move $v1, $s2
        move $s2, $s1
        lw $s4, 0($s2)
        lw $s4, 72($s4)
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
        move $v1, $s4
        li $v1, 100000000
        move $s4, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        li $v1, 4
        move $s4, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _halloc
        move $s4, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s4, $s4
        li $v1, 12
        move $s2, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _halloc
        move $s2, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s2
        la $s0, MyVisitor_visit
        sw $s0, 0($s4)
        li $v1, 4
        move $s0, $v1
        move $s0, $s0
L4:        li $v1, 11
        move $s3, $v1
        slt $s3, $s3, $s0
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        bne $s3 1 L5
        add $s3, $s2, $s0
        li $v1, 0
        move $s5, $v1
        sw $s5, 0($s3)
        li $v1, 4
        move $s5, $v1
        add $s5, $s0, $s5
        move $s0, $s5
        j L4
L5:        sw $s4, 0($s2)
        move $s2, $s2
        li $v1, 50000000
        move $s0, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s0
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s1
        lw $s4, 0($s0)
        lw $s4, 80($s4)
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
        move $a1, $s2
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
        move $v1, $s4
        li $v1, 100000000
        move $s4, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s4, $s1
        lw $s0, 0($s4)
        lw $s0, 68($s0)
        li $v1, 24
        move $s2, $v1
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
        move $a0, $s4
        move $a1, $s2
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
        move $s2, $v0
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s1
        lw $s0, 0($s2)
        lw $s0, 68($s0)
        li $v1, 12
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
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s4, $s1
        lw $s0, 0($s4)
        lw $s0, 68($s0)
        li $v1, 16
        move $s2, $v1
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
        move $a0, $s4
        move $a1, $s2
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
        move $s2, $v0
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s1
        lw $s0, 0($s2)
        lw $s0, 68($s0)
        li $v1, 50
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
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s4, $s1
        lw $s0, 0($s4)
        lw $s0, 68($s0)
        li $v1, 12
        move $s2, $v1
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
        move $a0, $s4
        move $a1, $s2
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
        move $s2, $v0
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s1
        lw $s0, 0($s2)
        lw $s0, 52($s0)
        li $v1, 12
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
        move $v1, $s4
        move $s4, $s1
        lw $s0, 0($s4)
        lw $s0, 72($s0)
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
        move $a0, $s4
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
        move $s0, $v0
        move $v1, $s0
        move $s1, $s1
        lw $s0, 0($s1)
        lw $s0, 68($s0)
        li $v1, 12
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
        move $a0, $s1
        move $a1, $s4
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
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s4
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
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
        .globl        Tree_Init
Tree_Init:
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
        sw $s0, 12($s1)
        li $v1, 0
        move $s0, $v1
        sw $s0, 16($s1)
        li $v1, 0
        move $s0, $v1
        sw $s0, 20($s1)
        li $v1, 1
        move $s0, $v1
        move $v0, $s0
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
        .globl        Tree_SetRight
Tree_SetRight:
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
        move $s1, $a1
        sw $s1, 8($s0)
        li $v1, 1
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
        .globl        Tree_SetLeft
Tree_SetLeft:
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
        move $s1, $a1
        sw $s1, 4($s0)
        li $v1, 1
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
        .globl        Tree_GetRight
Tree_GetRight:
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
        lw $s0, 8($s0)
        move $v0, $s0
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
        .globl        Tree_GetLeft
Tree_GetLeft:
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
        lw $s0, 4($s0)
        move $v0, $s0
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
        .globl        Tree_GetKey
Tree_GetKey:
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
        lw $s0, 12($s0)
        move $v0, $s0
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
        .globl        Tree_SetKey
Tree_SetKey:
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
        move $s1, $a1
        sw $s1, 12($s0)
        li $v1, 1
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
        .globl        Tree_GetHas_Right
Tree_GetHas_Right:
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
        lw $s0, 20($s0)
        move $v0, $s0
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
        .globl        Tree_GetHas_Left
Tree_GetHas_Left:
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
        lw $s0, 16($s0)
        move $v0, $s0
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
        .globl        Tree_SetHas_Left
Tree_SetHas_Left:
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
        move $s1, $a1
        sw $s1, 16($s0)
        li $v1, 1
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
        .globl        Tree_SetHas_Right
Tree_SetHas_Right:
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
        move $s1, $a1
        sw $s1, 20($s0)
        li $v1, 1
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
        .globl        Tree_Compare
Tree_Compare:
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
        move $v1, $a0
        move $s1, $a1
        move $s0, $a2
        li $v1, 0
        move $s2, $v1
        move $v1, $s2
        li $v1, 1
        move $s2, $v1
        add $s2, $s0, $s2
        move $s2, $s2
        li $v1, 1
        move $s3, $v1
        sub $s3, $s0, $s3
        move $s3, $s3
        slt $s3, $s3, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s3, $t0, $s3
        lw $t0, -4($sp)
        bne $s3 1 L6
        li $v1, 0
        move $s3, $v1
        move $s3, $s3
        j L7
L6:        li $v1, 1
        move $s0, $v1
        sub $s0, $s2, $s0
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        slt $s0, $s0, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s0, $t0, $s0
        lw $t0, -4($sp)
        sub $s0, $s2, $s0
        bne $s0 1 L8
        li $v1, 0
        move $s0, $v1
        move $s3, $s0
        j L9
L8:        li $v1, 1
        move $s0, $v1
        move $s3, $s0
L9:        nop
L7:        nop
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
        .globl        Tree_Insert
Tree_Insert:
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
        move $s0, $a0
        move $s1, $a1
        li $v1, 84
        move $s2, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _halloc
        move $s2, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s2
        li $v1, 28
        move $s3, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s3
        jal _halloc
        move $s3, $v0
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s3, $s3
        la $s4, Tree_accept
        sw $s4, 80($s2)
        la $s4, Tree_RecPrint
        sw $s4, 76($s2)
        la $s4, Tree_Print
        sw $s4, 72($s2)
        la $s4, Tree_Search
        sw $s4, 68($s2)
        la $s4, Tree_RemoveLeft
        sw $s4, 64($s2)
        la $s4, Tree_RemoveRight
        sw $s4, 60($s2)
        la $s4, Tree_Remove
        sw $s4, 56($s2)
        la $s4, Tree_Delete
        sw $s4, 52($s2)
        la $s4, Tree_Insert
        sw $s4, 48($s2)
        la $s4, Tree_Compare
        sw $s4, 44($s2)
        la $s4, Tree_SetHas_Right
        sw $s4, 40($s2)
        la $s4, Tree_SetHas_Left
        sw $s4, 36($s2)
        la $s4, Tree_GetHas_Left
        sw $s4, 32($s2)
        la $s4, Tree_GetHas_Right
        sw $s4, 28($s2)
        la $s4, Tree_SetKey
        sw $s4, 24($s2)
        la $s4, Tree_GetKey
        sw $s4, 20($s2)
        la $s4, Tree_GetLeft
        sw $s4, 16($s2)
        la $s4, Tree_GetRight
        sw $s4, 12($s2)
        la $s4, Tree_SetLeft
        sw $s4, 8($s2)
        la $s4, Tree_SetRight
        sw $s4, 4($s2)
        la $s4, Tree_Init
        sw $s4, 0($s2)
        li $v1, 4
        move $s4, $v1
        move $s4, $s4
L10:        li $v1, 27
        move $s5, $v1
        slt $s5, $s5, $s4
        sw $t0, -4($sp)
        li $t0 1
        sub $s5, $t0, $s5
        lw $t0, -4($sp)
        bne $s5 1 L11
        add $s5, $s3, $s4
        li $v1, 0
        move $s6, $v1
        sw $s6, 0($s5)
        li $v1, 4
        move $s6, $v1
        add $s6, $s4, $s6
        move $s4, $s6
        j L10
L11:        sw $s2, 0($s3)
        move $s3, $s3
        move $s4, $s3
        lw $s2, 0($s4)
        lw $s2, 0($s2)
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
        move $a0, $s4
        move $a1, $s1
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
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        move $s2, $s2
L12:        bne $s2 1 L13
        move $s4, $s0
        lw $s6, 0($s4)
        lw $s6, 20($s6)
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
        move $a0, $s4
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
        move $s6, $v0
        move $s6, $s6
        li $v1, 1
        move $s4, $v1
        sub $s4, $s6, $s4
        move $s4, $s4
        slt $s4, $s4, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        bne $s4 1 L14
        move $s4, $s0
        lw $s6, 0($s4)
        lw $s6, 32($s6)
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
        move $a0, $s4
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
        move $s6, $v0
        bne $s6 1 L16
        move $s6, $s0
        lw $s4, 0($s6)
        lw $s4, 16($s4)
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
        move $a0, $s6
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
        move $s0, $s4
        j L17
L16:        li $v1, 0
        move $s4, $v1
        move $s2, $s4
        move $s4, $s0
        lw $s6, 0($s4)
        lw $s6, 36($s6)
        li $v1, 1
        move $s5, $v1
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
        move $a0, $s4
        move $a1, $s5
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
        move $s5, $v0
        move $v1, $s5
        move $s5, $s0
        lw $s6, 0($s5)
        lw $s6, 8($s6)
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
        move $a0, $s5
        move $a1, $s3
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
        move $s6, $v0
        move $v1, $s6
L17:        nop
        j L15
L14:        move $s6, $s0
        lw $s5, 0($s6)
        lw $s5, 28($s5)
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
        move $a0, $s6
        jalr $s5
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
        move $s5, $v0
        bne $s5 1 L18
        move $s5, $s0
        lw $s6, 0($s5)
        lw $s6, 12($s6)
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
        move $a0, $s5
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
        move $s6, $v0
        move $s0, $s6
        j L19
L18:        li $v1, 0
        move $s6, $v1
        move $s2, $s6
        move $s6, $s0
        lw $s5, 0($s6)
        lw $s5, 40($s5)
        li $v1, 1
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
        move $a0, $s6
        move $a1, $s4
        jalr $s5
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
        move $v1, $s4
        move $s4, $s0
        lw $s5, 0($s4)
        lw $s5, 4($s5)
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
        move $a0, $s4
        move $a1, $s3
        jalr $s5
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
        move $s5, $v0
        move $v1, $s5
L19:        nop
L15:        nop
        j L12
L13:        nop
        li $v1, 1
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        Tree_Delete
Tree_Delete:
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
        move $s0, $a0
        move $s1, $a1
        move $s2, $s0
        move $s3, $s0
        li $v1, 1
        move $s4, $v1
        move $s4, $s4
        li $v1, 0
        move $s5, $v1
        move $s5, $s5
        li $v1, 1
        move $s6, $v1
        move $s6, $s6
L20:        bne $s4 1 L21
        move $s7, $s2
        lw $t0, 0($s7)
        lw $t0, 20($t0)
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
        move $a0, $s7
        jalr $t0
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
        move $t0, $v0
        move $t0, $t0
        li $v1, 1
        move $s7, $v1
        sub $s7, $t0, $s7
        move $s7, $s7
        slt $s7, $s7, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s7, $t0, $s7
        lw $t0, -4($sp)
        bne $s7 1 L22
        move $s7, $s2
        lw $t1, 0($s7)
        lw $t1, 32($t1)
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
        move $a0, $s7
        jalr $t1
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
        move $t1, $v0
        bne $t1 1 L24
        move $s3, $s2
        move $t1, $s2
        lw $s7, 0($t1)
        lw $s7, 16($s7)
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
        move $a0, $t1
        jalr $s7
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
        move $s7, $v0
        move $s2, $s7
        j L25
L24:        li $v1, 0
        move $s7, $v1
        move $s4, $s7
L25:        nop
        j L23
L22:        li $v1, 1
        move $s7, $v1
        sub $s7, $s1, $s7
        move $s7, $s7
        slt $s7, $s7, $t0
        sw $t0, -4($sp)
        li $t0 1
        sub $s7, $t0, $s7
        lw $t0, -4($sp)
        bne $s7 1 L26
        move $s7, $s2
        lw $t0, 0($s7)
        lw $t0, 28($t0)
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
        move $a0, $s7
        jalr $t0
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
        move $t0, $v0
        bne $t0 1 L28
        move $s3, $s2
        move $t0, $s2
        lw $s7, 0($t0)
        lw $s7, 12($s7)
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
        jalr $s7
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
        move $s7, $v0
        move $s2, $s7
        j L29
L28:        li $v1, 0
        move $s7, $v1
        move $s4, $s7
L29:        nop
        j L27
L26:        bne $s6 1 L30
        li $v1, 0
        move $s7, $v1
        move $s7, $s7
        li $v1, 1
        move $t0, $v1
        move $t1, $s2
        lw $t2, 0($t1)
        lw $t2, 28($t2)
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
        move $a0, $t1
        jalr $t2
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
        move $t2, $v0
        sub $t2, $t0, $t2
        bne $t2 1 L34
        li $v1, 1
        move $t2, $v1
        move $t0, $s2
        lw $t1, 0($t0)
        lw $t1, 32($t1)
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
        jalr $t1
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
        move $t1, $v0
        sub $t1, $t2, $t1
        bne $t1 1 L34
        li $v1, 1
        move $t1, $v1
        move $s7, $t1
L34:        nop
        bne $s7 1 L32
        li $v1, 1
        move $s7, $v1
        move $v1, $s7
        j L33
L32:        move $s7, $s0
        lw $t1, 0($s7)
        lw $t1, 56($t1)
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
        move $a0, $s7
        move $a1, $s3
        move $a2, $s2
        jalr $t1
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
        move $t1, $v0
        move $v1, $t1
L33:        nop
        j L31
L30:        move $t1, $s0
        lw $s7, 0($t1)
        lw $s7, 56($s7)
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
        move $a0, $t1
        move $a1, $s3
        move $a2, $s2
        jalr $s7
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
        move $s7, $v0
        move $v1, $s7
L31:        nop
        li $v1, 1
        move $s7, $v1
        move $s5, $s7
        li $v1, 0
        move $s7, $v1
        move $s4, $s7
L27:        nop
L23:        nop
        li $v1, 0
        move $s7, $v1
        move $s6, $s7
        j L20
L21:        nop
        move $v0, $s5
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
        .globl        Tree_Remove
Tree_Remove:
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
        move $s2, $a1
        move $s0, $a2
        move $s3, $s0
        lw $s4, 0($s3)
        lw $s4, 32($s4)
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
        bne $s4 1 L35
        move $s4, $s1
        lw $s3, 0($s4)
        lw $s3, 64($s3)
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
        move $a0, $s4
        move $a1, $s2
        move $a2, $s0
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
        j L36
L35:        move $s3, $s0
        lw $s4, 0($s3)
        lw $s4, 28($s4)
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
        bne $s4 1 L37
        move $s4, $s1
        lw $s3, 0($s4)
        lw $s3, 60($s3)
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
        move $a0, $s4
        move $a1, $s2
        move $a2, $s0
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
        j L38
L37:        move $s3, $s0
        lw $s4, 0($s3)
        lw $s4, 20($s4)
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
        move $s3, $s2
        lw $s0, 0($s3)
        lw $s0, 16($s0)
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
        move $s0, $v0
        move $s0, $s0
        lw $s3, 0($s0)
        lw $s3, 20($s3)
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
        move $s3, $s3
        move $s0, $s1
        lw $s5, 0($s0)
        lw $s5, 44($s5)
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
        move $a1, $s4
        move $a2, $s3
        jalr $s5
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
        move $s5, $v0
        bne $s5 1 L39
        move $s5, $s2
        lw $s0, 0($s5)
        lw $s0, 8($s0)
        lw $s3, 24($s1)
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
        move $a0, $s5
        move $a1, $s3
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
        move $s3, $v0
        move $v1, $s3
        move $s3, $s2
        lw $s0, 0($s3)
        lw $s0, 36($s0)
        li $v1, 0
        move $s5, $v1
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
        move $a1, $s5
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
        move $s5, $v0
        move $v1, $s5
        j L40
L39:        move $s5, $s2
        lw $s0, 0($s5)
        lw $s0, 4($s0)
        lw $s1, 24($s1)
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
        move $a0, $s5
        move $a1, $s1
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
        move $s1, $v0
        move $v1, $s1
        move $s2, $s2
        lw $s1, 0($s2)
        lw $s1, 40($s1)
        li $v1, 0
        move $s0, $v1
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
        jalr $s1
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
        move $s0, $v0
        move $v1, $s0
L40:        nop
L38:        nop
L36:        nop
        li $v1, 1
        move $s0, $v1
        move $v0, $s0
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
        .globl        Tree_RemoveRight
Tree_RemoveRight:
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
        move $s2, $a1
        move $s0, $a2
L41:        move $s3, $s0
        lw $s4, 0($s3)
        lw $s4, 28($s4)
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
        bne $s4 1 L42
        move $s4, $s0
        lw $s3, 0($s4)
        lw $s3, 24($s3)
        move $s5, $s0
        lw $s6, 0($s5)
        lw $s6, 12($s6)
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
        move $a0, $s5
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
        move $s6, $v0
        move $s6, $s6
        lw $s5, 0($s6)
        lw $s5, 20($s5)
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
        move $a0, $s6
        jalr $s5
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
        move $s5, $v0
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
        move $a0, $s4
        move $a1, $s5
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
        move $s5, $v0
        move $v1, $s5
        move $s2, $s0
        move $s5, $s0
        lw $s3, 0($s5)
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
        move $a0, $s5
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
        move $s0, $s3
        j L41
L42:        nop
        move $s0, $s2
        lw $s3, 0($s0)
        lw $s3, 4($s3)
        lw $s1, 24($s1)
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
        move $a1, $s1
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
        move $s1, $v0
        move $v1, $s1
        move $s2, $s2
        lw $s1, 0($s2)
        lw $s1, 40($s1)
        li $v1, 0
        move $s3, $v1
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
        move $a1, $s3
        jalr $s1
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
        li $v1, 1
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
        .globl        Tree_RemoveLeft
Tree_RemoveLeft:
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
        move $s2, $a1
        move $s0, $a2
L43:        move $s3, $s0
        lw $s4, 0($s3)
        lw $s4, 32($s4)
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
        bne $s4 1 L44
        move $s4, $s0
        lw $s3, 0($s4)
        lw $s3, 24($s3)
        move $s5, $s0
        lw $s6, 0($s5)
        lw $s6, 16($s6)
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
        move $a0, $s5
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
        move $s6, $v0
        move $s6, $s6
        lw $s5, 0($s6)
        lw $s5, 20($s5)
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
        move $a0, $s6
        jalr $s5
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
        move $s5, $v0
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
        move $a0, $s4
        move $a1, $s5
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
        move $s5, $v0
        move $v1, $s5
        move $s2, $s0
        move $s5, $s0
        lw $s3, 0($s5)
        lw $s3, 16($s3)
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
        move $a0, $s5
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
        move $s0, $s3
        j L43
L44:        nop
        move $s0, $s2
        lw $s3, 0($s0)
        lw $s3, 8($s3)
        lw $s1, 24($s1)
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
        move $a1, $s1
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
        move $s1, $v0
        move $v1, $s1
        move $s2, $s2
        lw $s1, 0($s2)
        lw $s1, 36($s1)
        li $v1, 0
        move $s3, $v1
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
        move $a1, $s3
        jalr $s1
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
        li $v1, 1
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
        .globl        Tree_Search
Tree_Search:
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
        move $s0, $a0
        move $s1, $a1
        move $s0, $s0
        li $v1, 1
        move $s2, $v1
        move $s2, $s2
        li $v1, 0
        move $s3, $v1
        move $s3, $s3
L45:        bne $s2 1 L46
        move $s4, $s0
        lw $s5, 0($s4)
        lw $s5, 20($s5)
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
        move $a0, $s4
        jalr $s5
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
        move $s5, $v0
        move $s5, $s5
        li $v1, 1
        move $s4, $v1
        sub $s4, $s5, $s4
        move $s4, $s4
        slt $s4, $s4, $s1
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        bne $s4 1 L47
        move $s4, $s0
        lw $s6, 0($s4)
        lw $s6, 32($s6)
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
        move $a0, $s4
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
        move $s6, $v0
        bne $s6 1 L49
        move $s6, $s0
        lw $s4, 0($s6)
        lw $s4, 16($s4)
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
        move $a0, $s6
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
        move $s0, $s4
        j L50
L49:        li $v1, 0
        move $s4, $v1
        move $s2, $s4
L50:        nop
        j L48
L47:        li $v1, 1
        move $s4, $v1
        sub $s4, $s1, $s4
        move $s4, $s4
        slt $s4, $s4, $s5
        sw $t0, -4($sp)
        li $t0 1
        sub $s4, $t0, $s4
        lw $t0, -4($sp)
        bne $s4 1 L51
        move $s4, $s0
        lw $s5, 0($s4)
        lw $s5, 28($s5)
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
        move $a0, $s4
        jalr $s5
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
        move $s5, $v0
        bne $s5 1 L53
        move $s5, $s0
        lw $s4, 0($s5)
        lw $s4, 12($s4)
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
        move $a0, $s5
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
        move $s0, $s4
        j L54
L53:        li $v1, 0
        move $s4, $v1
        move $s2, $s4
L54:        nop
        j L52
L51:        li $v1, 1
        move $s4, $v1
        move $s3, $s4
        li $v1, 0
        move $s4, $v1
        move $s2, $s4
L52:        nop
L48:        nop
        j L45
L46:        nop
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
        .globl        Tree_Print
Tree_Print:
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
        move $s0, $a0
        move $s1, $s0
        move $s0, $s0
        lw $s2, 0($s0)
        lw $s2, 76($s2)
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
        move $a1, $s1
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
        li $v1, 1
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        Tree_RecPrint
Tree_RecPrint:
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
        move $s0, $a0
        move $s1, $a1
        move $s2, $s1
        lw $s3, 0($s2)
        lw $s3, 32($s3)
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
        bne $s3 1 L55
        move $s3, $s0
        lw $s2, 0($s3)
        lw $s2, 76($s2)
        move $s4, $s1
        lw $s5, 0($s4)
        lw $s5, 16($s5)
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
        move $a0, $s4
        jalr $s5
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
        move $s5, $v0
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
        move $a1, $s5
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
        move $s5, $v0
        move $v1, $s5
        j L56
L55:        li $v1, 1
        move $s5, $v1
        move $v1, $s5
L56:        nop
        move $s5, $s1
        lw $s2, 0($s5)
        lw $s2, 20($s2)
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
        move $a0, $s5
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
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s1
        lw $s5, 0($s2)
        lw $s5, 28($s5)
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
        jalr $s5
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
        move $s5, $v0
        bne $s5 1 L57
        move $s0, $s0
        lw $s5, 0($s0)
        lw $s5, 76($s5)
        move $s1, $s1
        lw $s2, 0($s1)
        lw $s2, 12($s2)
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
        move $a1, $s2
        jalr $s5
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
        j L58
L57:        li $v1, 1
        move $s2, $v1
        move $v1, $s2
L58:        nop
        li $v1, 1
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        Tree_accept
Tree_accept:
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
        li $v1, 333
        move $s2, $v1
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s0, $s0
        lw $s2, 0($s0)
        lw $s2, 0($s2)
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
        move $a1, $s1
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
        addu $sp, $sp, 80
        jr $ra

        .text
        .globl        Visitor_visit
Visitor_visit:
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
        move $s2, $s0
        lw $s3, 0($s2)
        lw $s3, 28($s3)
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
        bne $s3 1 L59
        move $s3, $s0
        lw $s2, 0($s3)
        lw $s2, 12($s2)
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
        sw $s2, 8($s1)
        lw $s2, 8($s1)
        move $s2, $s2
        lw $s3, 0($s2)
        lw $s3, 80($s3)
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
        move $a1, $s1
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
        j L60
L59:        li $v1, 0
        move $s3, $v1
        move $v1, $s3
L60:        nop
        move $s3, $s0
        lw $s2, 0($s3)
        lw $s2, 32($s2)
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
        bne $s2 1 L61
        move $s0, $s0
        lw $s2, 0($s0)
        lw $s2, 16($s2)
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
        sw $s2, 4($s1)
        lw $s2, 4($s1)
        move $s2, $s2
        lw $s0, 0($s2)
        lw $s0, 80($s0)
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
        move $a1, $s1
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
        move $s0, $v0
        move $v1, $s0
        j L62
L61:        li $v1, 0
        move $s0, $v1
        move $v1, $s0
L62:        nop
        li $v1, 0
        move $s0, $v1
        move $v0, $s0
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
        .globl        MyVisitor_visit
MyVisitor_visit:
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
        move $s2, $s0
        lw $s3, 0($s2)
        lw $s3, 28($s3)
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
        bne $s3 1 L63
        move $s3, $s0
        lw $s2, 0($s3)
        lw $s2, 12($s2)
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
        sw $s2, 8($s1)
        lw $s2, 8($s1)
        move $s2, $s2
        lw $s3, 0($s2)
        lw $s3, 80($s3)
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
        move $a1, $s1
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
        j L64
L63:        li $v1, 0
        move $s3, $v1
        move $v1, $s3
L64:        nop
        move $s3, $s0
        lw $s2, 0($s3)
        lw $s2, 20($s2)
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
        subu $sp, $sp, 4
        sw $a0, 0($sp)
        move $a0, $s2
        jal _print
        lw $a0, 0($sp)
        addu $sp, $sp, 4
        move $s2, $s0
        lw $s3, 0($s2)
        lw $s3, 32($s3)
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
        bne $s3 1 L65
        move $s0, $s0
        lw $s3, 0($s0)
        lw $s3, 16($s3)
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
        sw $s3, 4($s1)
        lw $s3, 4($s1)
        move $s3, $s3
        lw $s0, 0($s3)
        lw $s0, 80($s0)
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
        move $a1, $s1
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
        move $s0, $v0
        move $v1, $s0
        j L66
L65:        li $v1, 0
        move $s0, $v1
        move $v1, $s0
L66:        nop
        li $v1, 0
        move $s0, $v1
        move $v0, $s0
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

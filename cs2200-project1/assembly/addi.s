!addi $t0, $t0, 5
!add $t1, $t0, $t1
!nand $t2, $t1, $zero !t2 = 1111...
!lea $a0, 5 !a0 = 9
!sw $t2, 0x5($a0) !almost def worked
!lw $a1, 0x5($a0)
!jalr $ra, $a0
!addi $t0, $t0, 0 !placeholder
!addi $t0, $t0, 0 !placeholder
!addi $t0, $t0, 1 !should be jumping here
!beq $zero, $zero, main

addi $t0, $t0, 5
blt $zero, $zero, main
addi $t0, $t0, 5
addi $t0, $t0, 5
main:
    nand $t0, $t0, $t1

HALT

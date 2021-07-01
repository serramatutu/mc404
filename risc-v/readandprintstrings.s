main:
    addi sp, sp, -4
    sw ra, 0(sp)

    addi t0, zero, 4
    ecall

    call ReadAndPrint

    lw ra, 0(sp)
    addi sp, sp, 4

    ret

ReadAndPrint:
    addi t0, zero, 1
    bge a0, t0, _ReadAndPrint_noskip
    ret

    _ReadAndPrint_noskip:
    addi sp, sp, -12
    sw ra, 0(sp)
    sw s0, 4(sp)
    sw s1, 8(sp)

    addi s0, a0, 0

    addi t0, zero, 7
    addi a0, zero, 20
    ecall
    addi s1, a0, 0

    addi t0, zero, 6
    addi a0, s1, 0
    addi a1, zero, 20
    ecall

    addi a0, s0, -1
    call ReadAndPrint

    addi t0, zero, 3
    addi a0, s1, 0
    addi a1, zero, 20
    ecall

    addi t0, zero, 7
    addi a0, zero, -20
    ecall

    lw s1, 8(sp)
    lw s0, 4(sp)
    lw ra, 0(sp)
    addi sp, sp, 12

    ret
    
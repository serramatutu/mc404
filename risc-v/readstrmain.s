main:
    addi t0, zero, 7
    addi a0, zero, 4
    ecall
    add t1, zero, a0

    add a0, zero, t1
    addi t0, zero, 6
    addi a1, zero, 4
    ecall
    
    call FUNCAO

    addi t0, zero, 3
    addi a1, zero, 4
    ecall

    ret
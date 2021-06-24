ImprimeMaiuscula:
    addi sp, sp, -4
    sw ra, 0(sp)

    call Maiuscula

    addi t1, a0, 0
    _ImprimeMaiuscula_loop:
        lbu a0, 0(t1)
        beq a0, zero, _ImprimeMaiuscula_loop_fim

        addi t0, zero, 2
        ecall
        
        addi t1, t1, 1
        j _ImprimeMaiuscula_loop
    _ImprimeMaiuscula_loop_fim:

    lw ra, 0(sp)
    addi sp, sp, 4

    ret
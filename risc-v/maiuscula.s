Maiuscula:
    addi t0, a0, 0

    _Maiuscula_loop:
        lbu t1, 0(t0)
        beq t1, zero, _Maiuscula_loop_fim

        addi t2, zero, 90
        bgeu t2, t1, _Maiuscula_atual_maiusculo
            addi t1, t1, -32
            sb t1, 0(t0)
        _Maiuscula_atual_maiusculo:
        addi t0, t0, 1
        j _Maiuscula_loop

    _Maiuscula_loop_fim:

    ret
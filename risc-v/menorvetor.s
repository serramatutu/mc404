MenorVetor:
    # t0: endereco atual
    add t0, zero, a0

    # t1: menor endereco invalido
    add t1, zero, a1
    slli t1, t1, 2
    add t1, t1, a0

    # a0: menor numero ate agora
    addi a0, zero, 1
    not a0, a0
    srli a0, a0, 1

    _MenorVetorFor:
        bge t0, t1, _MenorVetorFim
        
        # t2: valor no endereco atual (mem[t0])
        lw t2, t0, 0
        bge t2, a0, _MenorVetorNaoEMaior
        add a0, zero, t2
        _MenorVetorNaoEMaior:

        addi t0, t0, 4

        j _MenorVetorFor

_MenorVetorFim:
    ret

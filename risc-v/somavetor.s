SomaVetor:
    # t0: indice atual
    addi t0, zero, 0

    # t1: menor indice invalido
    add t1, zero, a3
    slli t1, t1, 2

    _SomaVetorFor:
        bge t0, t1, _SomaVetorFim

        # t2: posicao de memoria atual em a        
        add t2, a0, t0
        # t2: valor atual de a
        lw t2, t2, 0

        # t3: posicao de memoria atual em b    
        add t3, a1, t0
        # t3: valor atual de a
        lw t3, t3, 0

        # t2: soma de a e b
        add t2, t2, t3

        # t3: posicao de memoria atual em c
        add t3, a2, t0
        # escreve t2 em mem[t3]
        sw t2, t3, 0

        addi t0, t0, 4

        j _SomaVetorFor

_SomaVetorFim:
    ret

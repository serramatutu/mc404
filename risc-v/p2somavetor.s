main:
    addi t0, zero, 7
    addi a0, zero, 8
    ecall

    addi t0, zero, 1
    sh t0, 0(a0)
    addi t0, zero, 0
    sh t0, 2(a0)
    addi t0, zero, 3
    sh t0, 4(a0)
    addi t0, zero, 4
    sh t0, 6(a0)

    addi a1, zero, 4

    call SomaVetor

    addi a0, a0, 0

SomaVetor:
    addi t0, zero, 0

    _SomaVetor_for:
        beq a1, zero, _SomaVetor_endfor

        lh t1, 0(a0)
        add t0, t0, t1

        addi a0, a0, 2
        addi a1, a1, -1
        j _SomaVetor_for
    _SomaVetor_endfor:

    addi a0, t0, 0

    ret
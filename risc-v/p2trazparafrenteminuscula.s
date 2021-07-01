main:
    addi t0, zero, 7
    addi a0, zero, 4
    ecall
    add t1, zero, a0

    add a0, zero, t1
    addi t0, zero, 6
    addi a1, zero, 4
    ecall
    
    call TrazParaFrenteMinuscula

    addi t0, zero, 3
    addi a1, zero, 4
    ecall

    ret

TrazParaFrenteMinuscula:
    addi sp, sp, -20
    sw ra, 0(sp)
    sw s0, 4(sp)
    sw s1, 8(sp)
    sw s2, 12(sp)
    sw s3, 16(sp)

    addi s0, a0, 0

    addi t0, s0, 0

    _TrazParaFrenteMinuscula_length_for:
        lbu t1, 0(t0)
        beq t1, zero, _TrazParaFrenteMinuscula_length_endfor
        addi t0, t0, 1
        j _TrazParaFrenteMinuscula_length_for
    _TrazParaFrenteMinuscula_length_endfor:

    sub s1, t0, s0

    addi t0, zero, 7
    addi t1, s1, 1
    add a0, zero, t1
    ecall

    addi s2, a0, 0

    addi s3, zero, 0
    _TrazParaFrenteMinuscula_newstr_for:
        bge s3, s1, _TrazParaFrenteMinuscula_newstr_endfor

        add t0, s0, s3
        lbu a0, 0(t0)
        call Minuscula
        
        add t0, s2, s1
        addi t0, t0, -1
        sub t0, t0, s3

        sb a0, 0(t0)

        addi s3, s3, 1

        j _TrazParaFrenteMinuscula_newstr_for
    _TrazParaFrenteMinuscula_newstr_endfor:

    addi a0, s2, 0

    lw s3, 16(sp)
    lw s2, 12(sp)
    lw s1, 8(sp)
    lw s0, 4(sp)
    lw ra, 0(sp)
    addi sp, sp, 20

    ret

Minuscula:
    addi t0, zero, 65
    blt a0, t0, _Minuscula_skip

    addi t0, zero, 90
    blt t0, a0, _Minuscula_skip

    addi a0, a0, 32

    _Minuscula_skip:
    ret
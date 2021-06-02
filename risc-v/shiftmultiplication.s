main:
    addi a0, zero, 0
    addi t0, zero, 0

for:
    addi t1, zero, 1
    sll t1, t1, t0
    and t1, t1, s1

    beq zero, t1, noadd
        sll t1, s0, t0
        add a0, a0, t1
    noadd:

    addi t0, t0, 1

    slti t1, t0, 32
    bne t1, zero, for

endfor:
    jr ra
    
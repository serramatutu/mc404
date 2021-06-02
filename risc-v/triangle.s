main:
    addi a0, zero, 1

    add t0, s0, s1
    bge s2, t0, nottriangle

    add t0, s1, s2
    bge s0, t0, nottriangle

    add t0, s0, s2
    bge s1, t0, nottriangle

    j end

nottriangle:
    addi a0, zero, 0
    j end

end:
    jr ra
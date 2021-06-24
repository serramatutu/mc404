Palindrome:
    addi t0, a0, 0

    addi t1, a0, 0
    _Palindrome_enc_final_loop:
        lbu t2, 0(t1)
        beq t2, zero, _Palindrome_enc_final_loop_fim

        addi t1, t1, 1
        j _Palindrome_enc_final_loop
    _Palindrome_enc_final_loop_fim:
    addi t1, t1, -1

    addi a0, zero, 1
    _Palindrome_checa_loop:
        lbu t2, 0(t0)
        lbu t3, 0(t1)

        beq t2, t3, _Palindrome_checa_loop_ehpalindrome

        addi a0, zero, 0
        ret

        _Palindrome_checa_loop_ehpalindrome:
        addi t0, t0, 1
        addi t1, t1, -1

        blt t0, t1, _Palindrome_checa_loop

    ret

.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
li s0,0
beq a1, x0,done

mv t0,a0
mv t1,a1
loop_start:
lw t2,0(t0)
beq t2,a2,max
no_match:
addi t0,t0,4
addi t1,t1,-1
bnez t1, loop_start
j done
match:
mv s0,t0
j no_match
done:
    addi a7, zero, 10 
    ecall

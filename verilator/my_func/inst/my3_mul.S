#include <asm.h>
#include <regdef.h>
#include <new_inst_test.h>

LEAF(my3_mul_test)
    .set noreorder
    addiu s0, s0 ,1
    addiu s2, zero, 0x0
    lui   t2, 0x1
###test inst
    li t0,0x1111;
    li t1,0x2222;
    li t2,0x3333;
    li t3,0x4444;
    li t4,0x5555;
    mul t5,t0,t1;
    mul t6,t1,t2;
    mul t7,t2,t3;
    mul t8,t3,t4;

    Test_Rtype(mul,1,1,1)
    Test_Rtype(mul,2,2,1)
    Test_Rtype(mul,3,3,1)
    Test_Rtype(mul,4,4,1)
    Test_Rtype(mul,5,5,1)
    Test_Rtype(mul,6,6,1)
    Test_Rtype(mul,7,7,1)
    Test_Rtype(mul,8,8,1)
    Test_Rtype(mul,9,9,1)
    Test_Rtype(mul,2,1,2)
    Test_Rtype(mul,4,2,2)
    Test_Rtype(mul,6,3,2)
    Test_Rtype(mul,8,4,2)
    Test_Rtype(mul,10,5,2)
    Test_Rtype(mul,12,6,2)
    Test_Rtype(mul,14,7,2)
    Test_Rtype(mul,16,8,2)
    Test_Rtype(mul,18,9,2)
    Test_Rtype(mul,3,1,3)
    Test_Rtype(mul,6,2,3)
    Test_Rtype(mul,9,3,3)
    Test_Rtype(mul,12,4,3)
    Test_Rtype(mul,15,5,3)
    Test_Rtype(mul,18,6,3)
    Test_Rtype(mul,21,7,3)
    Test_Rtype(mul,24,8,3)
    Test_Rtype(mul,27,9,3)
    Test_Rtype(mul,4,1,4)
    Test_Rtype(mul,8,2,4)
    Test_Rtype(mul,12,3,4)
    Test_Rtype(mul,16,4,4)
    Test_Rtype(mul,20,5,4)
    Test_Rtype(mul,24,6,4)
    Test_Rtype(mul,28,7,4)
    Test_Rtype(mul,32,8,4)
    Test_Rtype(mul,36,9,4)
    Test_Rtype(mul,5,1,5)
    Test_Rtype(mul,10,2,5)
    Test_Rtype(mul,15,3,5)
    Test_Rtype(mul,20,4,5)
    Test_Rtype(mul,25,5,5)
    Test_Rtype(mul,30,6,5)
    Test_Rtype(mul,35,7,5)
    Test_Rtype(mul,40,8,5)
    Test_Rtype(mul,45,9,5)
    Test_Rtype(mul,6,1,6)
    Test_Rtype(mul,12,2,6)
    Test_Rtype(mul,18,3,6)
    Test_Rtype(mul,24,4,6)
    Test_Rtype(mul,30,5,6)
    Test_Rtype(mul,36,6,6)
    Test_Rtype(mul,42,7,6)
    Test_Rtype(mul,48,8,6)
    Test_Rtype(mul,54,9,6)
    Test_Rtype(mul,7,1,7)
    Test_Rtype(mul,14,2,7)
    Test_Rtype(mul,21,3,7)
    Test_Rtype(mul,28,4,7)
    Test_Rtype(mul,35,5,7)
    Test_Rtype(mul,42,6,7)
    Test_Rtype(mul,49,7,7)
    Test_Rtype(mul,56,8,7)
    Test_Rtype(mul,63,9,7)
    Test_Rtype(mul,8,1,8)
    Test_Rtype(mul,16,2,8)
    Test_Rtype(mul,24,3,8)
    Test_Rtype(mul,32,4,8)
    Test_Rtype(mul,40,5,8)
    Test_Rtype(mul,48,6,8)
    Test_Rtype(mul,56,7,8)
    Test_Rtype(mul,64,8,8)
    Test_Rtype(mul,72,9,8)
    Test_Rtype(mul,9,1,9)
    Test_Rtype(mul,18,2,9)
    Test_Rtype(mul,27,3,9)
    Test_Rtype(mul,36,4,9)
    Test_Rtype(mul,45,5,9)
    Test_Rtype(mul,54,6,9)
    Test_Rtype(mul,63,7,9)
    Test_Rtype(mul,72,8,9)
    Test_Rtype(mul,81,9,9)
    


###detect exception
    bne s2, zero, inst_error
    nop
###score ++
    addiu s3, s3, 1
###output (s0<<24)|s3
inst_error:
    sll t1, s0, 24
    or t0, t1, s3
    sw t0, 0(s1)
    jr ra
    nop
END(my3_mul_test)

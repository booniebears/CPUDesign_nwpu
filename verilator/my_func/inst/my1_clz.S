#include <asm.h>
#include <regdef.h>
#include <new_inst_test.h>

LEAF(my1_clz_test)
    .set noreorder
    addiu s0, s0 ,1
    addiu s2, zero, 0x0
    lui   t2, 0x1
###test inst
    TEST_CLZ(0x0,32)
    TEST_CLZ(0x1,31)
    TEST_CLZ(0x2,30)
    TEST_CLZ(0x3,30)
    TEST_CLZ(0x4,29)
    TEST_CLZ(0x5,29)
    TEST_CLZ(0x6,29)
    TEST_CLZ(0x7,29)
    TEST_CLZ(0x8,28)
    TEST_CLZ(0xf,28)
    TEST_CLZ(0x1f,27)
    TEST_CLZ(0x2f,26)
    TEST_CLZ(0x4f,25)
    TEST_CLZ(0x8f,24)
    TEST_CLZ(0xff,24)
    TEST_CLZ(0x1ff,23)
    TEST_CLZ(0x2ff,22)
    TEST_CLZ(0x4ff,21)
    TEST_CLZ(0x8ff,20)
    TEST_CLZ(0x1fff,19)
    TEST_CLZ(0x2fff,18)
    TEST_CLZ(0x4fff,17)
    TEST_CLZ(0x8fff,16)
    TEST_CLZ(0x1ffff,15)
    TEST_CLZ(0x2ffff,14)
    TEST_CLZ(0x4ffff,13)
    TEST_CLZ(0x8ffff,12)
    TEST_CLZ(0x1fffff,11)
    TEST_CLZ(0x2fffff,10)
    TEST_CLZ(0x4fffff,9)
    TEST_CLZ(0x8fffff,8)
    TEST_CLZ(0x1ffffff,7)
    TEST_CLZ(0x2ffffff,6)
    TEST_CLZ(0x4ffffff,5)
    TEST_CLZ(0x8ffffff,4)
    TEST_CLZ(0x1fffffff,3)
    TEST_CLZ(0x2fffffff,2)
    TEST_CLZ(0x4fffffff,1)
    TEST_CLZ(0x8fffffff,0)

    TEST_CLZ(0xffffffff,0)
    #bypass test
    TEST_CLZ_SPECIAL

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
END(my1_clz_test)

#include <asm.h>
#include <regdef.h>
#include <new_inst_test.h>

LEAF(my2_clo_test)
    .set noreorder
    addiu s0, s0 ,1
    addiu s2, zero, 0x0
    lui   t2, 0x1
###test inst
    TEST_CLO(0x0,0);
    TEST_CLO(0xffffffff,32);
    TEST_CLO(0xfffffffe,31);
    TEST_CLO(0xfffffffc,30);
    TEST_CLO(0xfffffff8,29);

    TEST_CLO(0xfffffff0,28);
    TEST_CLO(0xffffffe0,27);
    TEST_CLO(0xffffffc0,26);
    TEST_CLO(0xffffff80,25);

    TEST_CLO(0xffffff00,24);
    TEST_CLO(0xfffffe00,23);
    TEST_CLO(0xfffffc00,22);
    TEST_CLO(0xfffff800,21);

    TEST_CLO(0xfffff000,20);
    TEST_CLO(0xffffe000,19);
    TEST_CLO(0xffffc000,18);
    TEST_CLO(0xffff8000,17);

    TEST_CLO(0xffff0000,16);
    TEST_CLO(0xfffe0000,15);
    TEST_CLO(0xfffc0000,14);
    TEST_CLO(0xfff80000,13);

    TEST_CLO(0xfff00000,12);
    TEST_CLO(0xffe00000,11);
    TEST_CLO(0xffc00000,10);
    TEST_CLO(0xff800000,9);

    TEST_CLO(0xff000000,8);
    TEST_CLO(0xfe000000,7);
    TEST_CLO(0xfc000000,6);
    TEST_CLO(0xf8000000,5);

    TEST_CLO(0xf0000000,4);
    TEST_CLO(0xe0000000,3);
    TEST_CLO(0xc0000000,2);
    TEST_CLO(0x80000000,1);

    TEST_CLO(0x00000000,0);
# bypass test;
    TEST_CLO_SPECIAL;

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
END(my2_clo_test)

// file name: new_inst_test.h
#include <cpu_cde.h>

#define is_tow_reg_equ(reg_a,reg_b) \
    bne reg_a,reg_b,inst_error; \
    nop;

#define is_reg_equ_to_imm(reg_a,reg_tmp,imm) \
    LI (reg_tmp,imm); \
    bne reg_a,reg_tmp,inst_error; \
    nop;

#define TEST_CLZ(in_a, ref_ans) \
    LI (t0, in_a);\
    clz   v0, t0; \
    LI (t1, ref_ans);\
    bne   t1, v0, inst_error; \
    nop;

#define TEST_CLZ_SPECIAL \
    LI (t0,0); \
    clz t1,t0; \
    is_reg_equ_to_imm(t1,t0,0x20) \
    clz t2,t1; \
    is_reg_equ_to_imm(t2,t1,0x1a) \
    clz t3,t2; \
    clz t4,t3; \
    is_reg_equ_to_imm(t3,t2,0x1b) \
    is_reg_equ_to_imm(t4,t3,0x1b) \

#define TEST_CLO(in_a, ref_ans) \
    LI (t0, in_a);\
    LI (t1, ref_ans);\
    clo   v0, t0; \
    bne   t1, v0, inst_error; \
    nop;

#define TEST_CLO_SPECIAL \
    LI (t0,0xffffffff); \
    clo t1,t0; \
    is_reg_equ_to_imm(t1,t0,0x20) \
    clo t2,t0; \
    clz t3,t2; \
    is_reg_equ_to_imm(t2,t1,0x1a) \
    nop;

#define TEST_MUL_1(a,b) \
    LI (t0,a); \
    LI (t1,b); \
    mult t0,t1; \
    mflo t2; \
    mul t3,t0,t1; \
    is_tow_reg_equ(t2,t3) \
    nop;

#define TEST_bypass_Rtype_src0_1(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    is_reg_equ_to_imm(t2,t8,c) \

#define TEST_bypass_Rtype_src0_2(instr,c,a,b) \
    or t0,zero,a; \
    or t1,zero,b; \
    instr t2,t0,t1; \
    is_reg_equ_to_imm(t2,t8,c) \

#define TEST_bypass_Rtype_src0_3(instr,c,a,b) \
    or t0,zero,a; \
    or t1,zero,b; \
    or t2,zero,0x8888; \
    instr t3,t0,t1; \
    is_reg_equ_to_imm(t3,t8,c) \

#define TEST_bypass_Rtype_src0_4(instr,c,a,b) \
    or t0,zero,a; \
    or t4,zero,0x4444; \
    or t1,zero,b; \
    or t2,zero,0x8888; \
    instr t3,t0,t1; \
    is_reg_equ_to_imm(t3,t8,c) \

#define TEST_bypass_Rtype_src1_1(instr,c,a,b) \
    or t0,zero,a; \
    or t1,zero,b; \
    instr t2,t0,t1; \
    is_reg_equ_to_imm(t2,t8,c) \

#define TEST_bypass_Rtype_src1_2(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    is_reg_equ_to_imm(t2,t8,c) \

#define TEST_bypass_Rtype_src1_3(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    or t2,zero,0x8888; \
    instr t3,t0,t1; \
    is_reg_equ_to_imm(t3,t8,c) \

#define TEST_bypass_Rtype_src1_4(instr,c,a,b) \
    or t1,zero,b; \
    or t4,zero,0x4444; \
    or t0,zero,a; \
    or t2,zero,0x8888; \
    instr t3,t0,t1; \
    is_reg_equ_to_imm(t3,t8,c) \

#define TEST_bypass_Rtype_dst0_1(instr,c,a,b) \
    or t0,zero,a; \
    or t1,zero,b; \
    instr t2,t0,t1; \
    or t3,t2,zero; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst0_2(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    or t4,zero,0x3333; \
    or t3,t2,zero; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst0_3(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    or t5,zero,0x4444; \
    or t4,zero,0x3333; \
    or t3,t2,zero; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst0_4(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    or t5,zero,0x4444; \
    or t4,zero,0x3333; \
    or t6,zero,0x2222; \
    or t3,t2,zero; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst1_1(instr,c,a,b) \
    or t0,zero,a; \
    or t1,zero,b; \
    instr t2,t0,t1; \
    or t3,zero,t2; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst1_2(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    or t4,zero,0x3333; \
    or t3,zero,t2; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst1_3(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    or t5,zero,0x4444; \
    or t4,zero,0x3333; \
    or t3,zero,t2; \
    is_reg_equ_to_imm(t3,t8,c); \

#define TEST_bypass_Rtype_dst1_4(instr,c,a,b) \
    or t1,zero,b; \
    or t0,zero,a; \
    instr t2,t0,t1; \
    or t5,zero,0x4444; \
    or t4,zero,0x3333; \
    or t6,zero,0x2222; \
    or t3,zero,t2; \
    is_reg_equ_to_imm(t3,t8,c); \

#define Test_Rtype(instr,c,a,b) \
    TEST_bypass_Rtype_src0_1(instr,c,a,b) \
    TEST_bypass_Rtype_src0_2(instr,c,a,b) \
    TEST_bypass_Rtype_src0_3(instr,c,a,b) \
    TEST_bypass_Rtype_src0_4(instr,c,a,b) \
    TEST_bypass_Rtype_src1_1(instr,c,a,b) \
    TEST_bypass_Rtype_src1_2(instr,c,a,b) \
    TEST_bypass_Rtype_src1_3(instr,c,a,b) \
    TEST_bypass_Rtype_src1_4(instr,c,a,b) \
    TEST_bypass_Rtype_dst0_1(instr,c,a,b) \
    TEST_bypass_Rtype_dst0_2(instr,c,a,b) \
    TEST_bypass_Rtype_dst0_3(instr,c,a,b) \
    TEST_bypass_Rtype_dst0_4(instr,c,a,b) \
    TEST_bypass_Rtype_dst1_1(instr,c,a,b) \
    TEST_bypass_Rtype_dst1_2(instr,c,a,b) \
    TEST_bypass_Rtype_dst1_3(instr,c,a,b) \
    TEST_bypass_Rtype_dst1_4(instr,c,a,b) \

#define TEST_MType(immA,immB,resultLo,resultHi,originA,originB,instr) \
    LI (t0,immA); \
    LI (t1,immB); \
    LI (t2,originA); \
    LI (t3,originB); \
    mthi t3; \
    mtlo t2; \
    instr t0,t1; \
    mfhi t4; \
    mflo t5; \
    is_reg_equ_to_imm(t4,t6,resultHi) \
    is_reg_equ_to_imm(t5,t6,resultLo) \

















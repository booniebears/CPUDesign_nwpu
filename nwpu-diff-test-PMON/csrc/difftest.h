#ifndef DIFFTEST
#define DIFFTEST
#include <stdint.h>
#include <assert.h>
#include <string.h>


typedef uint32_t rtlreg_t;
typedef __uint32_t uint32_t;

// void (*ref_napi_init)(int argc, const char *argv[]);
// void (*ref_napi_exec)(uint64_t n);
// uint32_t (*ref_napi_mmio_peek)(uint32_t paddr, int len);
// uint32_t (*ref_napi_get_instr)();
// uint32_t (*ref_napi_get_pc)();
// bool (*ref_napi_addr_is_valid)(uint32_t addr);
// void (*ref_napi_set_irq)(int irqno, bool val);
// void (*ref_napi_dump_states)();
// uint32_t (*ref_napi_get_gpr)(int i);
// void (*ref_napi_set_gpr)(int i, uint32_t val);
// void (*ref_print_registers)();

void difftest_init(void);
void difftest_step(int );
void difftest_handle_timer_int();
void disp_rertire_queue();
void retire_queue_push(int,int);
int difftest_rtl_nemu(rtlreg_t*,int,int,int,int,int,int,int);
void nemu_find_queue_push(int,int,int,int);
extern void disp_nemu_find_queue();
void clear_nemu_queue();

// wrappers for nemu-mips32 library
class mips_instr_t {
  union {
    struct {
      uint32_t sel : 3;
      uint32_t __ : 8;
      uint32_t rd : 5;
      uint32_t rt : 5;
      uint32_t mf : 5;
      uint32_t cop0 : 6;
    };
    uint32_t val;
  };

public:
  mips_instr_t(uint32_t instr) : val(instr) {}

  bool is_mfc0_count() const {
    return cop0 == 0x10 && mf == 0x0 && rd == 0x9 &&
           sel == 0x0;
  }
  bool is_syscall() const { return val == 0x0000000c; }
  bool is_eret() const { return val == 0x42000018; }
  uint32_t get_rt() { return rt; }
};



#define RETIRE_QUEUE_MAX 160
#endif
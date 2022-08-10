VSRC = $(shell find ./vsrc -name "*.*v*")
CSRC = $(shell find ./csrc -name "*.cpp")
C_HEADERS = $(shell find ./csrc -name "*.h")

SRCS = $(VSRC) $(CSRC) $(C_HEADERS)
# MAKEFLAGS += -j

VERILATOR_FLAGS =				            \
	+define+VERILATOR=1					      \
	+define+PRINTF_COND=1							\
	+define+RANDOMIZE_REG_INIT        \
	+define+RANDOMIZE_MEM_INIT        \
	+define+RANDOMIZE_GARBAGE_ASSIGN  \
	+define+RANDOMIZE_DELAY=0				  \
	--trace													  \
	--assert 

BUILD_DIR = ./build

TOP = SocLite

EMU_MK = $(BUILD_DIR)/V$(TOP).mk
EMU = $(BUILD_DIR)/$(TOP)

.DEFAULT_GOAL = run

$(EMU_MK): $(SRCS)
	verilator $(VERILATOR_FLAGS) -LDFLAGS "-ldl" --savable -sv -cc -exe $(VSRC) $(CSRC) --bbox-unsup --top-module $(TOP) -o $(TOP) -Mdir $(BUILD_DIR) -Ivsrc/mycpu
$(EMU): $(EMU_MK) $(SRCS)
	$(MAKE) -C $(@D) -f $(<F) VM_PARALLEL_BUILDS=1 OPT_FAST="-O3"


run: $(EMU) $(SRCS)
	@echo Start running emulator:[$(abspath $<)]
	@$<

clean:
	rm -rf $(BUILD_DIR)
	rm -rf ./save_restore
	mkdir ./save_restore
	touch ./save_restore/save_nemu_ti.txt
	touch ./save_restore/save_nemu.txt
	touch ./save_restore/save_ram.txt
	touch ./save_restore/save_set_nemureg.txt
	touch ./save_restore/save_dut_ptr

.PHONY: run clean

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
	verilator $(VERILATOR_FLAGS) -LDFLAGS "-ldl" -sv -cc -exe $(VSRC) $(CSRC) --bbox-unsup --top-module $(TOP) -o $(TOP) -Mdir $(BUILD_DIR) -Ivsrc/mycpu
$(EMU): $(EMU_MK) $(SRCS)
	$(MAKE) -C $(@D) -f $(<F) VM_PARALLEL_BUILDS=1 OPT_FAST="-O3"


run: $(EMU) $(SRCS)
	@echo Start running emulator:[$(abspath $<)]
	@$<

clean:
	rm -rf $(BUILD_DIR)

.PHONY: run clean

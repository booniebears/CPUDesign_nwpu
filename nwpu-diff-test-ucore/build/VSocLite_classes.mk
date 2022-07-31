# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Make include file with class lists
#
# This file lists generated Verilated files, for including in higher level makefiles.
# See VSocLite.mk for the caller.

### Switches...
# C11 constructs required?  0/1 (always on now)
VM_C11 = 1
# Coverage output mode?  0/1 (from --coverage)
VM_COVERAGE = 0
# Parallel builds?  0/1 (from --output-split)
VM_PARALLEL_BUILDS = 1
# Threaded output mode?  0/1/N threads (from --threads)
VM_THREADS = 0
# Tracing output mode?  0/1 (from --trace/--trace-fst)
VM_TRACE = 1
# Tracing output mode in FST format?  0/1 (from --trace-fst)
VM_TRACE_FST = 0
# Tracing threaded output mode?  0/1/N threads (from --trace-thread)
VM_TRACE_THREADS = 0
# Separate FST writer thread? 0/1 (from --trace-fst with --trace-thread > 0)
VM_TRACE_FST_WRITER_THREAD = 0

### Object file lists...
# Generated module classes, fast-path, compile with highest optimization
VM_CLASSES_FAST += \
	VSocLite \
	VSocLite___024root__DepSet_hcb5097fa__0 \
	VSocLite___024root__DepSet_hcb5097fa__1 \
	VSocLite___024root__DepSet_h8972824b__0 \
	VSocLite___024unit__DepSet_hd82a5baf__0 \
	VSocLite_AXI4Buffer__DepSet_h14add379__0 \
	VSocLite_simple_port_lutram__S100_D15__DepSet_hfd39d4ae__0 \
	VSocLite_simple_port_ram__S100__DepSet_h459d01d4__0 \

# Generated module classes, non-fast-path, compile with low/medium optimization
VM_CLASSES_SLOW += \
	VSocLite__ConstPool_0 \
	VSocLite___024root__Slow \
	VSocLite___024root__DepSet_hcb5097fa__0__Slow \
	VSocLite___024root__DepSet_hcb5097fa__1__Slow \
	VSocLite___024root__DepSet_h8972824b__0__Slow \
	VSocLite___024unit__Slow \
	VSocLite___024unit__DepSet_h7a88367e__0__Slow \
	VSocLite_AXI4Buffer__Slow \
	VSocLite_AXI4Buffer__DepSet_hd3603ecd__0__Slow \
	VSocLite_AXI4Buffer__DepSet_h14add379__0__Slow \
	VSocLite_simple_port_lutram__S100_D15__Slow \
	VSocLite_simple_port_lutram__S100_D15__DepSet_h5f9bc37f__0__Slow \
	VSocLite_simple_port_ram__S100__Slow \
	VSocLite_simple_port_ram__S100__DepSet_h1736f025__0__Slow \

# Generated support classes, fast-path, compile with highest optimization
VM_SUPPORT_FAST += \
	VSocLite__Dpi \
	VSocLite__Trace__0 \

# Generated support classes, non-fast-path, compile with low/medium optimization
VM_SUPPORT_SLOW += \
	VSocLite__Syms \
	VSocLite__Trace__0__Slow \

# Global classes, need linked once per executable, fast-path, compile with highest optimization
VM_GLOBAL_FAST += \
	verilated \
	verilated_dpi \
	verilated_save \
	verilated_vcd_c \

# Global classes, need linked once per executable, non-fast-path, compile with low/medium optimization
VM_GLOBAL_SLOW += \


# Verilated -*- Makefile -*-

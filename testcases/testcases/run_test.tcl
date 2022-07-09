file copy -force D:/generate_trace/coe/mem_unaligned.mif D:/lab_env/nscscc2019ucas-master/performance/soc_axi_func/run_vivado/mycpu_prj1/mycpu.sim/sim_1/behav/xsim/axi_ram.mif
file copy -force D:/generate_trace/coe/mem_unaligned.txt D:/golden_trace2.txt
restart
run all

# for mycpu
file copy -force E:/Code/testcases/trap.mif E:/Code/Vivado_projects/lab/TLB_CPU_CDE_AXI/mycpu_axi_verify/run_vivado/mycpu_prj1/mycpu.sim/sim_1/behav/xsim/axi_ram.mif
file copy -force E:/Code/testcases/trap.txt E:/Code/Vivado_projects/lab/TLB_CPU_CDE_AXI/cpu132_gettrace/golden_trace.txt
restart
run all

# for gs132
file copy -force E:/Code/testcases/trap.mif E:/Code/Vivado_projects/lab/TLB_CPU_CDE_AXI/mycpu_axi_verify/run_vivado/mycpu_prj1/mycpu.sim/sim_1/behav/xsim/axi_ram.mif
file copy -force E:/Code/testcases/trap.txt E:/Code/Vivado_projects/lab/TLB_CPU_CDE_AXI/cpu132_gettrace/golden_trace.txt
restart
run all

file copy -force E:/Code/testcases/fpu_ex.mif D:/lab_env/nscscc2019ucas-master/performance/soc_axi_func/run_vivado/mycpu_prj1/mycpu.sim/sim_1/behav/xsim/axi_ram.mif
file copy -force E:/Code/testcases/fpu_ex.txt D:/golden_trace2.txt
restart
run all

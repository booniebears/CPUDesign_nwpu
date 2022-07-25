# soc-sim

## Prepare
* Install verilator
* Copy your cpu source files into `vsrc`(replace `mycpu_top.v`)
* Replace `inst_ram.coe` file if you want to change the workload

## Compile verilog/cpp files and run simulation
```
make run -j
```

## Features
+ Compatible with the FPGA provided by the Loongson Cup Competition (NSCSCC)
+ Provide os level simulation and verification for cpu design
+ Support for differential testing of pmon, uCore, Linux 
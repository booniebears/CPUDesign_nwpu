# soc-sim

## Prepare
* Install verilator
* Copy your cpu source files into `vsrc`(replace `mycpu_top.v`)
* Replace `inst_ram.coe` file if you want to change the workload

## Compile verilog/cpp files and run simulation
```
make run -j
```

onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_interconnect_0 -L xpm -L fifo_generator_v13_2_5 -L axi_interconnect_v1_7_17 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_interconnect_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axi_interconnect_0.udo}

run -all

endsim

quit -force

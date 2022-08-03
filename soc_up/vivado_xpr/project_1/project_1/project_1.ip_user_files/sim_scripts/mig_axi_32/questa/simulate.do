onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mig_axi_32_opt

do {wave.do}

view wave
view structure
view signals

do {mig_axi_32.udo}

run -all

quit -force

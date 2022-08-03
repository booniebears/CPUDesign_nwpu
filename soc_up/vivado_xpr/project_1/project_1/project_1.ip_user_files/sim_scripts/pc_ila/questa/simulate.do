onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pc_ila_opt

do {wave.do}

view wave
view structure
view signals

do {pc_ila.udo}

run -all

quit -force

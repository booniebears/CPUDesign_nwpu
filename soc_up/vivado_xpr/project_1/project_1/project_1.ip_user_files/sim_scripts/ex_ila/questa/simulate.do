onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ex_ila_opt

do {wave.do}

view wave
view structure
view signals

do {ex_ila.udo}

run -all

quit -force

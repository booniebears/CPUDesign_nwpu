onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mydiv_opt

do {wave.do}

view wave
view structure
view signals

do {mydiv.udo}

run -all

quit -force

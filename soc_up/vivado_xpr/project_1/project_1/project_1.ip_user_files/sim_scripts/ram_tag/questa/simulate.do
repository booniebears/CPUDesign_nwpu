onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ram_tag_opt

do {wave.do}

view wave
view structure
view signals

do {ram_tag.udo}

run -all

quit -force

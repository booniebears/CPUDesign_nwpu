onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+pc_ila -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pc_ila xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {pc_ila.udo}

run -all

endsim

quit -force

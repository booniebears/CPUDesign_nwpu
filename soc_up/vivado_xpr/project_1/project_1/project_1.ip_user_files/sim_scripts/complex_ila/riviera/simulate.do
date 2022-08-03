onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+complex_ila -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.complex_ila xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {complex_ila.udo}

run -all

endsim

quit -force

onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mig_axi_32 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mig_axi_32 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mig_axi_32.udo}

run -all

endsim

quit -force

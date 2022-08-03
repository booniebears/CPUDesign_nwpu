onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ram_tag -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ram_tag xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ram_tag.udo}

run -all

endsim

quit -force

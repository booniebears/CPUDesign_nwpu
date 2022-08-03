onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.lcd_init_data xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {lcd_init_data.udo}

run -all

quit -force

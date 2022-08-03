onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clk_pll_33 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_pll_33 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk_pll_33.udo}

run -all

endsim

quit -force

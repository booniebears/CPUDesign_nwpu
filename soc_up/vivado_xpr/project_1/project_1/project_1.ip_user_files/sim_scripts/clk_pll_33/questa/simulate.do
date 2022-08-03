onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_pll_33_opt

do {wave.do}

view wave
view structure
view signals

do {clk_pll_33.udo}

run -all

quit -force

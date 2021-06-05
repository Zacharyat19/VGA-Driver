vsim -gui work.newVGAModule
add wave *

force reset_N 1 @ 0

force clk 0 0, 1 1 -r 2

force TwentyFiveMHzclk 0 0, 1 1 -r 4

run 4

force reset_N 0 @ 4

run 50000
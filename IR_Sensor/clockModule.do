vsim -gui work.clockModule
add wave *

force clk 0 0, 1 1 -r 2

force reset_N 1 @ 0

run 2

force reset_N 0 @ 2

run 100000000

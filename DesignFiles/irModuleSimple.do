vsim -gui work.irModuleSimple
add wave *

force reset_N 1 @ 0

force clkWait 0 0, 1 2 -r 4

force irInput 0 0, 1 4 -r 8

run 5

force reset_N 0 @ 5

run 500


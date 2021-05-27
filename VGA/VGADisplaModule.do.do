vsim -gui work.VGADisplayModule
add wave *

force reset_N  1 @ 0 
force FiftyMHzclk 0 0, 1 1 -repeat 2

run 4

force reset_N  0 @ 4
 
run 2000000
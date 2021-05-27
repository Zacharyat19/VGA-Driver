vsim -gui work.Lab7
add wave *

force reset_KEY1  0 @ 0 
force FiftyMHzclk 0 0, 1 1 -repeat 2
force inRGB 110000 @ 0

run 4

force reset_KEY1  1 @ 4
 
run 2000000
vsim -gui work.Lab6
add wave *

force reset_KEY1  0 @ 0 
force FiftyMHzclk 0 0, 1 1 -repeat 2
force Red1_SW5  0 @ 0 
force Red0_SW4  0 @ 0
force Green1_SW3  0 @ 0
force Green0_SW2  1 @ 0
force Blue1_SW1  1 @ 0
force Blue0_SW0  1 @ 0

run 4

force reset_KEY1  1 @ 4
 
run 20000
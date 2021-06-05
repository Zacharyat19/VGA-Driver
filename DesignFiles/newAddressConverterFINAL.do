vsim -gui work.newAddressConverter
add wave *

force reset_N 1 @ 0

force clkMove 0 0, 1 1 -r 2

run 2

force reset_N 0 @ 2

force hCol 10#100 @ 2
 
force vRow 10#100 @ 2

force dirNEWS 010 @ 2

run 20

force hCol 10#100 @ 22
 
force vRow 1100100 @ 22

force dirNEWS 010 @ 22

run 20

force hCol 10#300 @ 42

force vRow 10#300 @ 42

force dirNEWS 011 @ 42

run 20

force hCol 10#100 @ 62

force vRow 10#300 @ 62

force dirNEWS 001 @ 62

run 20

force hCol 10#256 @ 82

force vRow 110010000 @ 82

force dirNEWS 100 @ 82

run 20
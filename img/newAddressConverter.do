vsim -gui work.newAddressConverter
add wave *

force reset 1 @ 0

force q 0 0, 1 5263157900 -r 10526315800

run 2

force reset 0 @ 2

force hCol 10#100 @ 2
 
force vRow 10#100 @ 2

force dirNEWS 10#2 @ 2

run 20000000000

force hCol 10#100 @ 20000000002
 
force vRow 10#100 @ 20000000002

force dirNEWS 10#2 @ 20000000002

run 20000000000

force hCol 10#300 @ 40000000002

force vRow 10#300 @ 40000000002

force dirNEWS 10#3 @ 40000000002

run 20000000000

force hCol 10#100 @ 60000000002

force vRow 10#300 @ 60000000002

force dirNEWS 10#1 @ 60000000002

run 20000000000

force hCol 10#256 @ 80000000002

force vRow 10#400 @ 80000000002

force dirNEWS 10#4 @ 80000000002

run 20000000000
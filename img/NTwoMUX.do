vsim -gui work.NTwoMUX
add wave *

force s 0 @ 0

force d 0000 @ 0

force e 0000 @ 0

run 100

force s 1 @ 100

force d 0010 @ 100

force e 0000 @ 100

run 100

force s 0 @ 200

force d 0010 @ 200

force e 0000 @ 200

run 100
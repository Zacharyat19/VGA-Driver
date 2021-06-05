vsim -gui work.newBackgroundModule
add wave *

force reset_N 1 @ 0

force shiftRGB_SW9 0 @ 0

force isDisplay 0 @ 0

force clkSlow 0 0, 1 2 -r 4

force clk 0 0, 1 1 -r 2

force hCol 00000000000 @ 0

force inRGB 000000 @ 0

force spriteCol 00000000000 @ 0

force spriteRGB 0000000000000000 @ 0

force spriteRow 00000000000 @ 0

force vRow 00000000000 @ 0

run 4

force reset_N 0 @ 4

force shiftRGB_SW9 0 @ 4

force isDisplay 1 @ 4

force hCol 10#300 @ 4

force vRow 10#300 @ 4

force inRGB 010101 @ 4

force spriteRGB 0000000000111000 @ 4

force spriteCol 10#300 @ 4

force spriteRow 10#300 @ 4

run 20

force reset_N 0 @ 24

force shiftRGB_SW9 0 @ 24

force isDisplay 1 @ 24

force hCol 10#300 @ 24

force vRow 10#300 @ 24

force inRGB 010101 @ 24

force spriteRGB 0000000000111000 @ 24

force spriteCol 10#400 @ 24

force spriteRow 10#400 @ 24

run 20
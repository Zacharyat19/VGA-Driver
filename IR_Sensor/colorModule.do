vsim -gui work.backgroundModule
add wave *

force isDisplay 1 @ 0
force inRGB 110001 @ 0
force upCount 0 @ 0
 
run 20000
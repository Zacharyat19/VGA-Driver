vsim -gui work.irCodeMUX
add wave *

force irCode 0 @ 0

run 100

force irCode 10#16615543 @ 100

run 100
			
force irCode 10#16591063 @ 200

run 100
			
force irCode 10#16607383 @ 300

run 100
			
force irCode 10#16619623 @ 400

run 100
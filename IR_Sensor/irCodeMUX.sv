module irCodeMUX #(parameter N = 3)
								(input [23:0] irCode,
								output [N-1:0] curDir);
logic [N-1:0] dir;	
	
	always_comb
	begin	
		case(irCode)
			24'hFD8877 : dir <= 1;
			24'hFD28D7 : dir <= 2;
			24'hFD6897 : dir <= 3;
			24'hFD9867 : dir <= 4;
			default: dir <= 0;
		endcase
		

	end			
	assign curDir = dir;
	
endmodule
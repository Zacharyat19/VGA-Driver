module aBAdder #(parameter N = 4)
						(input logic [N-1:0] a, b,
						input logic 			cIn,
						output logic [N-1:0] s,
						output logic 			cOut);
						
	assign {cOut, s} = a + b + cIn;
endmodule
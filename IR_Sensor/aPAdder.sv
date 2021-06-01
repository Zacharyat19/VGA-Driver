module aPAdder #(parameter N = 4, P = 639)
						(input logic [N-1:0] a,
						output logic [N-1:0] s,
						output logic 	cOut);
						
	assign {cOut, s} = a + P;
	
endmodule
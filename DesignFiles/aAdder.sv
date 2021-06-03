module aAdder #(parameter N = 4)
						(input logic [N-1:0] a,
						input logic cIn,
						output logic [N-1:0] s);
						
	assign s = a + cIn;
	
endmodule
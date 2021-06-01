module BaSubtract #(parameter N = 11, B = 800)
					 (input logic [N-1:0] a,
                output logic[N-1:0] q);
					 
	assign q = B - a;

endmodule

module aBSubtract #(parameter N = 8, B = 2)
                   (input logic [N-1:0] a,
                    output logic [N-1:0] q);

	assign q = a - B;
endmodule

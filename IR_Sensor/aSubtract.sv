module aSubtract #(parameter N = 8)
                   (input logic [N-1:0] a, b,
                    output logic [N-1:0] q);

	assign q = a - b;
endmodule

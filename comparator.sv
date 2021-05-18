module comparator#(parameter N=9, C=0)
				(input logic [N:1-0] a, b,
				 output logic eq, neq, lt, lte, gte);
		assign eq = (a==C);
		assign neq = (a!=C);
		assign lt = (a<C);
		assign lte = (a<=C);
		assign gt = (a>C);
		assign gte = (a>=C);
endmodule


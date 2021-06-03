module shiftreg #(parameter N=24)
						(input logic 		clk,
						input logic 		reset_N, load_N,
						input logic			sEn_N, sIn,
						input logic [N-1:0] d,
						output logic [N-1:0] q,
						output logic 		sOut);
				 		
	always_ff @(posedge clk, posedge reset_N)
	  if (reset_N)	q<=0;
	  else if (load_N) q <= d;
	  else if (sEn_N) q <= {q[N-2:0], sIn};
	  else q <= q;
	  
	assign sOut = q[N-1];
endmodule
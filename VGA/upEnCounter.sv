module upEnCounter #(parameter N = 8)
                             (input logic clk, reset, up, En_N,
                              output logic [N-1:0] q);
										
	always_ff @(posedge clk, posedge reset)
		if (reset) q <= 0;
		else if (En_N)
		begin
			if (up) q <= q + 1;
			else if (q>0) q <= q - 1;
			else q<= 0;
		end
		else q <= q;
		
endmodule

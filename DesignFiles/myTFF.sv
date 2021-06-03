module myTFF(input logic		clk,
				input logic 	reset_N,
				input logic 	t,
				output logic	q);
				
	always@(posedge clk)
		begin
			if(reset_N)
				q<=0;
			else 
				if (t)
					q <= ~q;
				else
					q <= q;
		end
endmodule
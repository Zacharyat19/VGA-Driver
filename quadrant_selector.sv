module quadrant_selector(input logic d0, d1, d2, d3,
							input logic [3:0] s,
							output logic write);
		
			always_comb
				if	(s == 4'b1111) write <= 0;
				else if (s == 1) write <= d0;
				else if (s == 2) write <= d1;
				else if (s == 3) write <= d2;
				else if (s == 4) write <= d3;
				else write <=0;
endmodule
			
			

							
							
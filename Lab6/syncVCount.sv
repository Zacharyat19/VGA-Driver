module syncVCount#(parameter N = 32, syncV = 2, bVPorch = 35, fVPorch = 515, totalV = 525)
                             (input logic clk,
                              input logic reset,
										output logic vSync,
										output logic vDisplay,
										output logic [N-1:0] cCount);
	logic [N-1:0] c;
	logic s0, s1;
	

											
  always_ff @(posedge clk, posedge reset)
 	begin 
    if (reset) 
		begin
			c <= 0;
			s0 <= 0;
			s1 <= 0;
		end
	 else 
		begin
			if (c<totalV) 
				begin
					c <= c + 1;
					case(c)
						0 			: 	begin
											s0 = 0;
											s1 = 0;
										end 
						syncV		: s0 = 1;
						bVPorch	: s1 = 1;
						fVPorch 	: s1 = 0;
					endcase
				end
			else 
				begin
					c <= 0;
					s0 <= 0;
					s1 <= 0;	
				end
		end

	end
	
	assign cCount = c;	
	assign vSync = s0;
	assign vDisplay = s1;
endmodule

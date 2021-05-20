module syncHCount#(parameter N = 32, syncH = 96, bHPorch = 144, fHPorch = 784, totalH = 800)
                             (input logic clk,
                              input logic reset,
										output logic hSync,
										output logic hDisplay,
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
			if (c<totalH) 
			begin
				c <= c + 1;
				case(c)
				0 			: 	begin
									s0 = 0;
									s1 = 0;
								end 
				syncH		: s0 = 1;
				bHPorch	: s1 = 1;
				fHPorch 	: s1 = 0;
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
	assign hSync = s0;
	assign hDisplay = s1;
endmodule

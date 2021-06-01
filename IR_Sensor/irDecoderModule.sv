module irDecoderModule #(parameter N = 3)
								(input logic clk, reset_N, startCount,
								input logic [13:0] clkCount, irCount,
								 output logic [23:0] irCode);
	

		
	logic [7:0] onCount, offCount, bitCount;
	logic [31:0] bitHolder;
			
	always_ff@(posedge clk, posedge reset_N)
		begin
			if (reset_N) 
				begin
					bitCount <= 0;
					bitHolder <= 0;
					irCode <= 0;
				end		
				
			if (startCount) 
				begin
					if (onCount == 22) 
						 if(offCount >= 88) 
								begin
									bitHolder[31-bitCount] <= 1;
									bitCount <= bitCount + 1;
								end
					if ((onCount == 23) & (offCount <= 22))
						begin
							bitHolder[31-bitCount] <= 0;
							bitCount <= bitCount + 1;
						end
				end
		end	
		

	assign onCount = irCount - 341 + 1;
	assign offCount = clkCount - 512 + 1;
	assign irCode = bitHolder[23:0];		

endmodule
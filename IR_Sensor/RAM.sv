module ram#(parameter N = 3, M = 24)
				(input logic 		clk,
				input logic 		wEn_N,
				input logic			[N-1:0] rwAddr,
				input logic			[M-1:0] dIn,
				output logic			[M-1:0] dOut);
				
	logic [M-1:0] mem[2**N-1:0];
	
	always_ff@(posedge clk)
		if (wEn_N) mem [rwAddr]<=dIn;
		
	assign dOut = mem[rwAddr];
endmodule
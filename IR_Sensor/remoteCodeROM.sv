module remoteCodeROM(	input logic	[2:0] rAddr,
				output logic [23:0] dOut);
				
	always_comb
		case(rAddr)
			2'b00: dOut <= 24'hFD8877;
			2'b01: dOut <= 24'hFD28D7;
			2'b10: dOut <= 24'hFD6897;
			2'b11: dOut <= 24'hFD9867;
		endcase
endmodule
module RGBGenerator#(parameter N = 4)
                     (input logic hDisplay, vDisplay,
							input logic [N-1:0] RIn, GIn, BIn,
							output logic [N-1:0] ROut, GOut, BOut);
	
	always_comb
		if (hDisplay & vDisplay)
		begin
			ROut=RIn;
			GOut=GIn;
			BOut=BIn;
		end
		
		else if (~(hDisplay & vDisplay))
		begin			
			ROut = 0;
			GOut = 0;
			BOut = 0;
		end
		
endmodule
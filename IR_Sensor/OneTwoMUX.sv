module OneTwoMUX (input logic s,
					 input logic d, e,
                output logic q);

always_comb					 
	if(s) q <= e;
	else q <= d;
  
endmodule
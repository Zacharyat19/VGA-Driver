module NTwoMUX #(parameter N = 4)
					 (input logic s,
					 input logic[N-1:0] d0, d1,
                output logic[N-1:0] q);
always_comb
  case(s)
    //                                           
    0:       q = d0;
    1:       q = d1;
    default: q = 'b0;
  endcase
  
endmodule

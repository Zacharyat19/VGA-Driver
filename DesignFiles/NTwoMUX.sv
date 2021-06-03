module NTwoMUX #(parameter N = 4)
					 (input logic s,
					 input logic[N-1:0] d, e,
                output logic[N-1:0] q);
always_comb
  case(s)
    //                                           
    0:       q = d;
    1:       q = e;
    default: q = d;
  endcase
  
endmodule

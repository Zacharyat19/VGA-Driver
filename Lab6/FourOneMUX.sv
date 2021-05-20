module FourOneMUX(input logic s,
						input logic[3:0] d,
                output logic[3:0] q);
always_comb
  case(s)
    //                                           
    0:       q = 4'b0000;
    1:       q = d;
    default: q = 4'b0000;
  endcase
  
endmodule

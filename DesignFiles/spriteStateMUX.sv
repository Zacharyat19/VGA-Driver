module spriteStateMUX #(parameter N = 4)
					 (input logic [1:0] start, step,
                output logic[N-1:0] q);
always_comb
  case(start)
    //      
	 0:   begin
			case(step)
				0: q = 12;
				1: q = 13;
				2: q = 14;
				3: q = 15;
				default: q = 15;
			endcase
			end
    1:  begin
			case(step)
				0: q = 0;
				1: q = 1;
				2: q = 2;
				3: q = 3;
				default: q = 0;
			endcase
			end
			
    2:   begin
			case(step)
				0: q = 4;
				1: q = 5;
				2: q = 6;
				3: q = 7;
				default: q = 7;
			endcase
			end
	 
	 3:      begin
			case(step)
				0: q = 8;
				1: q = 9;
				2: q = 10;
				3: q = 11;
				default: q = 11;
			endcase
			end 
	 
	 4:      begin
			case(step)
				0: q = 12;
				1: q = 13;
				2: q = 14;
				3: q = 15;
				default: q = 15;
			endcase
			end
	 
    default: q = 15;
  endcase
  
endmodule

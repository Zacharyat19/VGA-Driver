module spritePosMUX #(parameter N = 11)
					 (input logic [3:0] spriteState,
                output logic[N-1:0] stateCol, stateRow);
always_comb
  case(spriteState)
    //                                           
		0:  begin
			stateCol = 0;
			stateRow = 0;
			end
		1:  begin
			stateCol = 64;
			stateRow = 0;
			end
		2:  begin
			stateCol = 128;
			stateRow = 0;
			end
		3:  begin
			stateCol = 192;
			stateRow = 0;
			end
		4:  begin
			stateCol = 0;
			stateRow = 64;
			end
		5:  begin
			stateCol = 64;
			stateRow = 64;
			end
		6:  begin
			stateCol = 128;
			stateRow = 64;
			end
		7:  begin
			stateCol = 192;
			stateRow = 64;
			end
		8:  begin
			stateCol = 63;
			stateRow = 64;
			end
		9:  begin
			stateCol = 127;
			stateRow = 64;
			end
		10:  begin
			stateCol = 191;
			stateRow = 64;
			end
		11:  begin
			stateCol = 255;
			stateRow = 64;
			end
		12:  begin
			stateCol = 0;
			stateRow = 128;
			end
		13:  begin
			stateCol = 64;
			stateRow = 128;
			end
		14:  begin
			stateCol = 128;
			stateRow = 128;
			end
		15:  begin
			stateCol = 192;
			stateRow = 128;
			end
					 
    default:  begin
			stateCol = 0;
			stateRow = 128;
			end
  endcase
  
endmodule

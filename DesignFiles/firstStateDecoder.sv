module firstStateDecoder #(parameter N = 2)
					 (input logic rowEn, moveRow, isDown, colEn, isRight, moveCol,
                output logic[N-1:0] q);
always_comb
	begin
		if(rowEn & moveRow & isDown) q = 4;
		else if (rowEn & moveRow & ~isDown) q = 1;
		else if (colEn & moveCol & isRight) q = 2;
		else if (colEn & moveCol & ~isRight) q = 3;
		else q = 0;  
   end
endmodule

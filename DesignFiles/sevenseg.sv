module sevenseg(input logic[3:0] data,
                              output logic[6:0] segments);
always_comb
  case(data)
    //                                                            abc_defg
	0: segments = 7'b 100_0000;
	1: segments = 7'b 111_1001;
	2: segments = 7'b 010_0100;
	3: segments = 7'b 011_0000;
	4: segments = 7'b 001_1001;
	5: segments = 7'b 001_0010;
	6: segments = 7'b 000_0010;
	7: segments = 7'b 111_1000;
	8: segments = 7'b 000_0000;
	9: segments = 7'b 001_1000;
	10: segments = 7'b 000_1000;
	11: segments = 7'b 000_0011;
	12: segments = 7'b 100_0110;
	13: segments = 7'b 010_0001;
	14: segments = 7'b 000_0110;
	15: segments = 7'b 000_1110;
	default: segments = 7'b 100_0000;

  endcase
endmodule

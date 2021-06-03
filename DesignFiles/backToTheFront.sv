module backToTheFront #(parameter N = 32)
							(input logic [N-1:0] d,
							output logic [N-1:0] x);

	
		
			assign x[0] = d[31];
			assign x[1] = d[30];
			assign x[2] = d[29];
			assign x[3] = d[28];
			assign x[4] = d[27];
			assign x[5] = d[26];
			assign x[6] = d[25];
			assign x[7] = d[24];
			assign x[8] = d[23];
			assign x[9] = d[22];
			assign x[10] = d[21];
			assign x[11] = d[20];
			assign x[12] = d[19];
			assign x[13] = d[18];
			assign x[14] = d[17];
			assign x[15] = d[16];
			assign x[16] = d[15];
			assign x[17] = d[14];
			assign x[18] = d[13];
			assign x[19] = d[12];
			assign x[20] = d[11];
			assign x[21] = d[10];
			assign x[22] = d[9];
			assign x[23] = d[8];
			assign x[24] = d[7];
			assign x[25] = d[6];
			assign x[26] = d[5];
			assign x[27] = d[4];
			assign x[28] = d[3];
			assign x[29] = d[2];
			assign x[30] = d[1];
			assign x[31] = d[0];

	
endmodule
	
// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed May 26 22:55:38 2021"

module addressConverter(
	hColIn,
	vRowIn,
	convertedAddr
);


input wire	[10:0] hColIn;
input wire	[10:0] vRowIn;
output wire	[15:0] convertedAddr;

wire	[10:0] bMult;
wire	[21:0] hCol;
wire	[21:0] newAdr;
wire	[21:0] SYNTHESIZED_WIRE_0;






multiplier	b2v_inst5(
	.a(vRowIn),
	.b(bMult),
	.y(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst5.N = 11;



abAdder	b2v_inst8(
	.cIn(bMult[10]),
	.a(SYNTHESIZED_WIRE_0),
	.b(hCol),
	
	.s(newAdr));
	defparam	b2v_inst8.N = 22;


assign	convertedAddr[15:0] = newAdr[15:0];
assign	bMult[8] = 1;
assign	bMult[7:0] = 8'b00000000;
assign	hCol[21:11] = 11'b00000000000;
assign	hCol[10:0] = hColIn;

endmodule

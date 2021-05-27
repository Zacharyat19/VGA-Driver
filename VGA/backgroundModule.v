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
// CREATED		"Wed May 26 22:55:09 2021"

module backgroundModule(
	isDisplay,
	inRGB,
	upCount,
	VGA_RGB
);


input wire	isDisplay;
input wire	[5:0] inRGB;
input wire	[10:0] upCount;
output wire	[11:0] VGA_RGB;

wire	[3:0] AddedBColor;
wire	[3:0] AddedGColor;
wire	[3:0] AddedRColor;
wire	[3:0] BColor;
wire	[3:0] d0;
wire	[3:0] dCount;
wire	[4:0] dOut;
wire	[4:0] downCount;
wire	[3:0] GColor;
wire	[3:0] RColor;
wire	upDown;
wire	[11:0] VGA_RGB_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;





aSubtract	b2v_inst(
	.a(dOut),
	.b(upCount[8:4]),
	.q(downCount));
	defparam	b2v_inst.N = 5;


NTwoMUX	b2v_inst1(
	.s(SYNTHESIZED_WIRE_0),
	.d0(RColor),
	.d1(SYNTHESIZED_WIRE_1),
	.q(AddedRColor));
	defparam	b2v_inst1.N = 4;


colorDecoder	b2v_inst10(
	.inColor(inRGB[3:2]),
	.outColor(GColor));


colorDecoder	b2v_inst11(
	.inColor(inRGB[1:0]),
	.outColor(BColor));



comparator	b2v_inst15(
	.a(RColor),
	
	
	
	
	.gt(SYNTHESIZED_WIRE_0)
	);
	defparam	b2v_inst15.b = 0;
	defparam	b2v_inst15.N = 4;


NTwoMUX	b2v_inst16(
	.s(SYNTHESIZED_WIRE_2),
	.d0(BColor),
	.d1(SYNTHESIZED_WIRE_3),
	.q(AddedBColor));
	defparam	b2v_inst16.N = 4;


NTwoMUX	b2v_inst17(
	.s(isDisplay),
	.d0(d0),
	.d1(AddedRColor),
	.q(VGA_RGB_ALTERA_SYNTHESIZED[11:8]));
	defparam	b2v_inst17.N = 4;


NTwoMUX	b2v_inst18(
	.s(isDisplay),
	.d0(d0),
	.d1(AddedGColor),
	.q(VGA_RGB_ALTERA_SYNTHESIZED[7:4]));
	defparam	b2v_inst18.N = 4;


NTwoMUX	b2v_inst19(
	.s(isDisplay),
	.d0(d0),
	.d1(AddedBColor),
	.q(VGA_RGB_ALTERA_SYNTHESIZED[3:0]));
	defparam	b2v_inst19.N = 4;


NTwoMUX	b2v_inst2(
	.s(SYNTHESIZED_WIRE_4),
	.d0(GColor),
	.d1(SYNTHESIZED_WIRE_5),
	.q(AddedGColor));
	defparam	b2v_inst2.N = 4;


NTwoMUX	b2v_inst22(
	.s(upDown),
	.d0(downCount[3:0]),
	.d1(upCount[7:4]),
	.q(dCount));
	defparam	b2v_inst22.N = 4;


comparator	b2v_inst24(
	.a(upCount[8:4]),
	
	
	
	.lte(upDown)
	
	);
	defparam	b2v_inst24.b = 15;
	defparam	b2v_inst24.N = 5;


abAdder	b2v_inst3(
	.cIn(d0[0]),
	.a(BColor),
	.b(dCount),
	
	.s(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst3.N = 4;


abAdder	b2v_inst4(
	.cIn(d0[0]),
	.a(GColor),
	.b(dCount),
	
	.s(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst4.N = 4;


abAdder	b2v_inst5(
	.cIn(d0[0]),
	.a(RColor),
	.b(dCount),
	
	.s(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst5.N = 4;


comparator	b2v_inst6(
	.a(BColor),
	
	
	
	
	.gt(SYNTHESIZED_WIRE_2)
	);
	defparam	b2v_inst6.b = 0;
	defparam	b2v_inst6.N = 4;


comparator	b2v_inst7(
	.a(GColor),
	
	
	
	
	.gt(SYNTHESIZED_WIRE_4)
	);
	defparam	b2v_inst7.b = 0;
	defparam	b2v_inst7.N = 4;



colorDecoder	b2v_inst9(
	.inColor(inRGB[5:4]),
	.outColor(RColor));

assign	VGA_RGB = VGA_RGB_ALTERA_SYNTHESIZED;
assign	d0[0] = 0;
assign	d0[3] = 0;
assign	d0[1] = 0;
assign	d0[2] = 0;
assign	dOut = 5'b11111;

endmodule

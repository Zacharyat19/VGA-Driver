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
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Mon May 17 19:41:16 2021"

module IR_input(
	horizontal_position,
	remote_selection,
	vertical_position,
	write_sprite
);


input wire	[8:0] horizontal_position;
input wire	[3:0] remote_selection;
input wire	[8:0] vertical_position;
output wire	write_sprite;

wire	[8:0] h_p;
wire	q1_h_range_high;
wire	q1_h_range_low;
wire	q1_v_range_high;
wire	q1_v_range_low;
wire	q2_h_range_high;
wire	q2_h_range_low;
wire	q2_v_range_high;
wire	q2_v_range_low;
wire	q3_h_range_high;
wire	q3_h_range_low;
wire	q3_v_range_high;
wire	q3_v_range_low;
wire	q4_h_range_high;
wire	q4_h_range_low;
wire	q4_v_range_high;
wire	q4_v_range_low;
wire	[8:0] v_p;
wire	write_q1;
wire	write_q2;
wire	write_q3;
wire	write_q4;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;





comparator	b2v_inst(
	.a(h_p),
	
	
	
	
	
	.gte(q1_h_range_low));
	defparam	b2v_inst.C = 0;
	defparam	b2v_inst.N = 9;


quadrant_selector	b2v_inst1(
	.d0(write_q1),
	.d1(write_q2),
	.d2(write_q3),
	.d3(write_q4),
	.s(remote_selection),
	.write(write_sprite));


comparator	b2v_inst10(
	.a(h_p),
	
	
	
	
	.lte(q2_h_range_high)
	);
	defparam	b2v_inst10.C = 511;
	defparam	b2v_inst10.N = 9;


comparator	b2v_inst11(
	.a(v_p),
	
	
	
	
	
	.gte(q2_v_range_low));
	defparam	b2v_inst11.C = 0;
	defparam	b2v_inst11.N = 9;


comparator	b2v_inst12(
	.a(v_p),
	
	
	
	
	.lte(q2_v_range_high)
	);
	defparam	b2v_inst12.C = 255;
	defparam	b2v_inst12.N = 9;

assign	SYNTHESIZED_WIRE_0 = q1_h_range_low & q1_h_range_high;


comparator	b2v_inst14(
	.a(h_p),
	
	
	
	
	
	.gte(q3_h_range_low));
	defparam	b2v_inst14.C = 0;
	defparam	b2v_inst14.N = 9;

assign	SYNTHESIZED_WIRE_1 = q1_v_range_low & q1_v_range_high;


comparator	b2v_inst16(
	.a(h_p),
	
	
	
	
	.lte(q3_h_range_high)
	);
	defparam	b2v_inst16.C = 255;
	defparam	b2v_inst16.N = 9;


comparator	b2v_inst17(
	.a(v_p),
	
	
	
	
	
	.gte(q3_v_range_low));
	defparam	b2v_inst17.C = 256;
	defparam	b2v_inst17.N = 9;


comparator	b2v_inst18(
	.a(v_p),
	
	
	
	
	.lte(q3_v_range_high)
	);
	defparam	b2v_inst18.C = 511;
	defparam	b2v_inst18.N = 9;

assign	write_q1 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;


comparator	b2v_inst20(
	.a(h_p),
	
	
	
	
	
	.gte(q4_h_range_low));
	defparam	b2v_inst20.C = 256;
	defparam	b2v_inst20.N = 9;


comparator	b2v_inst21(
	.a(h_p),
	
	
	
	
	.lte(q4_h_range_high)
	);
	defparam	b2v_inst21.C = 511;
	defparam	b2v_inst21.N = 9;


comparator	b2v_inst22(
	.a(v_p),
	
	
	
	
	
	.gte(q4_v_range_low));
	defparam	b2v_inst22.C = 256;
	defparam	b2v_inst22.N = 9;


comparator	b2v_inst23(
	.a(v_p),
	
	
	
	
	.lte(q4_v_range_high)
	);
	defparam	b2v_inst23.C = 511;
	defparam	b2v_inst23.N = 9;

assign	SYNTHESIZED_WIRE_2 = q3_h_range_low & q3_h_range_high;

assign	SYNTHESIZED_WIRE_3 = q3_v_range_low & q3_v_range_high;

assign	write_q3 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_4 = q4_h_range_low & q4_h_range_high;

assign	SYNTHESIZED_WIRE_5 = q4_v_range_low & q4_v_range_high;

assign	write_q4 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;


comparator	b2v_inst3(
	.a(h_p),
	
	
	
	
	.lte(q1_h_range_high)
	);
	defparam	b2v_inst3.C = 255;
	defparam	b2v_inst3.N = 9;


comparator	b2v_inst4(
	.a(v_p),
	
	
	
	
	
	.gte(q1_v_range_low));
	defparam	b2v_inst4.C = 0;
	defparam	b2v_inst4.N = 9;


comparator	b2v_inst5(
	.a(v_p),
	
	
	
	
	.lte(q1_v_range_high)
	);
	defparam	b2v_inst5.C = 255;
	defparam	b2v_inst5.N = 9;


comparator	b2v_inst6(
	.a(h_p),
	
	
	
	
	
	.gte(q2_h_range_low));
	defparam	b2v_inst6.C = 256;
	defparam	b2v_inst6.N = 9;

assign	SYNTHESIZED_WIRE_6 = q2_h_range_low & q2_h_range_high;

assign	SYNTHESIZED_WIRE_7 = q2_v_range_low & q2_v_range_high;

assign	write_q2 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7;

assign	h_p = horizontal_position;
assign	v_p = vertical_position;

endmodule

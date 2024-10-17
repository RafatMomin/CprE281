// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Standard Edition"
// CREATED		"Thu Oct 19 18:36:11 2023"

module lab07(
	x3,
	y3,
	x2,
	y2,
	x1,
	y1,
	x0,
	y0,
	Control,
	Overflow,
	Cout,
	s3,
	s2,
	s1,
	s0
);


input wire	x3;
input wire	y3;
input wire	x2;
input wire	y2;
input wire	x1;
input wire	y1;
input wire	x0;
input wire	y0;
input wire	Control;
output wire	Overflow;
output wire	Cout;
output wire	s3;
output wire	s2;
output wire	s1;
output wire	s0;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;





adder_4bit	b2v_inst(
	.x3(x3),
	.y3(SYNTHESIZED_WIRE_0),
	.x2(x2),
	.y2(SYNTHESIZED_WIRE_1),
	.x1(x1),
	.y1(SYNTHESIZED_WIRE_2),
	.x0(x0),
	.y0(SYNTHESIZED_WIRE_3),
	.Cin(Control),
	.s3(s3),
	.Cout(Cout),
	.Overflow(Overflow),
	.s2(s2),
	.s1(s1),
	.s0(s0));

assign	SYNTHESIZED_WIRE_0 = Control ^ y3;

assign	SYNTHESIZED_WIRE_1 = Control ^ y2;

assign	SYNTHESIZED_WIRE_2 = Control ^ y1;

assign	SYNTHESIZED_WIRE_3 = Control ^ y0;


endmodule

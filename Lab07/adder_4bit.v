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
// CREATED		"Thu Oct 19 18:55:41 2023"

module adder_4bit(
	x3,
	y3,
	x2,
	y2,
	x1,
	y1,
	x0,
	y0,
	Cin,
	s0,
	s1,
	s2,
	Overflow,
	s3,
	Cout
);


input wire	x3;
input wire	y3;
input wire	x2;
input wire	y2;
input wire	x1;
input wire	y1;
input wire	x0;
input wire	y0;
input wire	Cin;
output wire	s0;
output wire	s1;
output wire	s2;
output wire	Overflow;
output wire	s3;
output wire	Cout;

wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	Cout = SYNTHESIZED_WIRE_3;




full_adder	b2v_inst(
	.X(x3),
	.Y(y3),
	.Ci(SYNTHESIZED_WIRE_5),
	.SUM(s3),
	.Co(SYNTHESIZED_WIRE_3));


full_adder	b2v_inst1(
	.X(x2),
	.Y(y2),
	.Ci(SYNTHESIZED_WIRE_1),
	.SUM(s2),
	.Co(SYNTHESIZED_WIRE_5));


full_adder	b2v_inst2(
	.X(x1),
	.Y(y1),
	.Ci(SYNTHESIZED_WIRE_2),
	.SUM(s1),
	.Co(SYNTHESIZED_WIRE_1));


full_adder	b2v_inst3(
	.X(x0),
	.Y(y0),
	.Ci(Cin),
	.SUM(s0),
	.Co(SYNTHESIZED_WIRE_2));

assign	Overflow = SYNTHESIZED_WIRE_3 ^ SYNTHESIZED_WIRE_5;


endmodule

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
// CREATED		"Thu Nov  9 18:23:08 2023"

module lab10step2a(
	Enable,
	Clock,
	CLRN,
	Q0,
	Q1,
	Q2,
	Q3,
	Z
);


input wire	Enable;
input wire	Clock;
input wire	CLRN;
output wire	Q0;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output wire	Z;

reg	SYNTHESIZED_WIRE_14;
reg	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
reg	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;

assign	Q0 = SYNTHESIZED_WIRE_14;
assign	Q1 = SYNTHESIZED_WIRE_15;
assign	Q2 = SYNTHESIZED_WIRE_18;
assign	Q3 = SYNTHESIZED_WIRE_20;
assign	SYNTHESIZED_WIRE_17 = 1;



assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_14 & Enable;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_16;


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_17)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_15 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	SYNTHESIZED_WIRE_15 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_17)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_14 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	SYNTHESIZED_WIRE_14 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_3;
	end
end


assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19;

assign	Z = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_14 ^ Enable;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_15 ^ SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_18 ^ SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_20 ^ SYNTHESIZED_WIRE_21;


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_17)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_20 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	SYNTHESIZED_WIRE_20 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_10;
	end
end


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_17)
begin
if (!CLRN)
	begin
	SYNTHESIZED_WIRE_18 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	SYNTHESIZED_WIRE_18 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_12;
	end
end


endmodule

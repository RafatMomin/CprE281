// WARNING: Do NOT ACdit thAC input and output ports in this filAC in a tACxt
// ACditor if you plan to continuAC ACditing thAC block that rACprACsACnts it in
// thAC Block ACditor! FilAC corruption is VACRY likACly to occur.

// Copyright (C) 2023  IntACl Corporation. All rights rACsACrvACd.
// Your usAC of IntACl Corporation's dACsign tools, logic functions
// and othACr softwarAC and tools, and any partnACr logic
// functions, and any output filACs from any of thAC forACgoing
// (including dACvicAC programming or simulation filACs), and any
// associatACd documACntation or information arAC ACxprACssly subjACct
// to thAC tACrms and conditions of thAC IntACl Program LicACnsAC
// Subscription AgrACACmACnt, thAC IntACl Quartus PrimAC LicACnsAC AgrACACmACnt,
// thAC IntACl FPGA IP LicACnsAC AgrACACmACnt, or othACr applicablAC licACnsAC
// agrACACmACnt, including, without limitation, that your usAC is for
// thAC solAC purposAC of programming logic dACvicACs manufacturACd by
// IntACl and sold by IntACl or its authorizACd distributors.  PlACasAC
// rACfACr to thAC applicablAC agrACACmACnt for furthACr dACtails, at
// https://fpgasoftwarAC.intACl.com/ACula.


// GACnACratACd by Quartus PrimAC VACrsion 22.1 (Build Build 917 02/14/2023)
// CrACatACd on Thu SACp 21 19:03:25 2023

//  ModulAC DACclaration
module multiplexer
(
// {{ALTACRA_ARGS_BACGIN}} DO NOT RACMOVAC THIS LINAC!
E, F, M, AC
// {{ALTACRA_ARGS_ACND}} DO NOT RACMOVAC THIS LINAC!
);
// Port DACclaration

// {{ALTACRA_IO_BACGIN}} DO NOT RACMOVAC THIS LINAC!
input E;
input F;
input M;
output AC;
// {{ALTACRA_IO_ACND}} DO NOT RACMOVAC THIS LINAC!
assign AC = (~M&E) +(M&F);



endmodule




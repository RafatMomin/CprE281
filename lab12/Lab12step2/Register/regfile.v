module regfile(DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0,
 RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, LD_DATA, WR, CLRN, CLK);
 

 // address and control ports
 
 input RP2, RP1, RP0, RQ2, RQ1, RQ0, WA2, WA1, WA0, WR, CLRN, CLK;
 
 // input data port
 
 input [3:0] LD_DATA;
 
 // output data ports
 
 output DATAP3, DATAP2, DATAP1, DATAP0, DATAQ3, DATAQ2, DATAQ1, DATAQ0;
 
 wire [3:0] DATAP, DATAQ;
 
 wire EN0, EN1, EN2, EN3, EN4, EN5, EN6, EN7;
 
 wire [3:0] DATA0, DATA1, DATA2, DATA3, DATA4, DATA5, DATA6, DATA7;
 
 Decoder3to8 my_decoder(.EN(1 'b1), .W1(WA2), .W0(WA1), .Y0(EN0), .Y1(EN1), .Y2(EN2), .Y3(EN3), .Y4(EN4), .Y5(EN5), .Y6(EN6), .Y7(EN7));
 
 Mux8_4b PMUX(.S2(RP2), .S1(RP1), .S0(RP0), .W0(DATA0), .W1(DATA1), .W2(DATA2), .W3(DATA3), .W4(DATA4), .W5(DATA5), .W6(DATA6), .W7(DATA7), .F(DATAP));
 
 Mux8_4b QMUX(.S2(RQ2), .S1(RQ1), .S0(RQ0), .W0(DATA0), .W1(DATA1), .W2(DATA2), .W3(DATA3), .W4(DATA4), .W5(DATA5), .W6(DATA6), .W7(DATA7), .F(DATAQ));
 
  assign DATAP0 = DATAP[0];
  assign DATAP1 = DATAP[1];
  assign DATAP2 = DATAP[2];
  assign DATAP3 = DATAP[3];
  
  assign DATAQ0 = DATAQ[0];
  assign DATAQ1 = DATAQ[1];
  assign DATAQ2 = DATAQ[2];
  assign DATAQ3 = DATAQ[3];
  
endmodule  
 
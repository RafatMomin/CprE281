module lab4step1 (F, A, B, C);

input A, B, C;

output F;

reg F;                 //procedural statements can only change the values of


                        //variables declared as memory elements such as a reg (register)
always @(A or B or C)   //invoke procedural code when these change
begin                        //begin the procedural statements
case ({A,B,C})                     //variables that affect the procedure
                                //the 3’b simply means that we are
3'b000: F= 'b0;                      //considering a three-bit binary value
3'b001: F= 'b0;
3'b010: F= 'b1;
3'b011: F= 'b0;
3'b100: F= 'b1;
3'b101: F= 'b0;
3'b110: F= 'b1;
3'b111: F= 'b0;
endcase
end                                      //end the begin statement
endmodule
module lab3step3(A,F,C,G,W);

input F,C,G,W;

output A;

assign A = ((~F&C&G)|(F&~C&~G)|(~F&~C&G&W)|(F&C&~W&~G));

endmodule
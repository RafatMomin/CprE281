module lab3step2 (F, A, B, C);

input A, B, C;

output F; 


assign F=((~A|B|~C)&(A|~B|C)); 

endmodule
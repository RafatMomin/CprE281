module lab3step1 (F,A,B,C);

input A, B, C;

output F; 

                                            
                                            
                                          
not (D,A); 
not(E,B);
not(G,C);                       
or (H,D,B,G);
or(I,A,E,C);                 
and (F,H,I);                   
endmodule

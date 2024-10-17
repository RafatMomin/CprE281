module Mux8_4b(S2, S1, S0, W0, W1, W2, W3, W4, W5, W6, W7, F);
input S2, S1, S0;
input [3:0] W0, W1, W2, W3, W4, W5, W6, W7;
output reg [3:0] F;
		always @(*)
		begin
				
					case({S2, S1, S0})
					
						3'b000:F=W0;
						3'b000:F=W0;
						3'b000:F=W0;
						3'b000:F=W0;
						3'b000:F=W0;
						3'b000:F=W0;
						3'b000:F=W0;
						3'b000:F=W0;
						default:F= 4'b0000;
					endcase
			end
	endmodule
						
module sevenSeg(
	input logic [3:0] a,
	output logic [6:0] y);
	
	logic [6:0] yinv;
	always_comb
		case(a)
			4'b0000: yinv = 7'b0111111;
			4'b0001: yinv = 7'b0000110;
			4'b0010: yinv = 7'b1011011;
			4'b0011: yinv = 7'b1001111;
			4'b0100: yinv = 7'b1100110;
			4'b0101: yinv = 7'b1101101;
			4'b0110: yinv = 7'b1111101;
			4'b0111: yinv = 7'b0000111;
			4'b1000: yinv = 7'b1111111;
			4'b1001: yinv = 7'b1100111;
			4'b1010: yinv = 7'b1110111;
			4'b1011: yinv = 7'b1111100;
			4'b1100: yinv = 7'b0111001;
			4'b1101: yinv = 7'b1011110;
			4'b1110: yinv = 7'b1111001;
			4'b1111: yinv = 7'b1110001;
		endcase
	
	assign y = ~yinv;
	
	
endmodule

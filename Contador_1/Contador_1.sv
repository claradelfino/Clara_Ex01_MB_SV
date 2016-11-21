module Contador_1(
	input logic clock, 
					reset,
	output logic [3:0] out);
	logic direction;
	
	always @ (posedge clock or posedge reset)
		if (reset)
			begin
			out = 4'd0;
			direction = 1'b0;
			end
		else
			begin
			if (direction)
				out = out - 4'd1;
			else
				out = out + 4'd1;
				
			if (out == 4'd15|| out == 4'd0)
				direction = ~direction;
			end
endmodule
			
		
		
	

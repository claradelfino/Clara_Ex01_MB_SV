module Contador_2(
	input logic clock, 
					reset,
	output logic [3:0] out);
	logic direction;
	
	always @ (posedge clock or posedge reset)
		if (reset)
			begin
			out <= 4'd0;
			direction <= 1'b0;
			end
		else
			begin
			if (direction == 1'b0)
				if (out == 4'd15)
					direction <= 1'b1;
				else
					out <= out + 4'd1;
			else if (direction == 1'b1)	
				if (out == 4'd0)
					direction <= 1'b0;
				else
					out <= out - 4'd1;
			end
endmodule
			
		
		
	

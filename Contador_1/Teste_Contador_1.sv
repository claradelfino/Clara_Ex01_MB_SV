module Teste_Contador1;
	logic reset, clock;
	wire[3:0] out;
	
	initial
		begin
		clock = 0;
      reset = 1;
      #10;
      reset = 0;

      $display(out);
		repeat(100)
			begin
			if(clock)
			$display(out);
			clock = ~clock;
			#10;
			end
		end
	Contador_1 c_1(.clock(clock), .out(out), .reset(reset));
	
endmodule
	
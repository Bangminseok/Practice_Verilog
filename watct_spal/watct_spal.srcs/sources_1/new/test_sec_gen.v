
module tb_watch_top(
    clk,
    reset,
	enable,
	in_fre,
    one_sec_tick
    );

input 						clk;
input 						reset;
input 						enable;
input [27:0]		        in_fre;
output reg					one_sec_tick;

	reg 	[27:0] 	sec_counter; 

	always @(posedge clk) begin
	    if(reset) begin
			sec_counter <= 27'b0;
			one_sec_tick <= 1'b0;
	    end else if (enable) begin
			if(sec_counter == in_fre -1) begin
				sec_counter <= 0;
				one_sec_tick <= 1'b1;
			end else begin
				sec_counter <= sec_counter + 1'b1;
				one_sec_tick <= 1'b0;
			end
		end else begin
			one_sec_tick <= 1'b0;
		end
	end
endmodule

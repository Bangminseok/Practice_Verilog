
module watch_top(
    clk,
    reset,
	enable,
	in_fre,
    o_sec,
    o_min
    
    );

input 							clk;
input 							reset;
input 							enable;
input		[27:0]	in_fre;
output reg 	[5:0]		o_sec;
output reg 	[5:0]		o_min;


wire w_one_sec_tick;

sec_gen uut (
	.clk 				(clk			),
	.reset 				(reset			),
	.enable			(enable		),
	.in_fre				(in_fre			),
	.one_sec_tick 	(w_one_sec_tick	)
);

reg [5:0] r_min_cnt;
reg [12-1:0] r_hour_cnt;
wire sec_tick = o_sec == 60-1;
wire min_tick = o_min == 60-1;

	always @(posedge clk) begin
	    if(reset) begin
			o_sec		<= 0;
		end else if(w_one_sec_tick) begin
			if(sec_tick) begin
				o_sec		<= 0;
			end else begin
				o_sec	<= o_sec + 1'b1;
			end
		end
	end

	always @(posedge clk) begin
	    if(reset) begin
			r_min_cnt 	<= 0;
			o_min		<= 0;
		end else if(w_one_sec_tick) begin
			if(sec_tick & min_tick) begin
				o_min		<= 0;
				r_min_cnt 	<= 0;
			end else if (r_min_cnt == 60-1)  begin
				o_min	<= o_min + 1'b1;
				r_min_cnt 	<= 0;
			end else begin
				r_min_cnt <= r_min_cnt + 1'b1;
			end
		end
	end

endmodule


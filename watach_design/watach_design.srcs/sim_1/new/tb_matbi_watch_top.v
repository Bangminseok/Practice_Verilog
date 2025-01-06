`timescale 1ns / 1ps

module tb_matbi_watch_top;

// Parameters
parameter P_COUNT_BIT = 30;
parameter P_SEC_BIT = 6;
parameter P_MIN_BIT = 6;
parameter P_HOUR_BIT = 5;

// Testbench signals
reg clk;
reg reset;
reg i_run_en;
reg [P_COUNT_BIT-1:0] i_freq;
wire [P_SEC_BIT-1:0] o_sec;
wire [P_MIN_BIT-1:0] o_min;
wire [P_HOUR_BIT-1:0] o_hour;

// Instantiate the DUT (Device Under Test)
matbi_watch_top #(
    .P_COUNT_BIT(P_COUNT_BIT),
    .P_SEC_BIT(P_SEC_BIT),
    .P_MIN_BIT(P_MIN_BIT),
    .P_HOUR_BIT(P_HOUR_BIT)
) dut (
    .clk(clk),
    .reset(reset),
    .i_run_en(i_run_en),
    .i_freq(i_freq),
    .o_sec(o_sec),
    .o_min(o_min),
    .o_hour(o_hour)
);

// Clock generation: 50 MHz = 20 ns period
always #10 clk = ~clk;

initial begin
    // Initialize inputs
    clk = 0;
    reset = 1;
    i_run_en = 0;
    i_freq = 5; // 1 second tick for 50MHz clock

    // Reset the system
    #100;
    reset = 0;

    // Start the clock and enable the counter
    #50;
    i_run_en = 1;

    // Run simulation for enough time to observe behavior
    #10_000_000; // Simulate for 10 million ns (10 ms)
    $display("Final Time: %0t", $time);
    $stop;
end

// Monitor outputs for debugging
initial begin
    $monitor("Time: %0t | Sec: %0d, Min: %0d, Hour: %0d", 
             $time, o_sec, o_min, o_hour);
end

endmodule

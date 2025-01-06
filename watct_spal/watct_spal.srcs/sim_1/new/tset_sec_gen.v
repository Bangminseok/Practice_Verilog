`timescale 1ns / 1ps

module tb_sec_gen;

    // Inputs
    reg clk;
    reg reset;
    reg enable;
    reg [29:0] in_fre; 
    wire one_sec_tick;

    // Instantiate the Unit Under Test (UUT)
    watch_top uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .in_fre(in_fre),
        .o_sec(o_sec),
        .o_min(o_min)
       
    );

    always #10 clk = ~clk;  //аж╠Б =20, 
    
    initial begin
        clk = 0;
        reset = 0;
        enable = 0;
    #100
     reset <=1;
    #10
     reset<=0;
     enable<=1;     
     in_fre<=5;
    #10
       
  
    #100000 $finish;
    end
endmodule

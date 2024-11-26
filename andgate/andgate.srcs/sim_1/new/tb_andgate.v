
module tb_andgate;
 
  reg a, b;
  wire c;

  andgate uut (
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin
    a = 0;
    b = 0;
    #100;
  end

  always #50 begin
    a = ~a;
  end


  always #100 begin
    b = ~b;
  end

endmodule

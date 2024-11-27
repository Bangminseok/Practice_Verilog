module tb_nandgate;

  reg a, b;
  wire c;

  nandgate uut (
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin
    a = 0;
    b = 0;
 
    a = 0; b = 0; #50;
    $display("a=%b, b=%b, c=%b", a, b, c);
    
    a = 0; b = 1; #50;
    $display("a=%b, b=%b, c=%b", a, b, c);
    
    a = 1; b = 0; #50;
    $display("a=%b, b=%b, c=%b", a, b, c);
    
    a = 1; b = 1; #50;
    $display("a=%b, b=%b, c=%b", a, b, c);
    $finish;
  end

  always #50 begin
    a = ~a;
  end

  always #100 begin
    b = ~b;
  end

endmodule


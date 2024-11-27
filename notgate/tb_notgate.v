module tb_notgate;

 reg a;
 wire b;
 
 notgate uut(
  .a(a),
  .b(b)
 );
 
 initial begin
  a=0;
 end
 
 always #50 begin
  a=~a;
 end
 
endmodule


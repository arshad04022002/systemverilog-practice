module tb();
  
  reg   [7:0]  a;
  logic [31:0] b;
  bit   [7:0]  c;
  byte         d;
  int          e;
  logic [3:0]  f;
  bit   [3:0]  g;

  initial begin
    $display("a = %b", a);  // xxxxxxxx
    $display("b = %b", b);  // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    $display("c = %b", c);  // 00000000
    $display("d = %0d", d); // 0
    $display("e = %0d", e); // 0
    $display("f = %b", f);  // xxxx
    $display("g = %b", g);  // 0000
  end
  
endmodule


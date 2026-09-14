module tb();
/*
task add(input bit [3:0] a,input bit [3:0] b, output bit [4:0] y);
   y = a+b;
endtask

bit [3:0] a,b;
bit [4:0] y;

initial begin

a = 5;
b = 5;
add(a,b,y);
$display("the value of y : %0d",y);

end

*/

bit [3:0] a,b;
bit [4:0] y;

bit clk = 0;
always #5 clk = ~clk; //10ns <<< 100MHz

task add();
   y = a+b;
   $display("a : %0d and b : %0d and y : %0d",a,b,y);
endtask

task stim_a_b();
  a = 1;
  b = 1;
  add();
  #10;
  a = 2;
  b = 2;
  add();
  #10;
  a = 3;
  b = 3;
  add();
  #10;
endtask

task stim_clk();
@(posedge clk); //wait
a = $urandom;
b = $urandom;
add ();
endtask

initial begin 
#110;
$finish();  // bcoz always block without sensitivity list
end

initial begin
 //stim_a_b();
 for (int i=0;i<11;i++) begin
   stim_clk();
 end
 
end

endmodule  

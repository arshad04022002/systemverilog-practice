`timescale 1ns / 1ps

// usage of always block
// aligning edges of generated clock and reference clock 

module tb();

reg clk;
reg rst;
reg clk50,clk25;

initial begin
clk = 1'b0;
rst = 1'b0;
clk50 = 0;  // 50MHz
clk25 = 0;  // 25Mhz
end

/*
always #5 clk = ~clk;  //100MHz frequency - 10ns clk period
always #10 clk50 = ~clk50; //50MHz
always #20 clk25 = ~clk25;  // 25MHz
*/

always #5 clk = ~clk;

always begin
#5 ;
clk50 = 1;
#10;
clk50 = 0;
#5;
end

always begin
#5 ;
clk25 = 1;
#20;
clk25 = 0;
#15;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars;
end

initial begin
#200;
$finish();
end

endmodule

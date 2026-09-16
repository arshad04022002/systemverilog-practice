class first;
  
  int data1;
  bit [7:0] data2;
  shortint data3;
  longint data4;
  
 
  function new(input int data1 = 0, input bit[7:0] data2 = 8'h00, input shortint data3 = 0, input longint data4 = 0);
    this.data1 = data1; // when you have same name for data member as well as an argument then to refer data member of a class use "this" keyword 
    this.data2 = data2;
    this.data3 = data3;
    this.data4 = data4;
  endfunction
  
endclass

module tb();

first f1;
  
  initial begin
    // f1 = new(16,254,256,512);  // follow position
    f1 = new(.data4(12),.data2(15),.data1(244),.data3(128));  // provide value to an argument by name 
    $display("Data1 : %0d,Data2 : %0d,Data3 : %0d,Data4 : %0d", f1.data1,f1.data2,f1.data3,f1.data4);  
  end

endmodule

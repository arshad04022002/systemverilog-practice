module tb();

int arr[];

initial begin
   arr = new[5]; //new method to specify size, without this read/write operation is not possible
for(int i=0;i<5;i++) begin
arr[i] = 5*i;
end
  $display("arr : %0p",arr);
  
  arr = new[15](arr); // calling again new method will reset all previous elements so to keep previous data as it is we add(arr)
  $display("arr : %0p",arr);
  
  arr = new[15]; // calling again new method will reset all previous elements
  $display("arr : %0p",arr);
  
  /*
  arr.delete(); // delete entire array
  
  $display("arr : %0p",arr);
  */
end

endmodule

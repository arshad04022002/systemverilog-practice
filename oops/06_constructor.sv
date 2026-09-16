class first;
  
  int data;
  
  //function new(); // if we don't use argument and set any specific value to data then by default it will print that value
  function new(input int datain = 0);
  data = datain;
  endfunction
  
  
endclass

module tb();

first f1;
  
  initial begin
    f1 = new();  // this will give initialize value >>> 0
   //  f1 = new(23); // if we use this instead of f1 = new(); ... it will give 23
    $display("Data : %0d", f1.data);  
  end

endmodule

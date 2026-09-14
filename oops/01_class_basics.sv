class first;

bit [2:0] data1 ;
bit [1:0] data2 ;
 
endclass

module tb();

   first f ;
   
   initial begin 
   
      f = new(); //memory allocating
      f.data1 = 3'b010;
      f.data2 = 2'b10;
      //f = null; //memory deallocating
      #1;
      $display("value of data1 : %0d and data2 : %0d",f.data1,f.data2);
   
   end
   
endmodule

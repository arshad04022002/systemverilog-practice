module tb1();

bit arr1[5] = '{1,2,3,4,5};
logic arr2[5] = '{1,2,3,4,5};
logic arr3[4] = '{1,2,3,4};
int arr4[4] = '{1,2,3,4};
logic arr5[4];
int arr6[5];
int arr7[5] = '{5{0}}; // repetitive values
int arr8[10] = '{default:2}; // default value

initial begin

$display("arr1 : %0p",arr1);
$display("arr2 : %0p",arr2);
$display("arr3 : %0p",arr3);
$display("arr4 : %0p",arr4);
$display("arr5 : %0p",arr5);
$display("arr6 : %0p",arr6);
$display("arr7 : %0p",arr7);
$display("arr8 : %0p",arr8);

end


endmodule

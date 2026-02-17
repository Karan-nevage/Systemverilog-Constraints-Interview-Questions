/*
a. int intDA[];  
b. intDA each element can be either 1, 2, 4, 8, or 16
c. intDA each element must be bigger than 2*i  
	i. i is the index of the element in the array
*/

class sample;
  rand int intDA[5];
  
  constraint cons_1{
    foreach (intDA[i]){
      intDA[i] inside {1,2,4,8,16};
      if(i < 4) intDA[i] < intDA[i+1];
    }
  }
  
endclass
      
//**********************   Top Module    *******************************
module top;
  sample s;
  
  initial begin
    s = new();
    assert(s.randomize());
    $display("Array: %p", s.intDA);
    $display("======================");
  end 
endmodule

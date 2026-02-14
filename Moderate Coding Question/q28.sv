/* Declare 2 array (or queue) elements each of size 10, randomize in such a way that 2ⁿᵈ array values are 1ˢᵗ array value added with 5 for each element. */

class sample;
  rand int arr_a[];
  rand int arr_b[];
  
  constraint cons_1{
    arr_a.size() == 10;
    arr_b.size() == 10;
  }
  
  constraint cons_2{
    foreach(arr_a[i]){
      arr_a[i] inside {[1:20]};
      arr_b[i] == 5 + arr_a[i];
    }
  }
  
endclass
      
module top;
  sample s;
  
  initial begin
    s = new();
    assert(s.randomize());
    $display("Array A: %p", s.arr_a);    
    $display("Array B: %p", s.arr_b);    
  end  
endmodule;

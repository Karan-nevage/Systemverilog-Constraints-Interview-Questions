/* 20. Write constraint to generate below patterns
 1 2 3 4 5 5 4 3 2 1
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if(i < 5) arr[i] == i + 1;
      else arr[i] == 10 - i;
    }
  }
  
endclass
      
module top;
  sample s;
  
  initial begin
    s = new();
    assert(s.randomize());
    $display("Array: %p", s.arr);
    $display("=====================================");    
  end
  
endmodule

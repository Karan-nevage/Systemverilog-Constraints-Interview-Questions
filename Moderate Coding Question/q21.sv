/* 21. Write constraint to generate below patterns
 9 19 29 39 49..
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if(i == 0) arr[i] == 9;
      else arr[i] == arr[i-1] + 10;
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

/* 25. Write constraint to generate below patterns 
		25, 27, 30, 34, 39, 45 ...
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if (i == 0) arr[i] == 25;
      else arr[i] == arr[i-1] + (i+1);
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

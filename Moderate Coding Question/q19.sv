/* 19. Write constraint to generate below patterns
 9-7-5-3-1-8-6-4-2-0
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if(i == 0) arr[i] == 9;
      else if (i == 5) arr[i] == 8;
      else arr[i] == arr[i-1] - 2;
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

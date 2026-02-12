/*22. Write constraint to generate below patterns
 5, -10, 15, -20, 25 ..
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if(i == 0) arr[i] == 5;
      else if(i == 1) arr[i] == -10;
      else {
        if(i %2 != 0) arr[i] == arr[i-2] - 10;
        else arr[i] == arr[i-2] +10;
      }
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

/*24. Write constraint to generate below patterns 
	0 1 0 2 0 3 0 4 0 5
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if (i % 2 != 0) arr[i] == (i+1)/2;
      else arr[i] == 0;
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

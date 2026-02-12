/*23.Write constraint to generate below patterns 
	1 1 2 2 3 3 4 4 5 5
*/

class sample;
  rand int arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]) {
      if (i % 2 != 0) arr[i] == (i+1)/2;
      else arr[i] == arr[i+1];
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

/*
8. Write a constraint for 10101010.. sequence.
*/

class sample;
  rand bit arr[];
  
  function void pre_randomize();
    arr = new[10];
  endfunction    
  
  constraint cons_1{
    foreach (arr[i]){
  		if (i %2 == 0) arr[i] == 1;
      	else arr[i] == 0;
      }
    }
endclass
      
module top;
  sample s;
	initial begin
      s = new();
      assert(s.randomize());
      $displayb("Array: %p", s.arr);
      $display("===========================================");
    end 
endmodule

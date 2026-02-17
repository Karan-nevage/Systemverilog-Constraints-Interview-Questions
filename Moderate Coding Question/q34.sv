/* 34. Constraint to randomize an array such that one specific element picked is always a constant value, say element at index 5 is always 100. */

class sample;
 
  rand int arr[];
  static rand int index;
  
    constraint cons_1 {
      arr.size() == 10;
      index inside {[0:9]};
      foreach (arr[i]){
        arr[i] inside {[0:200]};
      }
  	}	
        
	function void post_randomize();
      arr[index] = 100;     
      $display("Index %d", index);
      $display("Array: %p", arr);
      $display("=======================================");
	endfunction
    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    assert(s.randomize());
    repeat (10) begin
      assert(s.randomize(arr));
    end
  end
endmodule


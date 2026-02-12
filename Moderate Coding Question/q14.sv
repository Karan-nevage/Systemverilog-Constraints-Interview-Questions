/* 
14. Write constraint on an array to generate values in ascending order.*/

class sample;
  rand shortint arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]){
      arr[i] inside{[10:50]};
    }
  }
  function void post_randomize();
    arr.sort();
    $display("Array: %p", arr);
    $display("=============================");
  endfunction
  
  
endclass

module top;
  
  sample s;
  initial begin
    s = new();
    repeat(5) begin
      assert(s.randomize());
    end
  end    
endmodule

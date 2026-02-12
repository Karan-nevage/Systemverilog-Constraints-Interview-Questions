/* 
16. Write a constraint to generate a pattern 010203040506... */

class sample;
  rand shortint arr[];
  
  constraint cons_1{
    arr.size() == 20;
    foreach (arr[i]){
      if(i % 2 == 0) arr[i] == 0;
      else arr[i] == (i+1)/2;
    }
  }
      
  function void post_randomize();
    $display("Array: %p", arr);
    $display("=============================");
  endfunction
endclass

module top;
  sample s;
  
  initial begin
    s = new();
    repeat(1) begin
      assert(s.randomize());
    end
  end    
endmodule

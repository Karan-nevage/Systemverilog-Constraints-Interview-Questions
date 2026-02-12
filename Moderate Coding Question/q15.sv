/* 
15. Write constraint on an array such that even indexed elements are even values, odd indexed are odd values. */

class sample;
  rand shortint arr[];
  
  constraint cons_1{
    arr.size() == 10;
    foreach (arr[i]){
      arr[i] inside {[10:20]};
      if(i % 2 == 0) arr[i] % 2 == 0;
      else arr[i] % 2 == 1;
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
    repeat(5) begin
      assert(s.randomize());
    end
  end    
endmodule

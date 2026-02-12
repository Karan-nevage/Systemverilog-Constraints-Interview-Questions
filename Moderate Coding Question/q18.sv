/* 
18. Generate an array of random real random number  */

class sample;
  rand real arr[];
  	
  constraint cons_1{
    arr.size == 10;
    foreach (arr[i]){
      ((arr[i] > 0) && (arr[i] < 2));
    }  }
      
endclass

module top;
  sample s;
  
  initial begin
    s = new();
    repeat(5) begin
      assert(s.randomize());
      $display("Array: %p", s.arr);
      $display("====================================================================================");
    end
  end    
endmodule

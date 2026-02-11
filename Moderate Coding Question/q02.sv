/*
2. Write a constraint to store odd data in even addr and even data in odd addr of array.
*/
class sample;
  rand int arr[10];

  constraint cons_1{
    foreach (arr[i]){
      if(i %2 == 0) arr[i] % 2 != 0;
      else arr[i] % 2 == 0;
    }
  }

endclass
          
module top;
  sample s;
  
  initial begin
    s = new();
    repeat (10) begin
      assert(s.randomize());
      $display("Array: %p", s.arr);
      $display("=====================================================");
    end   
  end
  
endmodule

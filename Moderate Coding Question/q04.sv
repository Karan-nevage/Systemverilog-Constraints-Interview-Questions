/*
4. Write a constraint for an array of numbers such that the size of array ranges from 16 to 32 elements, and even index locations should have odd numbers and odd index locations should have even numbers, numbers rage is between 16 to 127.
*/
class sample;
  rand int arr[];
  
  constraint cons_limit{ 
    arr.size() inside {[16:32]};
  }

  constraint cons_1{
    foreach (arr[i]){    
      arr[i] inside {[16:27]};  
      if(i % 2 == 0) arr[i] %2 != 0;
      else arr[i] %2 == 0 ;     
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

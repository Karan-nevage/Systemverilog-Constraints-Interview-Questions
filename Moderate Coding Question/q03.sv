/*
3. Write a constraint to generate unique even no. on even location & unique odd no. on odd location.
*/
class sample;
  rand int arr[];
  
  constraint cons_limit{ 
    arr.size() == 10;
  }

  constraint cons_1{
    unique {arr};
    foreach (arr[i]){    
      arr[i] inside {[10:25]};  
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

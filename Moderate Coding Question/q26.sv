/* 
26. Write constraint to fill array with value in ascending order */


class sample;
  rand int arr[10];

  constraint cons_1{
    arr.size() == 10;
  }

   constraint cons_2{
     foreach (arr[i]){
       arr[i] inside {[1: 50]};
       if(i < 9) arr[i] < arr[i+1];
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

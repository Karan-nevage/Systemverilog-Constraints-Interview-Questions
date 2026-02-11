/*
1. The constraint for an array of 10 elements in which the first 5 elements are in increment in nature and the next 5 elements are in decrement nature.
a. All elements in range of 50 to 100.
b. All elements should be multiple of 5

*/
class sample;
  rand int arr[10];

  constraint cons_1{
    foreach (arr[i]){
      arr[i] %5 == 0;
      arr[i] inside {[50:100]};
    }
  }

   constraint cons_2{
     foreach (arr[i]){
       if(i<4) arr[i] < arr[i+1];
       if (i>3 && i <9) arr[i+1] < arr[i];
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

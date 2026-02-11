/*
5. Write constraint for randomly generating an array of numbers with size 20, sort in ascending order without using inbuilt sort method, and sum of all array elements should be 300.
*/
class sample;
  rand int arr[20];
  int temp;

  constraint cons_1{
    foreach (arr[i]){    
      arr.sum() == 300;
      arr[i] inside {[1:30]};  
    }
  }

function void post_randomize();
    foreach(arr[i]) begin
      foreach(arr[j]) begin
        if(arr[i] > arr[j]) begin
          temp   = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        end
      end
    end
    
    $display("Sum of Array: %d", arr.sum());
endfunction

endclass

module top;
  sample s;

  initial begin
    s = new();
    repeat (10) begin
      assert(s.randomize());
      $display("Array: %p ", s.arr);
      $display("=====================================================");
    end   
  end
endmodule

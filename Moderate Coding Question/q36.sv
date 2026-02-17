/* 36.Write constraint such that sum of arr[10] is 100 without using .sum method*/

class sample;
  rand int arr[10];
  
  constraint cons_1{
    (arr[0] + arr[1] + arr[2] + arr[3] + arr[4] + arr[5] + arr[6] + arr[7] + arr[8] + arr[9]) == 100;
  }
 
  constraint cons{
    foreach(arr[i]) {
      arr[i] inside {[0:20]};
    }
  }
    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    repeat (10) begin
    	assert(s.randomize());
    	$display("Array : %p \n Sum: %p ", s.arr, s.arr.sum());
      $display("================================================");
    end
  end
endmodule


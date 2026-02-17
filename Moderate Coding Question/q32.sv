/* 32. Write a constraint such that an array of inputs will never be equal and also never equal to the other input when the index is same */

class sample;
 
  rand int arr_1[10];
  rand int arr_2[10];

  constraint cons_1 {
    foreach (arr_1[i]) {
      arr_1[i] inside {[0:30]};
      arr_2[i] inside {[0:30]};
    	}
    unique{arr_1, arr_2};
    }
    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    repeat (10) begin
      assert(s.randomize());
      $display("Array 1: %p", s.arr_1);
      $display("Array 2: %p", s.arr_2);
      $display("==========================================================");
    end
  end
endmodule

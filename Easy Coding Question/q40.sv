// 40. Constraints to have unique elements in an array with size in {5 – 10}

class sample;
  rand int arr[$];

  constraint cons_1{
    arr.size() inside {[5:10]};
  }  
  
  constraint cons_2{
    unique {arr};
  }
  
  constraint cons_3{
    foreach (arr[i]) { 
      arr[i] inside {[0:50]};
    }
  }

endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Value of array: \n A = %p", s.arr);
      $display("===================================");
    end
  end  
endmodule


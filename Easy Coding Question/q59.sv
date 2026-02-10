/* 59. Write a constraint to generate a queue of random size with unique value, and each value being a power of 2, also size of queue can be 12 at maximum and minimum of 6. */

class sample;
  rand int qua[$];
 
  constraint cons{
    qua.size() > 6;
    qua.size() < 12;
    
    unique{qua};
  }
  
  constraint cons_2{
    foreach (qua[i]){
      qua[i] inside {[0:8193]};
      $onehot(qua[i]);
     }
  }
endclass

module top;
  sample s;

  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display("Queue A: %p", s.qua);
      $display("-----------------------------------------------------------");
    end 
  end
endmodule
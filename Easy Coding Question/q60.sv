/* 
60. Write a constraint to generate a queue of random size with unique value, and each value being divisible by 3 and 7 both, also size of queue can be 15 at maximum and minimum of 5. */

class sample;
  rand int qua[$];
 
  constraint cons{
    qua.size() > 5;
    qua.size() < 15;
    
    unique{qua};
  }
  
  constraint cons_2{
    foreach (qua[i]){
      qua[i] % 21 == 0;
      qua[i] inside {[1:1000]};
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
      $display("***********************************");
    end 
  end
endmodule
/* 
61. Write a constraint to generate a queue of random size with unique value, and value at index with odd values are even and for index with even value having odd values stored in them, also size of queue can be even value between 10 and 16. */

class sample;
  rand int qua[$];
 
  constraint cons{
    ((qua.size() %2 == 0)  && (qua.size() inside {[10:16]}));
    unique{qua};
  }
  
  constraint cons_2{
    foreach (qua[i]){
      qua[i] inside {[10:100]};
      if (i %2 == 0)  qua[i] % 2 != 0;
      if (i %2 != 0)  qua[i] % 2 == 0;
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
      $display("******************************************************************************");
    end 
  end
endmodule
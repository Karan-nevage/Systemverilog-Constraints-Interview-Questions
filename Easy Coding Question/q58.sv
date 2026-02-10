/* Write a constraint to generate two queues of random sizes with unique values, also total number of elements in each*/

class sample;
  rand int qua[$];
  rand int qub[$];

  constraint cons{
    qua.size() > 5;
    qua.size() < 10;
    qub.size() > 5;
    qub.size() < 10;
    unique{qua , qub};
  }
  
  constraint cons_2{
    foreach (qua[i]){
      qua[i] inside {[10:30]};
     }
      
      foreach (qub[i]){
      qub[i] inside {[10:30]};
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
      $display("Queue B: %p", s.qub);
      $display("***********************************");
    end 
  end
endmodule
// 47. Declare a Queue, Fill with 20 random values between 200 to 300, no repetition

class sample;
  rand int que[$] ;

  constraint cons_1{
    que.size() == 20;
    foreach (que[i]) {
      que[i] inside {[200:300]};
    }
  
  }
endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Queue: %p", s.que);
      $display("===================================");
    end
  end  
endmodule


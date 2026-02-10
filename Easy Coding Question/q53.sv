// 53. Populate a queue with 10 elements, each element inside 100 to 200 and must also be a multiple of 5.

class sample;
  rand int que[$] ;
  
  constraint cons_1{
    que.size() == 10;
  }
  
  constraint cons_2{
    foreach (que[i]){
      que[i] inside {[100:200]};
      que[i] % 5 == 0;
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


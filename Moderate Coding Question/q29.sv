/* 29. Implement randc behaviour using rand */
class sample;
  rand shortint val;
  static rand shortint valq[$]; 

  constraint cons_1 {
    val inside {[1:10]};}
  
  constraint cons_2 {
    !(val inside {valq}); 
  }

  function void post_randomize();
    valq.push_back(val);
    // $display("Queue: %p", valq);
  endfunction
    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    repeat (10) begin
      assert(s.randomize(val));
      $display("Value: %0d", s.val);
      $display("===================");
    end
  end
endmodule

/* 30. Add "size" number of entries to a queue. The entry of queue is randomized between 0 to "size". */

class sample;
 
	rand shortint valq[$]; 

  constraint cons_1 {
    valq.size() inside {[1:10]};
    unique{valq};}
  
  constraint cons_2 {
    foreach(valq[i]){
      valq[i] inside {[0:(valq.size())]};
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
      $display("Queue: %0p", s.valq);
      $display("===================");
    end
  end
endmodule

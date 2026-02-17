/* 31. Write constraints to generate a n bit value such that the number of bits set is equal to number of bits that are zero */

class sample;
  rand bit[7:0] a; 

  constraint cons_1 {
    $countones(a) == 4;
    }    
endclass

//****************  Top Module  ************************

module top;
  sample s;

  initial begin
    s = new();
    repeat (10) begin
      assert(s.randomize());
      $display("Value: %b", s.a);
      $display("===================");
    end
  end
endmodule

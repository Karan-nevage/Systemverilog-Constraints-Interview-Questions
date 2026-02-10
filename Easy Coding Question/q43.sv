// 43. Write a constraint for a 16‑bit addr to generate power of 2


class sample;
  rand bit[15:0] a ;

  constraint cons_1{
     $onehot(a);}

endclass

module top;
  sample s;
  initial begin
    s = new();
    repeat(10) begin
      assert(s.randomize());
      $display(" Value of addr: \n A = %d", s.a);
      $display("===================================");
    end
  end  
endmodule

